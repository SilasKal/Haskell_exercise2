--3b)

switch_elem :: [a] -> [a]
switch_elem (x:y:z:zs) = y:z:x:[]
switch_elem lst = lst

swap_list :: [a] -> [[a]]
swap_list (x:y:z:zs) = switch_elem (x:y:z:zs) : swap_list (zs)
swap_list lst =  lst : []
