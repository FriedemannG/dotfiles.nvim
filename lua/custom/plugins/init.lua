-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	{
	"folke/trouble.nvim",
    dependencies = { 'nvim-tree/nvim-web-devicons'},
	},
    'ThePrimeagen/harpoon',
    'p00f/clangd_extensions.nvim',
    {
	'javiorfo/nvim-soil',
	dependencies = {'javiorfo/nvim-nyctovim'}
    }


}
