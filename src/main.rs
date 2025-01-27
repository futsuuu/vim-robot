use std::{fmt::Display, fs, io::Write, path::Path};

use anyhow::Result;
use palette::{
    blend::Compose, color_difference::Wcag21RelativeContrast, FromColor, Mix, Oklab, Oklch, Srgb, WithAlpha, WithHue,
};

fn main() -> Result<()> {
    let target = Path::new("colors/robot.vim");
    fs::create_dir_all(target.parent().unwrap())?;
    let mut file = fs::File::options()
        .write(true)
        .create(true)
        .truncate(true)
        .open(target)?;
    file.write_all(generate_script().as_bytes())?;
    Ok(())
}

fn generate_script() -> String {
    let light: String = get_highlights(true).iter().map(ToString::to_string).collect();
    let dark: String = get_highlights(false).iter().map(ToString::to_string).collect();
    format!(
        "\" do not edit manually!
if exists('g:colors_name')
  hi clear
endif
if exists('g:syntax_on')
  syn reset
endif
let g:colors_name = 'robot'
if &bg == 'light'
{light}else
{dark}endif
"
    )
}

fn hl(name: &str) -> Highlight {
    Highlight::new(name)
}

fn to_hex(color: Oklch) -> String {
    format!("#{:x}", Srgb::from_color(color).into_format::<u8>())
}

fn to_ansi256(color: Oklch) -> String {
    let rgb = Srgb::from_color(color).into_format::<u8>();
    format!("{}", rgb2ansi256::rgb_to_ansi256(rgb.red, rgb.green, rgb.blue))
}

fn mix(base: Oklch, other: Oklch, alpha: f32) -> Oklch {
    let base = Oklab::from_color(base);
    let other = Oklab::from_color(other);
    Oklch::from_color(other.with_alpha(alpha).over(base.opaque()).color)
}

