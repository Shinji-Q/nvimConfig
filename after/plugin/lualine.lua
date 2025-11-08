local lualine = require 'lualine'


lualine.setup({
  options = {
    theme = 'auto', -- lualine theme
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    disabled_filetypes = {     -- Filetypes to disable lualine for.
        statusline = {},       -- only ignores the ft for statusline.
        winbar = {},           -- only ignores the ft for winbar.
    },

    ignore_focus = {'neo-tree',
                    'TelescopePrompt',
                    'undotree',
                    'oil'},         -- If current filetype is in this list it'll
                               -- always be drawn as inactive statusline
                               -- and the last window will be drawn as active statusline.
                               -- for example if you don't want statusline of
                               -- your file tree / sidebar window to have active
                               -- statusline you can add their filetypes here.
                               --
                               -- Can also be set to a function that takes the
                               -- currently focused window as its only argument
                               -- and returns a boolean representing whether the
                               -- window's statusline should be drawn as inactive.

    always_divide_middle = true, -- When set to true, left sections i.e. 'a','b' and 'c'
                                 -- can't take over the entire statusline even
                                 -- if neither of 'x', 'y' or 'z' are present.

    always_show_tabline = true, -- When set to true, if you have configured lualine for displaying tabline
                            -- then tabline will always show. If set to false, then tabline will be displayed
                            -- only when there are more than 1 tab. (see :h showtabline)

    globalstatus = true,        -- enable global statusline (have a single statusline
                                 -- at bottom of neovim instead of one for  every window).
                                 -- This feature is only available in neovim 0.7 and higher.
  },
  tabline = {
    lualine_a = {{
      'tabs',
      mode = 2,
      tab_max_length = -1,
      fmt = function(name, context) 
        if context.buftype == 'neotree' or context.buftype == 'terminal' then
          return ''
        end
        local parentFolderPath = context.file:match("^(.*/)")
        local branch = vim.fn.system('cd ' .. parentFolderPath .. ' && git branch --show-current 2> /dev/null')
        branch = branch:gsub('\n', '')

        if branch ~= '' then
          name = ' ' .. branch
        end

        return name
      end,}},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
  }
})
