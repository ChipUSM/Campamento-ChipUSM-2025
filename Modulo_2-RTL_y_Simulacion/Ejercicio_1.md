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

