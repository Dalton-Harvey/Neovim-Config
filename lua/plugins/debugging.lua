return 
{
	{
		"mfussenegger/nvim-dap",
        dependencies = {
            "rcarriga/nvim-dap-ui",
            "nvim-neotest/nvim-nio",
        },
		config = function()
			local dap,dapui = require("dap"), require("dapui")
			vim.keymap.set("n", "<Leader>bp", dap.toggle_breakpoint, {})
			vim.keymap.set("n", "<F5>", dap.continue, {})
            dap.listeners.before.attach.dapui_config = function()
                dapui.open()
            end
            dap.listeners.before.launch.dapui_config = function()
                dapui.open()
            end
            dap.listeners.before.event_terminated.dapui_config = function()
                dapui.close()
            end
            dap.listeners.before.event_exited.dapui_config = function()
                dapui.close()
            end
		end,
	},
}
