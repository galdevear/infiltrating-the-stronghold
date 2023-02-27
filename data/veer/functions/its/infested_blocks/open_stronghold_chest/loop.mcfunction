# increment counter
scoreboard players add $step veer.its.infested_blocks 1
# check for block
execute if block ~ ~ ~ chest run function veer:its/infested_blocks/open_stronghold_chest/check_loot_table
# destroy if found
execute if score $foundBlock veer.its.infested_blocks matches 1.. run function veer:its/infested_blocks/open_stronghold_chest/open
# continue if not found and haven't hit limit
execute if score $foundBlock veer.its.infested_blocks matches 0 if score $step veer.its.infested_blocks <= $maxSteps veer.its.infested_blocks positioned ^ ^ ^0.5 run function veer:its/infested_blocks/open_stronghold_chest/loop