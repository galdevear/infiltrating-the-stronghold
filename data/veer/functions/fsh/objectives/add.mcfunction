##
 # add_objectives.mcfunction
 # 
 # Declares objectives on reload
 # Created by Galdeveer.
##

#declare objective veerFsh.sbTimer Timer for silverfish battlecryer code
#declare objective veer.fsh.swc 
#declare objective veer.fsh.ssb.ay  
#declare objective veer.fsh.sSw
#declare objective veer.fsh.sculkBattlecry
#declare objective veerFsh.ibpTimer maxes out at 4
#declare objective veerFsh.gloTimer
#declare objective veer.fsh.passenger.bobber


scoreboard objectives add veerFsh.gloTimer dummy
scoreboard objectives add veerFsh.ibpTimer dummy "In-Block Projectile Timer"
scoreboard objectives add veerFsh.sbTimer dummy "Silverfish Battlecryer Timer"
scoreboard objectives add veer.fsh.swc dummy "Ray tracing for Sculk Watcher Cry"
scoreboard objectives add veer.fsh.sculkBattlecry dummy "Timer for Sculk Watcher tears"
scoreboard objectives add veer.fsh.ssb.ay dummy "Actual Y value for silverfish battlecry entity"
scoreboard objectives add veer.fsh.sSw dummy "Summon Sculk Watcher"
scoreboard objectives add veer.fsh.passenger.bobber dummy