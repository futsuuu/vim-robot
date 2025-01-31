local function setup()
  if vim.g.colors_name then
    vim.cmd.highlight('clear')
  end
  if vim.g.syntax_on == 1 then
    vim.cmd.syntax('reset')
  end
  vim.g.colors_name = 'robot'
  if vim.o.background == 'light' then
    require('robot.light').setup()
  else
    require('robot.dark').setup()
  end
end

return { setup = setup }
