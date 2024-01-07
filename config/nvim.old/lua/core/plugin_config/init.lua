local function require_plugins()
    local path = vim.fn.stdpath('config')..'/lua/core/plugin_config'
    local str = vim.fn.globpath(path, '*.lua')

    for _, file in ipairs(vim.split(str, '\n')) do
        if file ~= '' then
            local module = file:match('([^/]+)%.lua$')
            if module ~= 'init' then -- This is to exclude the init.lua file itself
                require('core.plugin_config.' .. module)
            end
        end
    end
end

require_plugins()

