-- [nfnl] Compiled from fnl/axystem/stdlib/types.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("thirdparty.fun")
local any = _local_1_["any"]
local stdlib = {}
stdlib["nil?"] = function(el)
  _G.assert((nil ~= el), "Missing argument el on /home/axyie/.config/nvim/fnl/axystem/stdlib/types.fnl:4")
  return (nil == x)
end
stdlib["str?"] = function(el)
  _G.assert((nil ~= el), "Missing argument el on /home/axyie/.config/nvim/fnl/axystem/stdlib/types.fnl:15")
  return ("string" == type(el))
end
stdlib["fn?"] = function(el)
  _G.assert((nil ~= el), "Missing argument el on /home/axyie/.config/nvim/fnl/axystem/stdlib/types.fnl:26")
  return ("function" == type(el))
end
stdlib["contains?"] = function(xs, el)
  _G.assert((nil ~= el), "Missing argument el on /home/axyie/.config/nvim/fnl/axystem/stdlib/types.fnl:38")
  _G.assert((nil ~= xs), "Missing argument xs on /home/axyie/.config/nvim/fnl/axystem/stdlib/types.fnl:38")
  local function _2_(_241)
    return (el == _241)
  end
  return any(_2_, xs)
end
stdlib["empty?"] = function(xs)
  _G.assert((nil ~= xs), "Missing argument xs on /home/axyie/.config/nvim/fnl/axystem/stdlib/types.fnl:50")
  return (0 == #xs)
end
stdlib["->bool"] = function(el)
  _G.assert((nil ~= el), "Missing argument el on /home/axyie/.config/nvim/fnl/axystem/stdlib/types.fnl:61")
  if el then
    return true
  else
    return false
  end
end
stdlib["matches?"] = function(str, pattern)
  _G.assert((nil ~= pattern), "Missing argument pattern on /home/axyie/.config/nvim/fnl/axystem/stdlib/types.fnl:74")
  _G.assert((nil ~= str), "Missing argument str on /home/axyie/.config/nvim/fnl/axystem/stdlib/types.fnl:74")
  return stdlib["->bool"](str:match(pattern))
end
return stdlib
