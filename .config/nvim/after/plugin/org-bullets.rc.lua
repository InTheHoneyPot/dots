require("org-bullets").setup {
  concealcursor = false, -- If false then when the cursor is on a line underlying characters are visible
  symbols = {
    -- headlines can be a list
    headlines = { "◉", "○", "✸", "✿" },
    checkboxes = {
      half = { "", "OrgTSCheckboxHalfChecked" },
      done = { "✓", "OrgDone" },
      todo = { "˟", "OrgTODO" },
    },
  }
}
