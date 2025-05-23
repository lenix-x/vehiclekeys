local System = Config.System
local In, Out = System.InSideMinigame, System.OutSideMinigame
local inExport, outExport = In.export, Out.export
local inConfiguration, outConfiguration = In.configuration, Out.configuration
local inAdvaced, inNormal, outAdvanced, outNormal = inConfiguration.isAdvanced, inConfiguration.isNormal, outConfiguration.isAdvanced, outConfiguration.isNormal

function inSide(isAdvanced)
    local config = isAdvanced and inAdvaced or inNormal
    local success = exports[inExport]:startLockpick(table.unpack(config))
    ---@param you_can_only_change THIS ↑↑↑↑↑↑↑↑
    return success
end

function outSide(isAdvanced)
    local config = isAdvanced and outAdvanced or outNormal
    local success = exports[outExport]:createGame(table.unpack(config))
    ---@param you_can_only_change THIS ↑↑↑↑↑↑↑↑
    return success
end
