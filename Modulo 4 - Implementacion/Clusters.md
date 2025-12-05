# Que es un cluster?



Grupo de celdas estandar que durante la etapa de placemente se ponen en cercania las unas de las otras, la localizacion de un cluster es indefinida hasta que todas las celdas estandar se han puesto, esta opcion es usada primaritariamente para controlar la cercania de compomnentes con requisitos de timing criticos durante la etapa de placement. Se asemeja estructura modular en silicio.



# Que son los clusters desde la perspectiva de CTS

La mayoria de los algoritmos de CTS primero identifican los registros hoja o puntos de sink creando un cluster virtual.

Clustering virtual se logra identificando la locacion de las celdas hoja que estan en cercania la una de la otra
si hay celdas hoja que estan lejos de cualquier cluster, estas se acercaran al cluster mas cercano.

La cantidad de celdas hoja por cluster es definida por el usuario, una vez que los cluster y sus locaciones empiezan la inserciones de buffers de manera que el delay de propagacion de reloj es igual para cada cluster y el clock skew dentro de cada cluster se minimiza.

Mientras mas pequeño los clusters menor es el skew pero mas etapas de buffering seran necesarias para el reloj. Esto tiende a aumentar el delay de propagacion del reloj.


