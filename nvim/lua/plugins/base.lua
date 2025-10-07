return {
        {
                "nvim-treesitter/nvim-treesitter",
                lazy = false,
                branch = "main",
                tag = "v0.10.0",
                build = ":TSUpdate", 
                config = function()
                        require'nvim-treesitter.configs'.setup {
                                ensure_installed = { "c", "lua" },
                                auto_install = true,
                                highlight = {
                                        enable = true,
                                        additional_vim_regex_highlighting = true
                                }
                        }
                end
        }
}
