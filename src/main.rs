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
        Oklch::new(0.76, 0.030, 264.)
    };
    let black = if light {
        Oklch::new(0.49, 0.040, 264.)
    } else {
        Oklch::new(0.27, 0.012, 264.)
    };
    println!("{}", Srgb::from_color(white).relative_contrast(Srgb::from_color(black)));

    let fg = if light { black } else { white };
    let bg = if light { white } else { black };

    r.push(hl("Normal").fg(fg).bg(bg));

    let gray1 = mix(fg, bg, 0.12);
    let gray2 = mix(fg, bg, 0.26); // keyword
    let gray3 = mix(fg, bg, 0.44); // delimiter, comment
    let gray4 = mix(fg, bg, 0.80); // decoration

    let red1 = Oklch {
        l: gray1.l,
        chroma: 0.13,
        hue: (0.).into(),
    };
    let red2 = Oklch { chroma: 0.07, ..red1 };
    let yellow1 = red1.with_hue(94.);
    let yellow2 = red2.with_hue(94.);
    let green1 = red1.with_hue(150.);
    let green2 = red2.with_hue(150.);
    let cyan1 = red1.with_hue(192.);
    let cyan2 = red2.with_hue(192.);
    let blue1 = red1.with_hue(261.);
    let blue2 = red2.with_hue(261.);
    let magenta1 = red1.with_hue(310.);
    let magenta2 = red2.with_hue(310.);

    r.extend([
        hl("Comment").fg(gray3),
        hl("String").fg(gray1),
        hl("Constant").fg(blue2),
        hl("Identifier").fg(fg),
        hl("Function").fg(blue1),
        hl("Statement").fg(gray2).italic(),
        hl("Operator").fg(gray3),
        hl("Delimiter").link("Operator"),
        hl("Type").fg(cyan2),
        hl("Special").fg(fg),
        hl("PreProc").fg(fg),
        hl("Title").fg(blue2).bold(),
    ]);

    r.extend([
        hl("StatusLine").fg(gray1).bg(bg),
        hl("WinBar").fg(gray1).bg(bg),
        hl("WinSeparator").fg(gray4),
    ]);

    let a_cursorline = 0.05;
    let a_diag_vt = 0.09;
    let a_matchword = 0.12;
    let a_visual = 0.16;
    let a_search = 0.28;

    r.extend([
        hl("LineNr").fg(gray4),
        hl("CursorLineNr").fg(gray3).bold(),
        hl("Whitespace").fg(gray4),
        hl("CursorLine").bg(mix(bg, fg, a_cursorline)),
        hl("CursorColumn").link("CursorLine"),
        hl("Visual").bg(mix(bg, blue2, a_visual)),
        hl("Search").bg(mix(bg, blue1, a_search)),
        hl("CurSearch").bg(blue1).fg(bg).bold(),
    ]);

    r.extend([
        hl("NormalFloat").bg(bg.mix(fg, 0.04)),
        hl("FloatBorder").bg(bg.mix(fg, 0.018)).fg(bg.mix(fg, 0.5)),
        hl("FloatTitle").link("FloatBorder"),
        hl("Pmenu").link("NormalFloat"),
        hl("PmenuSel").link("Visual"),
    ]);

    let ok = green1;
    let hint = blue1;
    let info = cyan1;
    let warn = yellow1;
    let error = red1;

    r.extend([
        hl("Error").fg(error).bold(),
        hl("ErrorMsg").fg(error).bold(),
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

    r.extend([
        hl("MatchParen").fg(fg).bg(gray4).bold(),
        hl("IlluminatedWordText").bg(mix(bg, fg, a_matchword)),
        hl("IlluminatedWordRead").link("IlluminatedWordText"),
        hl("IlluminatedWordWrite").link("IlluminatedWordText"),
    ]);

    r.extend([
        hl("Added").fg(green1),
        hl("Removed").fg(red1),
        hl("Changed").fg(blue1),
        hl("DiffAdd").bg(mix(bg, green1, 0.15)),
        hl("DiffDelete").bg(mix(bg, red1, 0.15)),
        hl("DiffChange").bg(mix(bg, blue1, 0.15)),
        hl("GitSignsAddInline").bg(mix(bg, green1, 0.3)),
        hl("GitSignsDeleteInline").bg(mix(bg, red1, 0.3)),
        hl("GitSignsChangeInline").bg(mix(bg, green1, 0.3)),
    ]);

    r.extend([
        hl("@attribute.builtin").link("@attribute"),
        hl("@constant.builtin").link("@constant"),
        hl("@function.builtin").link("@function"),
        hl("@type.builtin").link("@type"),
    ]);

    r.extend([
        hl("@variable").fg(fg),
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

    r.extend([
        hl("TelescopeNormal").link("NormalFloat"),
        hl("TelescopeTitle").link("FloatTitle"),
        hl("TelescopeBorder").link("FloatBorder"),
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
        write!(f, " guibg={}", self.bg.map(to_hex).unwrap_or("NONE".into()))?;
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
