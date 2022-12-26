
# Fail if the block is not seethrough.
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches -1 unless block ~ ~ ~ #veer:fsh/seethrough run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -2
# The main corners are based on a 45deg skewed 1 block sized cube
# x/z plane main corners
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches -1 unless block ^0.353553390593 ^ ^ #veer:fsh/seethrough unless block ^-0.353553390593 ^ ^ #veer:fsh/seethrough run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -2
# y plane main corners.
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches -1 unless block ^ ^0.353553390593 ^ #veer:fsh/seethrough unless block ^ ^-0.353553390593 ^ #veer:fsh/seethrough run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -2
# Cross reference corners with a secondary square
# x/z plane cross corners
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches -1 unless block ^0.353553390593 ^ ^ #veer:fsh/seethrough positioned ^ ^ ^-0.25 unless block ^-0.353553390593 ^ ^ #veer:fsh/seethrough run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -2
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches -1 unless block ^-0.353553390593 ^ ^ #veer:fsh/seethrough positioned ^ ^ ^-0.25 unless block ^0.353553390593 ^ ^ #veer:fsh/seethrough run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -2
# y plane cross corners.
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches -1 unless block ^ ^0.353553390593 ^ #veer:fsh/seethrough positioned ^ ^ ^-0.25 unless block ^ ^-0.353553390593 ^ #veer:fsh/seethrough run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -2
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches -1 unless block ^ ^-0.353553390593 ^ #veer:fsh/seethrough positioned ^ ^ ^-0.25 unless block ^ ^0.353553390593 ^ #veer:fsh/seethrough run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -2