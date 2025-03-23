return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate", -- Automatically update parsers
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    ensure_maintained = {
      "lua", "vim", "markdown", "javascript", "typescript", "rust", "go", "zig", "toml"
    },
    sync_install = false,
    auto_install = true, -- Auto-install parsers if missing
    highlight = {
      enable = true,
      disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
          return true
        end
        return false
      end,
      additional_vim_regex_highlighting = false,
    },
    indent = { enable = true },
    rainbow = {
      enable = true,
      extended_mode = true,
      max_file_lines = nil,
    },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}
