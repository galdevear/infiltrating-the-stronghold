## Trigonometric Detect Entity Documentation
# Treat the diagonal of a cube like the diameter of a sphere because you don't know what angle the cube will be at relative to the sight line. All the possibilities combined amount of a sphere.
# as long as there are no mobs smaller than the length of the tracing interval subtracted by the side length of the cube the raytracing is perfect. Half that if directly against a full block wall.

# The diagonal of the cube of selection is the farthest it can reach. Therefore, it should equal the raytracing step interval (0.5)
# If the diagonal of the cube is 0.5, then the side is 0.5/sqrt(3) = 0.288675134595
# Step backwards half the intverval along the sightline to center on the sightline.
# positioned ^ ^ ^-0.25
# Then step backwards half the size of the cube on the normal coordinate grid to center the cube on the center of the sightline
# 0.288675134595 / 2 = 0.144337567298
# positioned ~-0.144337567298 ~-0.144337567298 ~-0.144337567298
# This must be done through two overlapping intervals due to bug MC-128876. All selections are 1 block larger than they should be when using dx,dy,dz.
# To account for the bug you then do positioned ~-size/2 ~-size/2 ~-size/2 @s[dx=0,dy=0,dz=0]
# -size/2 = -0.144337567298
# positioned ~-0.144337567298 ~-0.144337567298 ~-0.144337567298 if entity @s[dx=0,dy=0,dz=0]
# Then backtrack
# positioned ~0.144337567298 ~0.144337567298 ~0.144337567298
# Then you create a second selection to create a cross-section of the two. ~size-1 ~size-1 ~size-1 @s[dx=0,dy=0,dz=0] 
# size-1 = -0.711324865405
# positioned ~-0.711324865405 ~-0.711324865405 ~-0.711324865405 if entity @s[dx=0,dy=0,dz=0]

# This can occosionally miss entities with atleast one dimension of their hitbox equal to or smaller than 0.5 - 0.288675134595 = 0.211324865405
# For any entity with all dimensions greater than that value it is mathematically perfect raytracing.
# Could potentially have trouble detecting item frames, glow item frames, marker entities, marker armorstands or lightning.

execute positioned ^ ^ ^-0.25 positioned ~-0.144337567298 ~-0.144337567298 ~-0.144337567298 positioned ~-0.144337567298 ~-0.144337567298 ~-0.144337567298 if entity @s[dx=0,dy=0,dz=0] positioned ~0.144337567298 ~0.144337567298 ~0.144337567298 positioned ~-0.711324865405 ~-0.711324865405 ~-0.711324865405 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set $seesEntity veer.its.sculk_watcher.cry 1