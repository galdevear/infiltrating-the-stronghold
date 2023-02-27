# Theres no way for you to get infested stone with a button on it outside the stronghold so its restricted to the stronghold

advancement revoke @s only veer:its/infested_blocks/pressed_button

#declare score_holder $step
#declare score_holder $maxSteps

scoreboard players set $step veer.its.infested_blocks 0
scoreboard players set $maxSteps veer.its.infested_blocks 12

execute at @s anchored eyes positioned ^ ^ ^ run function veer:its/infested_blocks/pressed_button/loop