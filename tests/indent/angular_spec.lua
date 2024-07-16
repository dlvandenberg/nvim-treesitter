local Runner = require("tests.indent.common").Runner
local runner = Runner:new(it, "tests/indent/angular", {
  tabstop = 2,
  shiftwidth = 2,
  expandtab = true,
  filetype = "htmlangular",
})

describe("indent HTML Angular:", function()
  describe("whole file:", function()
    runner:whole_file "."
  end)

  describe("new line:", function()
    for _, info in ipairs {
      { 1, 2 },
    } do
      runner:new_line("if-else.html", { on_line = info[1], text = "//", indent = info[2] })
    end
  end)
end)
