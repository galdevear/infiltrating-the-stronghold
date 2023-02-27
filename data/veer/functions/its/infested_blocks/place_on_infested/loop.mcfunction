# increment counter
scoreboard players add $step veer.its.infested_blocks 1
# check for block
execute if block ~ ~ ~ #veer:its/infested run scoreboard players set $foundBlock veer.its.infested_blocks 1
# destroy if found
execute if score $foundBlock veer.its.infested_blocks matches 1 run setblock ~ ~ ~ air destroy
# continue if not found and haven't hit limit
execute if score $foundBlock veer.its.infested_blocks matches 0 if score $step veer.its.infested_blocks <= $maxSteps veer.its.infested_blocks positioned ^ ^ ^0.5 run function veer:its/infested_blocks/place_on_infested/loop