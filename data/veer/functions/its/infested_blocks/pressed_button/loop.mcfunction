# increment counter
scoreboard players add $step veer.its.infested_blocks 1
# Check for adjacent
execute if block ~ ~ ~ stone_button run function veer:its/infested_blocks/pressed_button/button_to_infested
# continue if not found and haven't hit limit
execute if score $step veer.its.infested_blocks <= $maxSteps veer.its.infested_blocks positioned ^ ^ ^0.5 run function veer:its/infested_blocks/pressed_button/loop