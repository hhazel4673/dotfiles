-- most of this shit sucks, figure it out yourself I love the default color scheme
local colors = {
    white  = '#FFFFFF',
    bg     = '#333333',
    fg     = '#424242',
    red    = '#f06c6c', 
    green  = '#6cf0b2',
    blue   = '#7accfa', 
    yellow = '#e7ff00', 
    purple = '#b677f2', 
    cyan   = '#3cb7bd', 
    gray   = '#2b2b2b', 
    paren  = '#00F2FF',
}

-- Highlight groups
local highlights = {
    Keyword = { fg = colors.cyan },
    String = { fg = colors.green },
    CursorLine = { bg = colors.grey },
    StatusLine = { fg = colors.fg, bg = colors.white },
    Function = { fg = colors.green },

    -- Treesitter supported options
    ["@variable"] = { fg = colors.blue },
    ["@keyword"] = { fg = colors.cyan, bold = true, italic = true },
    ["@function"] = { fg = colors.green },
    ["@punctuation.bracket"] = { fg = colors.white },
    ["@punctuation.special"] = { fg = colors.paren },
    ["@punctuation.delimiter"] = { fg = colors.white },
    ["@character.special"] = { fg = colors.white },

}

-- Apply highlights
for group, opts in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, opts)
end
