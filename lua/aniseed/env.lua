local _0_0 = nil
do
  local name_0_ = "aniseed.env"
  local loaded_0_ = package.loaded[name_0_]
  local module_0_ = nil
  if ("table" == type(loaded_0_)) then
    module_0_ = loaded_0_
  else
    module_0_ = {}
  end
  module_0_["aniseed/module"] = name_0_
  module_0_["aniseed/locals"] = (module_0_["aniseed/locals"] or {})
  module_0_["aniseed/local-fns"] = (module_0_["aniseed/local-fns"] or {})
  package.loaded[name_0_] = module_0_
  _0_0 = module_0_
end
local function _2_(...)
  local ok_3f_0_, val_0_ = nil, nil
  local function _2_()
    return {require("aniseed.core"), require("aniseed.compile"), require("aniseed.nvim")}
  end
  ok_3f_0_, val_0_ = pcall(_2_)
  if ok_3f_0_ then
    _0_0["aniseed/local-fns"] = {require = {a = "aniseed.core", compile = "aniseed.compile", nvim = "aniseed.nvim"}}
    return val_0_
  else
    return print(val_0_)
  end
end
local _1_ = _2_(...)
local a = _1_[1]
local compile = _1_[2]
local nvim = _1_[3]
local _2amodule_2a = _0_0
local _2amodule_name_2a = "aniseed.env"
do local _ = ({nil, _0_0, {{}, nil, nil, nil}})[2] end
local config_dir = nil
do
  local v_0_ = nvim.fn.stdpath("config")
  _0_0["aniseed/locals"]["config-dir"] = v_0_
  config_dir = v_0_
end
compile["add-path"]((config_dir .. "/?.fnl"))
local init = nil
do
  local v_0_ = nil
  do
    local v_0_0 = nil
    local function init0(opts)
      compile.glob("**/*.fnl", (config_dir .. a.get(opts, "input", "/fnl")), (config_dir .. a.get(opts, "output", "/lua")))
      return require(a.get(opts, "module", "init"))
    end
    v_0_0 = init0
    _0_0["init"] = v_0_0
    v_0_ = v_0_0
  end
  _0_0["aniseed/locals"]["init"] = v_0_
  init = v_0_
end
return nil
