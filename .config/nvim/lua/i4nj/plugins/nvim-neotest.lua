return {
    "nvim-neotest/neotest",
    dependencies = { 
        "nvim-lua/plenary.nvim",
        "nvim-neotest/nvim-nio",
        "nvim-treesitter/nvim-treesitter",
        "vim-test/vim-test",
        "nvim-neotest/neotest-vim-test",
        "antoinemadec/FixCursorHold.nvim",
    }, 
    config = function()
        require("neotest").setup {
            adapters = {
                require("neotest-vim-test")({
                    ignore_file_types = { "lua", "vim" },
                }),
            },
        }
    end,
}
