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
