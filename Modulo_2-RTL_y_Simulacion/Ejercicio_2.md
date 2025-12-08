# Simulacion con Verilator


En la carpeta Ejercicio_2 encontraran una simulacion de un Adder de 8 Bits. ¿Que archivos componen la simulacion?

Una vez idetifiquen los componentes de la simulacion, indagen en el testbench:

¿Cuantos ciclos necesita el diseño para terminar la simulacion?



Luego para correr la simulacion:

```
sh > verilator /*Archivos fuente y testbench*/ --top /*Nombre del modulo top*/ --binary -Wno-fatal --trace --trace-structs
sh > ./obj_dir/Vtb_adder8
```

La simulacion corre de manera adecuada? En caso de que no, que produce errores?

# Solucion  : (en un commit posterior la borrare xdd)
 


La simulacion si se ejecuto bien tendra errores asociados a overflow.
