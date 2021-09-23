data merge storage asa_matrix: {Pos:[0d,0d,0d]}
execute store result entity @s Rotation[0] float 0.001 run scoreboard players get #asa_rotation_0 AsaMatrix
execute store result storage asa_matrix: Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_matrix: Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_matrix: Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify entity @s Pos set from storage asa_matrix: Pos
execute at @s run tp @s ~ ~ ~ ~ ~