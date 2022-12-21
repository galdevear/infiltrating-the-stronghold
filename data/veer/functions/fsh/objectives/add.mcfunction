##
 # add_objectives.mcfunction
 # 
 # Declares objectives on reload
 # Created by Galdeveer.
##

#declare objective veer.fsh.fix_glowing.glowTimer
#declare objective veer.fsh.silverish.battlecryer.lifeTimer Timer for silverfish battlecryer code
#declare objective veer.fsh.sculk_watcher.cry
#declare objective veer.fsh.sculk_watcher.cry.battlecry
#declare objective veer.fsh.silverfish.battlecryer.ay
#declare objective veer.fsh.sculk_watcher.summon.yOffset
#declare objective veer.fsh.hooked_shell
#declare objective veer.fsh.sculk_watcher.cry.startleDuration

scoreboard objectives add veer.fsh.fix_glowing.glowTimer dummy
scoreboard objectives add veer.fsh.silverish.battlecryer.lifeTimer dummy "Silverfish Battlecryer Timer"
scoreboard objectives add veer.fsh.sculk_watcher.cry dummy "Ray tracing for Sculk Watcher Cry"
scoreboard objectives add veer.fsh.sculk_watcher.cry.battlecry dummy "Timer for Sculk Watcher tears"
scoreboard objectives add veer.fsh.silverfish.battlecryer.ay dummy "Actual Y value for silverfish battlecry entity"
scoreboard objectives add veer.fsh.sculk_watcher.summon.yOffset dummy "Summon Sculk Watcher"
scoreboard objectives add veer.fsh.hooked_shell dummy
scoreboard objectives add veer.fsh.sculk_watcher.cry.startleDuration dummy