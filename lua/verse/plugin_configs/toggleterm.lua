local present, toggleterm = pcall(require, "toggleterm")
if not present then return end

toggleterm.setup{
	open_mapping = [[<F4>]],
	direction = 'float',
}
