# vehiclekeys
Vehicle Keys System Forked From QBFX

```lua
Config.System = {
    trigger = GetCurrentResourceName(), ---@param Trigger name for the other resources to [trigger] form current resource
    core = 'qb-', ---@param Core name for the server to listen to
    inventory = 'qb-inventory', ---@param Inventory name for the server to listen to
    weapons = 'qb-weapons', ---@param Weapons name for the server to listen to
    input = 'ox_lib', ---@param support ox_lib | qb-input
    OutSideMinigame = {
        isWindowUnBreakable = true, --@function set to false if you want player to break the window to get in vehicle (this will bypass the outside vehicle minigame if set to false)
        export = 'karma-repairskill', ---@export the third party lockpick UI
        configuration = {
            isAdvanced = {40}, ---@param the_difficulty_paramater_if_player_has ADVANCEDLOCKPICK
            isNormal = {20} ---@param the_difficulty_paramater_if_player_has LOCKPICK
        }
    },
    InSideMinigame = {
        export = 't3_lockpick',
        configuration = {
            isAdvanced = {1, 4, 5},
            isNormal = {3, 7, 9}
        }
    }
}

--[[
---@param Template MUST SETUP THE CLIENT/FUNCTION.LUA
    export = lib, https://github.com/overextended/ox_lib
    difficulty = {'easy', 'easy', {areaSize = 60, speedMultiplier = 2}, 'hard'}, {'w', 'a', 's', 'd'}

---@param Template MUST SETUP THE CLIENT/FUNCTION.LUA
    export = 'qb-minigames', https://github.com/qbcore-framework/qb-minigames
    difficulty = isAdvanced and 'easy' or 'medium'

---@param Template MUST SETUP THE CLIENT/FUNCTION.LUA
    export = 'np_minigames', https://github.com/lenix-x/np_minigames
    difficulty = {"Lockpick", 2, 30}

---@param Template MUST SETUP THE CLIENT/FUNCTION.LUA
    export = '2na_lockpick',
    difficulty = {3, 1}

---@param Template ALREADY CONFIGURED ;)
    export = 't3_lockpick', https://github.com/T3development/t3_lockpick
    difficulty = isAdvanced and {1, 4, 5} or {3, 7, 9}
]]
```

# License

    QBCore Framework
    Copyright (C) 2021 Joshua Eger

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>
