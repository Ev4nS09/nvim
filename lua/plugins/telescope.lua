return
{
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function()
            local builtin = require("telescope.builtin")
            vim.keymap.set('n', '<leader>ff', function() builtin.find_files({ hidden = true }) end, {})
            vim.keymap.set('n', '<leader>fg', function() builtin.live_grep({ hidden = true }) end, {})
            vim.keymap.set('n', '<leader>fw', builtin.grep_string, {})
        end
}


