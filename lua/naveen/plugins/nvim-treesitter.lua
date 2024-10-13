return {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    config = function()
        require('nvim-treesitter.configs').setup({
            -- A list of parser names, or "all" (the listed parsers MUST always be installed)
            ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },

            -- Install parsers synchronously (only applied to `ensure_installed`)
            sync_install = false,

            -- Automatically install missing parsers when entering buffer
            auto_install = true,

            -- List of parsers to ignore installing (or "all")
            ignore_install = {},

            highlight = {
                enable = true,

                -- Disable highlighting for specific languages
                disable = { "c", "rust" },

                -- Disable for large files (more flexibility)
                disable = function(lang, buf)
                    local max_filesize = 100 * 1024 -- 100 KB
                    local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
                    if ok and stats and stats.size > max_filesize then
                        return true
                    end
                end,

                -- Enable `:h syntax` and tree-sitter simultaneously
                additional_vim_regex_highlighting = false,
            },
        })
    end
}
