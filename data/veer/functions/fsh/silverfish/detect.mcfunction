##
 # detect.mcfunction
 #
 # Created by Galdeveer.
##

#> Silverfish Battlecryer
# Use invis silverfish battlecryer to trigger infested blocks; then, kill it.
#@public
#declare tag veer.fsh.silverfish.battlecryer

# Silverfish battlecryer should have started in the void due to the invisible not kicking in for a moment.
# Send silverfish battlecry entity back from the void now that its invisibility has kicked in. (used sb timer to wait 1 tick for the invis to kick in)
execute as @e[type=silverfish,tag=veer.fsh.silverfish.battlecryer.retToY,scores={veerFsh.sbTimer = 0}] run execute store result entity @s Pos[1] double 1 run scoreboard players get @s veer.fsh.ssb.ay
# Untag it so it doesn't happen again
tag @e[type=silverfish,tag=veer.fsh.silverfish.battlecryer.retToY,scores={veerFsh.sbTimer = 0}] remove veer.fsh.silverfish.battlecryer.retToY

# Send to void and kill
# TODO: test delay to see if its off
execute as @e[type=silverfish, scores={veerFsh.sbTimer=19..}] run function veer:fsh/util/kill_in_void

# Placement of this line in the code matters
# Increment delay for sending it to the void and killing it. 19 tick delay.
scoreboard players add @e[type=silverfish, tag=veer.fsh.silverfish.battlecryer] veerFsh.sbTimer 1