use palette::{FromColor, Oklch, Srgb};

pub struct Theme<'a> {
    light: bool,
    neovim: bool,
    highlights: Vec<crate::Highlight<'a>>,
}

impl Theme<'_> {
    pub fn new(light: bool, neovim: bool) -> Self {
        Self {
            light,
            neovim,
            highlights: Vec::new(),
        }
    }
}

impl<'a> std::ops::Deref for Theme<'a> {
    type Target = Vec<crate::Highlight<'a>>;
    fn deref(&self) -> &Self::Target {
        &self.highlights
    }
}
impl std::ops::DerefMut for Theme<'_> {
    fn deref_mut(&mut self) -> &mut Self::Target {
        &mut self.highlights
    }
}

impl std::fmt::Display for Theme<'_> {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        if self.neovim {
            writeln!(f, "return {{ setup = function()")?;
            for h in &self.highlights {
                writeln!(f, "{}", h.display(true))?;
            }
            writeln!(f, "end }}")?;
        } else {
            writeln!(
                f,
                "fu! robot#{}#setup() abort",
                if self.light { "light" } else { "dark" }
            )?;
            for h in &self.highlights {
                writeln!(f, "{}", h.display(false))?;
            }
            writeln!(f, "endf")?;
        }
        Ok(())
    }
}

#[derive(Clone, Debug)]
pub struct Highlight<'a> {
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
    pub fn new(name: &'a str) -> Self {
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

    pub fn link(mut self, n: &'a str) -> Self {
        self.link = Some(n);
        self
    }
    pub fn fg(mut self, c: Oklch) -> Self {
        self.fg = Some(c);
        self
    }
    pub fn bg(mut self, c: Oklch) -> Self {
        self.bg = Some(c);
        self
    }
    pub fn sp(mut self, c: Oklch) -> Self {
        self.sp = Some(c);
        self
    }
    pub fn bold(mut self) -> Self {
        self.bold = true;
        self
    }
    pub fn italic(mut self) -> Self {
        self.italic = true;
        self
    }
    pub fn underline(mut self) -> Self {
        self.underline = true;
        self
    }
    pub fn undercurl(mut self) -> Self {
        self.undercurl = true;
        self
    }
    pub fn underdashed(mut self) -> Self {
        self.underdashed = true;
        self
    }
    pub fn reverse(mut self) -> Self {
        self.reverse = true;
        self
    }

    pub fn display(&'a self, lua: bool) -> impl 'a + std::fmt::Display {
        Display {
            lua,
            highlight: self,
        }
    }
}

struct Display<'a> {
    lua: bool,
    highlight: &'a Highlight<'a>,
}

impl std::fmt::Display for Display<'_> {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        let h = &self.highlight;
        if self.lua {
            if let Some(link) = h.link {
                return write!(
                    f,
                    "vim.api.nvim_set_hl(0, '{}', {{ force = true, link = '{link}' }})",
                    h.name
                );
            }

            let mut opts = Vec::new();
            opts.push("force = true".into());
            if let Some(fg) = h.fg {
                opts.push(format!("fg = '{}'", to_hex(fg)));
                opts.push(format!("ctermfg = {}", to_ansi256(fg)));
            }
            if let Some(bg) = h.bg {
                opts.push(format!("bg = '{}'", to_hex(bg)));
                opts.push(format!("ctermbg = {}", to_ansi256(bg)));
            }
            if let Some(sp) = h.sp {
                opts.push(format!("sp = '{}'", to_hex(sp)));
            }
            if h.bold {
                opts.push("bold = true".into());
            }
            if h.italic {
                opts.push("italic = true".into());
            }
            if h.underline {
                opts.push("underline = true".into());
            }
            if h.undercurl {
                opts.push("undercurl = true".into());
            }
            if h.underdashed {
                opts.push("underdashed = true".into());
            }
            write!(
                f,
                "vim.api.nvim_set_hl(0, '{}', {{ {} }})",
                h.name,
                opts.join(", ")
            )
        } else {
            if let Some(link) = h.link {
                return write!(f, "hi! link {} {link}", h.name);
            }

            write!(f, "hi! {}", h.name)?;
            write!(f, " guifg={}", h.fg.map(to_hex).unwrap_or("NONE".into()))?;
            write!(
                f,
                " ctermfg={}",
                h.fg.map(to_ansi256).unwrap_or("NONE".into())
            )?;
            write!(f, " guibg={}", h.bg.map(to_hex).unwrap_or("NONE".into()))?;
            write!(
                f,
                " ctermbg={}",
                h.bg.map(to_ansi256).unwrap_or("NONE".into())
            )?;
            write!(f, " guisp={}", h.sp.map(to_hex).unwrap_or("NONE".into()))?;

            let mut attr = Vec::new();
            if h.bold {
                attr.push("bold");
            }
            if h.italic {
                attr.push("italic");
            }
            if h.reverse {
                attr.push("reverse");
            }
            if h.underline {
                attr.push("underline");
            }
            if h.undercurl {
                attr.push("undercurl");
            }
            if h.underdashed {
                attr.push("underdashed");
            }
            let attr = if attr.is_empty() {
                "NONE".into()
            } else {
                attr.join(",")
            };
            write!(f, " gui={attr} cterm={attr}")
        }
    }
}

fn to_hex(color: Oklch) -> String {
    format!("#{:x}", Srgb::from_color(color).into_format::<u8>())
}

fn to_ansi256(color: Oklch) -> String {
    let rgb = Srgb::from_color(color).into_format::<u8>();
    format!(
        "{}",
        rgb2ansi256::rgb_to_ansi256(rgb.red, rgb.green, rgb.blue)
    )
}
