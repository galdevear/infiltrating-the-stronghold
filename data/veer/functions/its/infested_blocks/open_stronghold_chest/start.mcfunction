advancement revoke @s only veer:its/infested_blocks/open_stronghold_chest
#declare score_holder $step
#declare score_holder $maxSteps
#declare score_holder $foundBlock

scoreboard players set $step veer.its.infested_blocks 0
scoreboard players set $maxSteps veer.its.infested_blocks 12
scoreboard players set $foundBlock veer.its.infested_blocks 0

execute at @s anchored eyes positioned ^ ^ ^ run function veer:its/infested_blocks/open_stronghold_chest/loop