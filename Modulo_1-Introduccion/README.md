# Instalado de herramientas

## Windows

Instalar:

- Windows SubSystem for Linux: En caso de ya tener WSL es importante chequear que la version sea mayor o igual a la 2.0.
```bash
wsl --install
wsl --update
```
- [Docker Desktop](https://docs.docker.com/desktop/setup/install/windows-install/)
- [Git Bash](https://git-scm.com/install/windows/)
- [Xlaunch](https://vcxsrv.com/)
- [Visual studio Code ](https://code.visualstudio.com)
- Dev Containers (Extension de VSC)


## Linux

Instalar:


- [Docker Engine](https://docs.docker.com/engine/install)
- [Visual studio Code ](https://code.visualstudio.com)
- Dev Containers (Extension de VSC)
- Git:
```bash
sudo apt-get install git-all
```
## Armado de la imagen

En una terminal o cmd:
```bash
git clone https://github.com/ChipUSM/Campamento-ChipUSM-2025
cd .\Campamento-ChipUSM-2025\
git checkout Track-Digital
```


Luego abrir Vscode y apretar Ctrl+k seguido de Ctrl+o y dirigirse a la carpeta del campamento.

Usuarios de Windows deben abrir Docker Desktop

Una vez dentro apretar Ctrl+p y seleccionar “Reopen in Container”
Aqui se descargara la imagen.
Una vez finalizado la descarga de la imagen el contenedor inmediatamente intentará descargar el PDK.
Esto puede tomar un tiempo.




# Smoke test

Para poder verificar que el ambiente se instalo sin problemas, se corre el siguiente comando:

```
>librelane --manual-pdk --smoke-test
```

Este comando correra un diseño de ejemplo y lo hara pasar por las distintas etapas del flujo RTL-to-GDS generando un circuito integrado diseñado en la version de la tecnología IHP que se encuentra en el repositorio.