return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#232829", -- Default background
                base01 = "#788487", -- Lighter background (status bars)
                base02 = "#232829", -- Selection background
                base03 = "#788487", -- Comments, invisibles
                base04 = "#d6dadc", -- Dark foreground
                base05 = "#d6dbdc", -- Default foreground
                base06 = "#d6dbdc", -- Light foreground
                base07 = "#d6dadc", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#94abb8", -- Variables, errors, red
                base09 = "#93aab8", -- Integers, constants, orange
                base0A = "#98b3b0", -- Classes, types, yellow
                base0B = "#98b3aa", -- Strings, green
                base0C = "#b0c0c5", -- Support, regex, cyan
                base0D = "#95abb6", -- Functions, keywords, blue
                base0E = "#97aab4", -- Keywords, storage, magenta
                base0F = "#98b3b3", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
