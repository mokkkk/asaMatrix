data modify storage asa_matrix: Temp set from entity @s
execute unless data storage asa_matrix: Temp.Pose.Head run data merge entity @s {Pose:{Head:[0f,0f,1f]}}
execute unless data storage asa_matrix: Temp.Pose.Head run data merge storage asa_matrix: {Temp:{Pose:{Head:[0f,0f,1f]}}}

execute store result score #as_pose_x AsaCore run data get storage asa_matrix: Temp.Pose.Head[0] 1000
scoreboard players remove #as_pose_x AsaCore 3000
execute if score #as_pose_x AsaCore matches 180001.. run scoreboard players remove #as_pose_x AsaCore 360000
execute if score #as_pose_x AsaCore matches ..-180001 run scoreboard players add #as_pose_x AsaCore 360000
execute store result entity @s Pose.Head[0] float 0.001 run scoreboard players get #as_pose_x AsaCore

execute store result score #as_pose_y AsaCore run data get storage asa_matrix: Temp.Pose.Head[1] 1000
scoreboard players remove #as_pose_y AsaCore 3000
execute if score #as_pose_y AsaCore matches 180001.. run scoreboard players remove #as_pose_y AsaCore 360000
execute if score #as_pose_y AsaCore matches ..-180001 run scoreboard players add #as_pose_y AsaCore 360000
execute store result entity @s Pose.Head[1] float 0.001 run scoreboard players get #as_pose_y AsaCore

execute store result score #as_pose_z AsaCore run data get storage asa_matrix: Temp.Pose.Head[2] 1000
scoreboard players remove #as_pose_z AsaCore 3000
execute if score #as_pose_z AsaCore matches 180001.. run scoreboard players remove #as_pose_z AsaCore 360000
execute if score #as_pose_z AsaCore matches ..-180001 run scoreboard players add #as_pose_z AsaCore 360000
execute store result entity @s Pose.Head[2] float 0.001 run scoreboard players get #as_pose_z AsaCore

tp @s ~ ~ ~ ~5 ~
