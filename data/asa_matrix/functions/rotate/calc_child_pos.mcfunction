tellraw @a [{"text":"child_x : "},{"score":{"name":"#asa_child_pos_x","objective":"AsaMatrix"}},{"text":"\nchild_y : "},{"score":{"name":"#asa_child_pos_y","objective":"AsaMatrix"}},{"text":"\nchild_z : "},{"score":{"name":"#asa_child_pos_z","objective":"AsaMatrix"}}]

scoreboard players operation #asa_child_pos_x AsaMatrix += #asa_parent_pos_x AsaMatrix
scoreboard players operation #asa_child_pos_y AsaMatrix += #asa_parent_pos_y AsaMatrix
scoreboard players operation #asa_child_pos_z AsaMatrix += #asa_parent_pos_z AsaMatrix