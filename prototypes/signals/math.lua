-------------------------------------------------------------------------------
--[[Math]]--
-------------------------------------------------------------------------------
local colors = require("prototypes.signals.colors")
local names = {
    "equals", "not-equal-to", "less-than", "less-than-equal-to", "greater-than", "greater-than-equal-to", "null",
    "infinity", "percent", "one-quarter", "two-quarter", "three-quarter"
}

for _, color in pairs(colors) do
    if settings.startup["VirtualSignals-"..color].value then
        local subgroup = "more-signals-"..color
        local signals = {}
        for _, name in pairs(names) do
            signals[#signals+1]= {
                type = "virtual-signal",
                name = name.."-"..color,
                localised_name = {"virtual-signal-name.more-signals", {"signals-color."..color}, {"signals-math."..name}},
                icons =
                {
                    {
                        icon = "__base__/graphics/icons/signal/signal_"..color..".png",
                    },
                    {
                        icon = "__PickerTweaks__/graphics/icons/signal/mathematics/"..name..".png",
                    }
                },
                subgroup = subgroup,
                order = "more-signals-e-math["..color.."]-["..name.."]",
            }
        end
        data:extend(signals)
    end
end