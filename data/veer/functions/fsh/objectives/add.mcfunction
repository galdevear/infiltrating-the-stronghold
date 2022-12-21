##
 # add_objectives.mcfunction
 # 
 # Declares objectives on reload
 # Created by Galdeveer.
##

#declare objective veer.fsh.sbTimer Timer for silverfish battlecryer code
#declare objective veer.fsh.swc 
#declare objective veer.fsh.ssb.ay  
#declare objective veer.fsh.sSw
#declare objective veer.fsh.sculkBattlecry
#declare objective veer.fsh.glowTimer
#declare objective veer.fsh.hooked_shell
#declare objective veer.fsh.swc.startleDuration

scoreboard objectives add veer.fsh.glowTimer dummy
scoreboard objectives add veer.fsh.sbTimer dummy "Silverfish Battlecryer Timer"
scoreboard objectives add veer.fsh.swc dummy "Ray tracing for Sculk Watcher Cry"
scoreboard objectives add veer.fsh.sculkBattlecry dummy "Timer for Sculk Watcher tears"
scoreboard objectives add veer.fsh.ssb.ay dummy "Actual Y value for silverfish battlecry entity"
scoreboard objectives add veer.fsh.sSw dummy "Summon Sculk Watcher"
scoreboard objectives add veer.fsh.hooked_shell dummy
scoreboard objectives add veer.fsh.swc.startleDuration dummy