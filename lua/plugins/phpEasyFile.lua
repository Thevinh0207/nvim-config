return {
	"ta-tikoma/php.easy.nvim",
	ft = "php",
	config = true,
	keys = {
		{ "<leader>pc", "<cmd>PHPEasyInitClass<cr>", ft = "php", desc = "PHP class" },
		{ "<leader>pa", "<cmd>PHPEasyInitAbstractClass<cr>", ft = "php", desc = "PHP abstract class" },
		{ "<leader>pi", "<cmd>PHPEasyInitInterface<cr>", ft = "php", desc = "PHP interface" },
		{ "<leader>pt", "<cmd>PHPEasyInitTrait<cr>", ft = "php", desc = "PHP trait" },
		{ "<leader>pe", "<cmd>PHPEasyInitEnum<cr>", ft = "php", desc = "PHP enum" },
	},
}
