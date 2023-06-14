-- 基础配置
require("basic")
-- Packer插件管理
require("plugins")
-- 快捷键映射
require("keybindings")
-- 主题设置
require("colorscheme")
-- 插件配置
require("plugin-config.nvim-tree")
require("plugin-config.bufferline")
require("plugin-config.lualine")
-- 开始页
require("plugin-config.dashboard")
require("plugin-config.project")
-- 语法高亮
require("plugin-config.nvim-treesitter")

-- 内置LSP
require("lsp.setup")
require("lsp.cmp")

-- 设置node环境，因为使用了volta作为管理工具
pcall(
  vim.cmd,
  [[
    if executable('volta')
      let g:node_host_prog = trim(system("volta which neovim-node-host"))
    endif
  ]]
)

-- 设置wsl剪切板
in_wsl = os.getenv('WSL_DISTRO_NAME') ~= nil

if in_wsl then
    vim.g.clipboard = {
        name = 'wsl clipboard',
        copy =  { ["+"] = { "clip.exe" },   ["*"] = { "clip.exe" } },
        paste = { ["+"] = { "nvim_paste" }, ["*"] = { "nvim_paste" } },
        cache_enabled = true
    }
end
