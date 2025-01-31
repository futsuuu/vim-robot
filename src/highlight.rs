use palette::{FromColor, Oklch, Srgb};

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
}

impl std::fmt::Display for Highlight<'_> {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        if let Some(link) = self.link {
            return writeln!(f, "hi! link {} {link}", self.name);
        }

        write!(f, "hi! {}", self.name)?;
        write!(f, " guifg={}", self.fg.map(to_hex).unwrap_or("NONE".into()))?;
        write!(
            f,
            " ctermfg={}",
            self.fg.map(to_ansi256).unwrap_or("NONE".into())
        )?;
        write!(f, " guibg={}", self.bg.map(to_hex).unwrap_or("NONE".into()))?;
        write!(
            f,
            " ctermbg={}",
            self.bg.map(to_ansi256).unwrap_or("NONE".into())
        )?;
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
        let attr = if attr.is_empty() {
            "NONE".into()
        } else {
            attr.join(",")
        };
        write!(f, " gui={attr} cterm={attr}")?;

        writeln!(f)
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
