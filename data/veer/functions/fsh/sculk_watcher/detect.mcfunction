##
 # detect.mcfunction
 # 
 # Created by Galdeveer.
##

# Does this only detect for silverfish battlecry or is there a dependency I'm not seeing?

#TODO: Is this accurate anymore???
#alias vector passengerOffset ~ ~0.5 ~
# Increment veer.fsh.swTears
# TODO: Consider moving out of this file to decouple the clock's rate from the function's call rate.
scoreboard players add @s veer.fsh.swTears 1
# Reset retVal
# Default retVal to failure
scoreboard players set $retVal veer.fsh.swc -1

#>Ray trace for player
# This is where retval gets set
# Skip running it if % chance fails
execute if predicate veer:fsh/sculk_watcher/battlecry_chance at @s positioned ~ ~0.2 ~ run function veer:fsh/sculk_watcher/cry/can_battlecry

#TODO: Make sure the below comments receive clarification for their ambiguity.

# If battlecryCooldown..cryMax
# then cry 0
execute if score @s veer.fsh.swTears matches 2..6 if score $retVal veer.fsh.swc matches 0 run scoreboard players set @s veer.fsh.swTears 0
# If (cryMax + 1)..
# then cry -2
execute if score @s veer.fsh.swTears matches 7.. if score $retVal veer.fsh.swc matches 0 run scoreboard players set @s veer.fsh.swTears -2

# If cry -1
#   unless retVal
#   then cry 100
execute if score @s veer.fsh.swTears matches -1 unless score $retVal veer.fsh.swc matches 0 run scoreboard players add @s veer.fsh.swTears 100
#   if retVal
#   then cry 0
execute if score @s veer.fsh.swTears matches -1 if score $retVal veer.fsh.swc matches 0 run scoreboard players set @s veer.fsh.swTears 0

# If cry 0
# then summon_battlecryer!!!!
execute if score @s veer.fsh.swTears matches 0 run function veer:fsh/silverfish/summon_battlecryer