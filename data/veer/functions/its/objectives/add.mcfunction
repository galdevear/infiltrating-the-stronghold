##
 # add_objectives.mcfunction
 # 
 # Declares objectives on reload
 # Created by Galdeveer.
##

#declare objective veer.its.fix_glowing.glowTimer
#declare objective veer.its.silverish.battlecryer.lifeTimer Timer for silverfish battlecryer code
#declare objective veer.its.sculk_watcher.cry
#declare objective veer.its.sculk_watcher.cry.battlecry
#declare objective veer.its.silverfish.battlecryer.ay
#declare objective veer.its.sculk_watcher.summon.yOffset
#declare objective veer.its.hooked_shell
#declare objective veer.its.sculk_watcher.cry.startleDuration
#declare objective veer.its.sculk_watcher.cry.detect_wall.micro
#declare objective veer.its.infested_blocks
#declare objective veer.its.eye_of_ender

scoreboard objectives add veer.its.fix_glowing.glowTimer dummy
scoreboard objectives add veer.its.silverish.battlecryer.lifeTimer dummy "Silverfish Battlecryer Timer"
scoreboard objectives add veer.its.sculk_watcher.cry dummy "Ray tracing for Sculk Watcher Cry"
scoreboard objectives add veer.its.sculk_watcher.cry.battlecry dummy "Timer for Sculk Watcher tears"
scoreboard objectives add veer.its.silverfish.battlecryer.ay dummy "Actual Y value for silverfish battlecry entity"
scoreboard objectives add veer.its.sculk_watcher.summon.yOffset dummy "Summon Sculk Watcher"
scoreboard objectives add veer.its.hooked_shell dummy
scoreboard objectives add veer.its.sculk_watcher.cry.startleDuration dummy
scoreboard objectives add veer.its.sculk_watcher.cry.detect_wall.micro dummy
scoreboard objectives add veer.its.infested_blocks dummy
scoreboard objectives add veer.its.eye_of_ender dummy