local M = {}

-- code from <https://github.com/tjdevries/lazy-require.nvim/blob/bb626818ebc175b8c595846925fd96902b1ce02b/lua/lazy-require.lua#L25>
function M.require_on_exported_call(require_path)
  return setmetatable({}, {
    __index = function(_, k)
      return function(...)
        return require(require_path)[k](...)
      end
    end,
  })
end

return M
