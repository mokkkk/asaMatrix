scoreboard players operation #asa_move_pos_temp_x AsaMatrix += #asa_parent_pos_x AsaMatrix
scoreboard players operation #asa_move_pos_temp_y AsaMatrix += #asa_parent_pos_y AsaMatrix
scoreboard players operation #asa_move_pos_temp_z AsaMatrix += #asa_parent_pos_z AsaMatrix

tellraw @a [{"score":{"name":"#asa_move_pos_temp_x","objective":"AsaMatrix"}}," ",{"score":{"name":"#asa_move_pos_temp_y","objective":"AsaMatrix"}}," ",{"score":{"name":"#asa_move_pos_temp_z","objective":"AsaMatrix"}}]

data merge storage asa_matrix: {Pos:[0d,0d,0d]}
execute store result storage asa_matrix: Rotation float 0.001 run scoreboard players get #asa_rotation_0 AsaMatrix
data modify entity @s Rotation[0] set from storage asa_matrix: Rotation
execute store result storage asa_matrix: Pos[0] double 0.001 run scoreboard players get #asa_move_pos_temp_x AsaMatrix
execute store result storage asa_matrix: Pos[1] double 0.001 run scoreboard players get #asa_move_pos_temp_y AsaMatrix
execute store result storage asa_matrix: Pos[2] double 0.001 run scoreboard players get #asa_move_pos_temp_z AsaMatrix
data modify entity @s Pos set from storage asa_matrix: Pos
execute at @s run tp @s ~ ~ ~ ~ ~