-------------------------------------------------------------------------------
--[[Kana]]--
-------------------------------------------------------------------------------
local colors = require("prototypes.signals.colors")
local names = {
    "ア", "イ", "ウ", "エ", "オ", "カ", "キ", "ク", "ケ", "コ", "ガ", "ギ", "グ", "ゲ", "ゴ",
    "サ", "シ", "ス", "セ", "ソ", "ザ", "ジ", "ズ", "ゼ", "ゾ", "タ", "チ", "ツ", "テ", "ト",
    "ダ", "ヂ", "ヅ", "デ", "ド", "ナ", "ニ", "ヌ", "ネ", "ノ", "ハ", "ヒ", "フ", "ヘ", "ホ",
    "バ", "ビ", "ブ", "ベ", "ボ", "パ", "ピ", "プ", "ペ", "ポ", "マ", "ミ", "ム", "メ", "モ",
    "ヤ", "ユ", "ヨ", "ラ", "リ", "ル", "レ", "ロ", "ワ", "ヰ", "ヱ", "ヲ", "ン"
}

for _, color in pairs(colors) do
    if settings.startup["VirtualSignals-"..color].value then
        local subgroup = "more-signals-"..color
        local signals = {}
        for _, name in pairs(names) do
            signals[#signals+1] = {
                type = "virtual-signal",
                name = name.."-"..color,
                localised_name = {"virtual-signal-name.more-signals", {"signals-color."..color}, {"signals-kana.signal-"..name}},
                icons =
                {
                    {
                        icon = "__base__/graphics/icons/signal/signal_"..color..".png",
                    },
                    {
                        icon = "__PickerTweaks__/graphics/icons/signal/kana/virtual-signal-"..name..".png",
                    }
                },
                subgroup = subgroup,
                order = "more-signals-z-kana["..color.."]-["..name.."]",
            }
        end
        data:extend(signals)
    end
end