return {
  'wfxr/minimap.vim',
  build = 'cargo install --locked code-minimap',
  config = function()
    -- Basic configuration
    vim.g.minimap_width = 10
    vim.g.minimap_auto_start = 1
    vim.g.minimap_auto_start_win_enter = 1

    -- Optional additional settings
    vim.g.minimap_highlight_range = 1   -- Highlight range of visible lines
    vim.g.minimap_highlight_search = 1  -- Highlight search patterns
    vim.g.minimap_git_colors = 1        -- Enable git colors
    vim.g.minimap_mode = 1              -- Display minimap in normal mode
  end
}
