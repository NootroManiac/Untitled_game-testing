local part = game.Workspace.Part
local remote = game.ReplicatedStorage.target
local module = require(game.ReplicatedStorage.ModuleScript)

module.Part_potential = part
module.number = 5

module.check()

task.wait(8)

module.check()