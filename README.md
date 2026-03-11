[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/Px-uYaj2)
[![Open in Visual Studio Code](https://classroom.github.com/assets/open-in-vscode-2e0aaae1b6195c2367325f4f02e2d04e9abb55f0b24a779b69b11b9e10269abc.svg)](https://classroom.github.com/online_ide?assignment_repo_id=22872131&assignment_repo_type=AssignmentRepo)
# Lab02 - Sumador/Restador de 4 bits

# Integrantes

[Johan Bulding](https://github.com/Johan1234554321)

[Sebastian Vela](https://github.com/digital-ECCI/lab01-arquitectura-g1-e9/pull/1)

[Carlos Castañeda](https://github.com/Carloscastaneda269)


# Informe

Indice:

1. [Documentación](#documentación-de-los-circuitos-implementados-implementado)
2. [Simulaciones](#simulaciones)
3. [Evidencias de implementación](#evidencias-de-implementación)
4. [Preguntas](#preguntas)
5. [Conclusiones](#conclusiones)
6. [Referencias](#referencias)

## Documentación del diseño implementado

### 1. Sumador/Restador

#### 1.1 Descripción

[El diseño implementa un sumador/restador de 4 bits basado en módulos menores de suma de un bit (denominado suma_min) para construir un sumador de 4 bits.

El diseño utiliza dos instancias de 4 bits de suma (SUMA y RESTA) para obtener los resultados de suma y resta por separado, y luego selecciona cuál usar mediante multiplexación a nivel de código.]



#### 1.2 Diagramas


## Simulaciones 

### 1. Simulación del sumador/restador

#### 1.1 Descripción

El circuito implementa un sumador/restador de 4 bits en FPGA, utilizando como base sumadores completos de 1 bit conectados en cascada. La selección entre suma o resta se controla con la señal sel, que modifica las entradas de B por medio de compuertas XOR para generar el complemento a dos en caso de resta.

En Quartus se definieron las asignaciones de pines para las entradas A[3:0], B[3:0], la señal de control sel y las salidas resultado[3:0], co_final y signo. El RTL Viewer muestra la interconexión de los módulos y las compuertas necesarias para el control de la operación.

Las simulaciones en GTKWave confirman que el diseño responde correctamente: cuando sel=0 realiza la suma y cuando sel=1 efectúa la resta, mostrando los valores binarios esperados en la salida.

Finalmente, el informe de compilación indica que el uso de recursos en la FPGA MAX 10 es muy bajo (15 celdas lógicas de 49.760 disponibles, menos del 1 %), lo que demuestra que el diseño es eficiente en hardware.


#### 1.2 Diagrama


## Evidencias de implementación


## Conclusiones

El circuito de sumador/restador de 4 bits se implementó correctamente utilizando módulos más pequeños. [2](#ref2)

El diseño es eficiente en recursos, pues utiliza menos del 1% de la FPGA. [1](#ref1)

La simulación confirmó el funcionamiento esperado en operaciones de suma y resta. [3](#ref3)

La práctica permitió afianzar conocimientos en diseño modular en Verilog y su implementación en hardware.

## Referencias

[1](#ref1) Intel, Quartus Prime Lite Edition User Guide, 2017.

[2](#ref2) M. Morris Mano, Diseño Digital, Pearson, 2018.

[3](#ref3) Documentación oficial de Verilog: https://www.chipverify.com/verilog/verilog-introduction