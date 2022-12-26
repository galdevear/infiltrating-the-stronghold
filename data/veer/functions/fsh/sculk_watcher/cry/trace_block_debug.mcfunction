## Detect Wall Debug
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 run particle flame ~ ~ ~ 0 0 0 0 1 force
#The main corners are based on a 45deg skewed 1 block sized cube
# x/z plane main corners
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 positioned ^0.707106781187 ^ ^ run particle flame ~ ~ ~ 0 0 0 0 1 force
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 positioned ^-0.707106781187 ^ ^ run particle flame ~ ~ ~ 0 0 0 0 1 force

# y plane main corners.
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 positioned ^ ^0.707106781187 ^ run particle flame ~ ~ ~ 0 0 0 0 1 force
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 positioned ^ ^-0.707106781187 ^ run particle flame ~ ~ ~ 0 0 0 0 1 force