fn get_highlights<'a>(light: bool) -> Vec<Highlight<'a>> {
    let mut r = Vec::new();

    let white = if light {
        Oklch::new(0.97, 0.001, 264.)
    } else {
        Oklch::new(0.79, 0.037, 264.)
    };
    let black = if light {
        Oklch::new(0.54, 0.060, 264.)
    } else {
        Oklch::new(0.27, 0.024, 264.)
    };
    println!("{}", Srgb::from_color(white).relative_contrast(Srgb::from_color(black)));

    let fg = if light { black } else { white };
    let bg = if light { white } else { black };

    r.push(hl("Normal").fg(fg).bg(bg));

    let gray1 = mix(fg, bg, 0.16);
    let gray2 = mix(fg, bg, 0.26);
    let gray3 = mix(fg, bg, 0.44); // delimiter, comment
    let gray4 = mix(fg, bg, 0.80); // decoration

    let red1 = Oklch {
        l: gray1.l,
        chroma: 0.15,
        hue: (22.).into(),
    };
    let red2 = Oklch { chroma: 0.09, ..red1 };
    let yellow1 = red1.with_hue(83.);
    let yellow2 = red2.with_hue(83.);
    let green1 = red1.with_hue(132.);
    let green2 = red2.with_hue(132.);
    let cyan1 = red1.with_hue(197.);
    let cyan2 = red2.with_hue(197.);
    let blue1 = red1.with_hue(251.);
    let blue2 = red2.with_hue(251.);
    let magenta1 = red1.with_hue(294.);
    let magenta2 = red2.with_hue(294.);

    // syntax highlight
    r.extend([
        hl("Comment").fg(gray3),
        hl("String").fg(green1),
        hl("Character").link("String"),
        hl("Constant").fg(yellow1),
        hl("Identifier").fg(fg),
        hl("Function").fg(blue1),
        hl("Statement").fg(red1).italic(),
        hl("Operator").fg(gray3),
        hl("Delimiter").link("Operator"),
        hl("Type").fg(cyan1),
        hl("Special").fg(fg),
        hl("PreProc").fg(fg),
        hl("Title").fg(blue2).bold(),
        hl("Todo").bg(cyan1).fg(bg).bold(),
    ]);

    // alpha
    let a_cursorline = 0.05;
    let a_diag_vt = 0.09;
    let a_matchword = 0.12;
    let a_visual = 0.16;
    let a_search = 0.28;

    // ui
    r.extend([
        hl("LineNr").fg(gray4),
        hl("CursorLineNr").fg(gray3).bold(),
        hl("Whitespace").fg(gray4),
        hl("CursorLine").bg(mix(bg, fg, a_cursorline)),
        hl("CursorColumn").link("CursorLine"),
        hl("StatusLine").fg(gray1).bg(bg),
        hl("WinBar").fg(gray1).bg(bg),
        hl("WinSeparator").fg(gray4),
        hl("Visual").bg(mix(bg, blue2, a_visual)),
        hl("Search").bg(mix(bg, blue1, a_search)),
        hl("CurSearch").bg(blue1).fg(bg).bold(),
        hl("Directory").fg(blue2),
        hl("MoreMsg").fg(blue2),
        hl("Question").link("MoreMsg"),
        hl("ModeMsg").fg(gray2),
    ]);

    // floating window
    let float_bg = bg.mix(fg, 0.04);
    let floatborder_bg = bg.mix(float_bg, 0.55);
    let floatborder_fg = floatborder_bg.mix(fg, 0.4);
    r.extend([
        hl("NormalFloat").bg(float_bg),
        hl("FloatBorder").bg(floatborder_bg).fg(floatborder_fg),
        hl("FloatTitle")
            .bg(floatborder_bg.mix(float_bg, 0.57))
            .fg(floatborder_fg.mix(blue1, 0.2))
            .bold(),
        hl("Pmenu").link("NormalFloat"),
        hl("PmenuSel").link("Visual"),
    ]);

    // diagnostics
    let ok = green1;
    let hint = blue1;
    let info = cyan1;
    let warn = yellow1;
    let error = red1;
    r.extend([
        hl("Error").fg(error).bold(),
        hl("ErrorMsg").fg(error).bold(),
        hl("WarningMsg").fg(warn).bold(),
        hl("DiagnosticOk").fg(ok),
        hl("DiagnosticHint").fg(hint),
        hl("DiagnosticInfo").fg(info),
        hl("DiagnosticWarn").fg(warn),
        hl("DiagnosticError").fg(error),
        hl("DiagnosticUnderlineOk").sp(ok).undercurl(),
        hl("DiagnosticUnderlineHint").sp(hint).undercurl(),
        hl("DiagnosticUnderlineInfo").sp(info).undercurl(),
        hl("DiagnosticUnderlineWarn").sp(warn).undercurl(),
        hl("DiagnosticUnderlineError").sp(error).undercurl(),
        hl("DiagnosticVirtualTextOk").fg(ok).bg(mix(bg, ok, a_diag_vt)),
        hl("DiagnosticVirtualTextHint").fg(hint).bg(mix(bg, hint, a_diag_vt)),
        hl("DiagnosticVirtualTextInfo").fg(info).bg(mix(bg, info, a_diag_vt)),
        hl("DiagnosticVirtualTextWarn").fg(warn).bg(mix(bg, warn, a_diag_vt)),
        hl("DiagnosticVirtualTextError").fg(error).bg(mix(bg, error, a_diag_vt)),
    ]);

    // match word
    r.extend([
        hl("MatchParen").fg(fg).bg(mix(bg, fg, a_matchword)).bold(),
        hl("IlluminatedWordText").bg(mix(bg, fg, a_matchword)),
        hl("IlluminatedWordRead").link("IlluminatedWordText"),
        hl("IlluminatedWordWrite").link("IlluminatedWordText"),
    ]);

    // diff
    r.extend([
        hl("Added").fg(green1),
        hl("Removed").fg(red1),
        hl("Changed").fg(blue1),
        hl("DiffAdd").bg(mix(bg, green1, 0.15)),
        hl("DiffDelete").bg(mix(bg, red1, 0.15)),
        hl("DiffChange").bg(mix(bg, blue1, 0.15)),
        hl("GitSignsStagedAdd").link("GitSignsAdd"),
        hl("GitSignsStagedChange").link("GitSignsChange"),
        hl("GitSignsStagedDelete").link("GitSignsDelete"),
        hl("GitSignsAddInline").bg(mix(bg, green1, 0.3)),
        hl("GitSignsDeleteInline").bg(mix(bg, red1, 0.3)),
        hl("GitSignsChangeInline").bg(mix(bg, green1, 0.3)),
    ]);

    // tree-sitter
    r.extend([
        hl("@attribute.builtin").link("@attribute"),
        hl("@constant.builtin").link("@constant"),
        hl("@function.builtin").link("@function"),
        hl("@type.builtin").link("@type"),
        hl("@property").fg(magenta1),
        hl("@variable").fg(fg),
        hl("@variable.member").link("@property"),
        hl("@keyword.vim").link("Function"),
        hl("@keyword.exception").fg(gray2),
        hl("@keyword.conditional.ternary").fg(gray2),
        hl("@constructor").link("Function"),
        hl("@constructor.lua").link("Delimiter"),
        hl("@string.special.url").fg(blue1).underline(),
        hl("@markup.link").fg(blue1),
        hl("@markup.link.label").fg(blue1).underdashed(),
        hl("@markup.link.url").link("@string.special.url"),
        hl("@markup.quote").fg(gray2),
    ]);

    // telescope.nvim
    r.extend([
        hl("TelescopeMatching").fg(blue1).bold(),
        hl("TelescopeNormal").link("NormalFloat"),
        hl("TelescopeTitle").link("FloatTitle"),
        hl("TelescopeBorder").link("FloatBorder"),
    ]);

    // nvim-cmp
    r.extend([
        hl("CmpItemAbbr").fg(gray1),
        hl("CmpItemAbbrMatch").fg(blue1).bold(),
        hl("CmpItemAbbrMatchFuzzy").fg(blue2),
        hl("CmpItemKind").fg(magenta1),
        hl("CmpItemKindConstant").link("Constant"),
        hl("CmpItemKindEnum").link("Type"),
        hl("CmpItemKindFunction").link("Function"),
        hl("CmpItemKindInterface").link("Type"),
        hl("CmpItemKindKeyword").link("Constant"),
        hl("CmpItemKindMethod").link("Function"),
        hl("CmpItemKindStruct").link("Type"),
        hl("CmpItemKindText").link("Comment"),
    ]);

    r
}

#[derive(Clone, Debug)]
struct Highlight<'a> {
    name: &'a str,
    link: Option<&'a str>,
    fg: Option<Oklch>,
    bg: Option<Oklch>,
    sp: Option<Oklch>,
    bold: bool,
    underline: bool,
    undercurl: bool,
    underdashed: bool,
    italic: bool,
    reverse: bool,
}

impl<'a> Highlight<'a> {
    fn new(name: &'a str) -> Self {
        Highlight {
            name,
            link: None,
            fg: None,
            bg: None,
            sp: None,
            bold: false,
            underline: false,
            undercurl: false,
            underdashed: false,
            italic: false,
            reverse: false,
        }
    }

    fn link(mut self, n: &'a str) -> Self {
        self.link = Some(n);
        self
    }
    fn fg(mut self, c: Oklch) -> Self {
        self.fg = Some(c);
        self
    }
    fn bg(mut self, c: Oklch) -> Self {
        self.bg = Some(c);
        self
    }
    fn sp(mut self, c: Oklch) -> Self {
        self.sp = Some(c);
        self
    }
    fn bold(mut self) -> Self {
        self.bold = true;
        self
    }
    fn italic(mut self) -> Self {
        self.italic = true;
        self
    }
    fn underline(mut self) -> Self {
        self.underline = true;
        self
    }
    fn undercurl(mut self) -> Self {
        self.undercurl = true;
        self
    }
    fn underdashed(mut self) -> Self {
        self.underdashed = true;
        self
    }
    fn reverse(mut self) -> Self {
        self.reverse = true;
        self
    }
}

impl Display for Highlight<'_> {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        if let Some(link) = self.link {
            return writeln!(f, "hi! link {} {link}", self.name);
        }

        write!(f, "hi! {}", self.name)?;
        write!(f, " guifg={}", self.fg.map(to_hex).unwrap_or("NONE".into()))?;
        write!(f, " ctermfg={}", self.fg.map(to_ansi256).unwrap_or("NONE".into()))?;
        write!(f, " guibg={}", self.bg.map(to_hex).unwrap_or("NONE".into()))?;
        write!(f, " ctermbg={}", self.bg.map(to_ansi256).unwrap_or("NONE".into()))?;
        write!(f, " guisp={}", self.sp.map(to_hex).unwrap_or("NONE".into()))?;

        let mut attr = Vec::new();
        if self.bold {
            attr.push("bold");
        }
        if self.italic {
            attr.push("italic");
        }
        if self.reverse {
            attr.push("reverse");
        }
        if self.underline {
            attr.push("underline");
        }
        if self.undercurl {
            attr.push("undercurl");
        }
        if self.underdashed {
            attr.push("underdashed");
        }
        let attr = if attr.is_empty() { "NONE".into() } else { attr.join(",") };
        write!(f, " gui={attr} cterm={attr}")?;

        writeln!(f)
    }
}
