# Simulacion con Verilator


Estando en la carpeta croc seguir los siguientes pasos:

```
sh > git checkout ex01
sh > cd part1/adder8
```

Cuantos ciclos necesita el diseño antes de reiniciarse?

Luego para correr la simulacion:

```
sh > verilator /*source files' and testbench's name*/ --top /*top module name*/ --binary -Wno-fatal --trace --trace-structs
sh > ./obj_dir/Vtb_adder8
```

La simulacion corre de manera adecuada? En caso de que no, que produce errores?


# Solucion  : (en un commit posterior la borrare xdd)
 


La simulacion si se ejecuto bien tendra errores asociados a overflow.
