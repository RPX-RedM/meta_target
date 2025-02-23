local apiRef = exports.meta_target:getExportNames()

target = {}

for _,name in ipairs(apiRef) do
  target[name] = function(...)
    return exports.meta_target[name](exports.meta_target,...)
  end
end
