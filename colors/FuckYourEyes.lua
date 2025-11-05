local M = {}

function M.setup()

    local colors = {
        bg     = '#333333',
        fg     = '#424242',
        red    = '#f06c6c', 
        green  = '#6cf0b2',
        blue   = '#7accfa', 
        yellow = '#e7ff00', 
        purple = '#b677f2', 
        cyan   = '#3cb7bd', 
        gray   = '#828282', 
    }

    -- Highlight groups
    local highlights = {
        Normal = { fg = colors.fg, bg = colors.bg },
        Comment = { fg = colors.grey },
        Keyword = { fg = colors.cyan },
        String = { fg = colors.green },
        LineNr = { fg = colors.grey },
        CursorLine = { bg = colors.cyan },
        StatusLine = { fg = colors.fg, bg = colors.cyan },
        -- Treesitter supported options
        ["@variable"] = { fg = colors.blue },
        ["@keyword"] = { fg = colors.cyan },

    }

    -- Apply highlights
    for group, opts in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, opts)
    end
    
end

return M
