# By allowing this to short circuit it can allow for some old values to be innaccurate, but this actually makes it a somewhat better because in some cases it can find blocks that aren't touching but line up in a way that can block sight.

execute if score $seesEntity veer.its.sculk_watcher.cry matches 0 run function veer:its/sculk_watcher/cry/detect_wall/1d/detect
execute if score $seesEntity veer.its.sculk_watcher.cry matches 0 run function veer:its/sculk_watcher/cry/detect_wall/2d/detect
execute if score $seesEntity veer.its.sculk_watcher.cry matches 0 run function veer:its/sculk_watcher/cry/detect_wall/3d/detect
execute if score $seesEntity veer.its.sculk_watcher.cry matches 0 run function veer:its/sculk_watcher/cry/detect_entity_trig