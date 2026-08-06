

# Proyectos de VHDL (repositorio de aprendizaje)

Una colección de **laboratorios de VHDL, mini proyectos y código de referencia**.
Este repositorio está diseñado para ser práctico: abre una carpeta, ejecuta una simulación, aprende un concepto.

## A quién va dirigido
- Estudiantes que cursan una materia de diseño digital / HDL
- Personas que aprenden de forma autodidacta y practican VHDL (lógica combinacional, lógica secuencial, testbenches, paquetes)
- Cualquiera que busque ejemplos pequeños y legibles

## Cadena de herramientas recomendada
### Opción A (recomendada): GHDL (código abierto)
- Instala **GHDL**
- Opcional: **GTKWave** para visualizar formas de onda

### Opción B: ModelSim / Questa
Si tu universidad o lugar de trabajo lo utiliza, también puedes ejecutar la mayoría de los diseños allí.

## Inicio rápido (GHDL)
Si eres nuevo, comienza aquí:
- **docs/getting-started.md**
- **docs/learning-path.md** (la escalera)

1) Instala las herramientas
- Ubuntu/Debian:
  - `sudo apt-get install ghdl gtkwave`

2) Elige un proyecto que tenga un testbench
Ejemplo:
- `Projects/alu-registerfile/` contiene `tb_*.vhd`

3) Simula un proyecto (ejemplo)
```bash
cd Projects/alu-registerfile
# Analizar
ghdl -a --std=08 pkg.vhd alu.vhd lab2_part2.vhd tb_lab2_part2.vhd
# Elaborar y ejecutar
ghdl -e --std=08 tb_lab2_part2
ghdl -r --std=08 tb_lab2_part2 --vcd=wave.vcd
# Visualizar
gtkwave wave.vcd
```

## Mapa del repositorio
- **Projects/** — el mejor lugar para comenzar (más consistente)
- **LABS/** — ejercicios y entregas de laboratorio
- **Codes to learn from/** — material antiguo/soluciones de exámenes (menos consistente)
- **scripts/** — scripts de ayuda
- **docs/** — documentación para principiantes y ayuda de navegación

## Convenciones (sencillas)
- La mayor parte del VHDL aquí apunta a **VHDL-2008** (`--std=08`).
- Si agregas código nuevo:
  - Prefiere nombres claros para entidades/arquitecturas
  - Incluye un comentario breve en la parte superior: propósito + cómo ejecutarlo
  - Si es posible, incluye un testbench `tb_*.vhd`

## Contribuciones
Las PRs son bienvenidas — incluso correcciones pequeñas como errores tipográficos, READMEs más claros o agregar un testbench.
Consulta **CONTRIBUTING.md**.

## Licencia
MIT (consulta **LICENSE**).
