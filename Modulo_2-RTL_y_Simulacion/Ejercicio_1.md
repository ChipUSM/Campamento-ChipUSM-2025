# Ejercicio 1 : Cantidad de ciclos

Se tiene el siguiente codigo en C: 

---

```c
int loop(int n)
{
    int i;
    int s = 0;

    for (i = 0; i < n; i++) {
        s++;
    }

    return s;
}
```

Pase esta función a su equivalente en Assembly y calcule la cantidad de ciclos que tomaria a un procesador risc-v ejecutarla.


# Solucion  : (en un commit posterior la borrare xdd)

Se tiene el siguiente codigo en assembly:

```
    # a0 = n (input), a0 = s (output)
    addi t1, x0, 0      # s = 0
    addi t0, x0, 0      # i = 0

loop:
    bge  t0, a0, end    # if (i >= n) go to end
    addi t1, t1, 1      # s++
    addi t0, t0, 1      # i++
    j    loop           # go to loop

end:
    mv   a0, t1         # return value in a0
    ret
```



Se tiene que son 2 ciclos para la inicializacion de los valores, 4 por cada instancia del bucle, 1 por chequear instruccion y 2 en la salida hacen un total de 13