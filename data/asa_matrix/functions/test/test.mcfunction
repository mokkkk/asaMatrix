# Test
execute unless data entity @s Pose.Head run data merge entity @s {Pose:{Head:[0f,0f,1f]}}
execute at @s run tp @s ~ ~ ~ 0 0
# Test
data modify entity @s Pose.Head[0] set value 85f
data modify entity @s Pose.Head[1] set value 96f
data modify entity @s Pose.Head[2] set value 98f