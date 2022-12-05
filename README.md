# KBS

## Hands On 2: Monkey and Bananas

1. Analizar y comprender el problema de Monkey and banana para intentar construir un conjunto de reglas en CLIPS que permitan resolverlo.

2. No se requieren evidencias por el momento.

3. SE COMPARTEN UN PAR DE ENLACES PARA LA DESCRIPCIÓN DEL PROBLEMA Y LA EXPLICACIÓN DEL MISMO

https://www.youtube.com/watch?v=CbG1fiMKUT0

https://www.wikiwand.com/en/Monkey_and_banana_problem

1- (defrule r1 (monkey near door) (monkey farfrom window) => (printout  t "monkey goes to the box" crlf) (assert (monkey near box)) (retract 1) (retract 2))

2- (defrule r2 (monkey near box) (monkey hands-free) => (printout t "mokey took the box" crlf) (retract 4) (assert (monkey hands-busy)) (assert (monkey grabbed-box)))


3- (defrule r3 (monkey near box) (monkey hands-busy) (monkey grabbed-box) => (printout t "monkey goes below the banana" crlf) (assert (monkey below-banana)))


- El objetivo es partir de esta R3 para concluir el problema, esto es, que el mono consuma la banana.
- Subir su código fuente a Github. Se sugiere crear un carpeta para la Materia y una subcarpeta por cada Hands-on 2 que requiera subir evidencias.
- Compartirme, por favor, como evidencia el url a su carpeta (pública).

## Hands-on 3: Embedding CLIPS in Java

Empleando la API CLIPSJNI, crear tres clases, en Java, para evaluar (ejecutar)  -a través de las mismas- los scripts ubicados en los ficheros (carpetas) de Github:
agent-repo/clips/person
agent-repo/clips/prodcust
agent-repo/clips//market
(Link a Github en Google Classroom)

## Hands-on 4 y 5: Knowledge-based Agents

Implementar un Agente Emisor y un Agente Receptor: 
El Agente Emisor enviará al Receptor como hechos, síntomas (e.g., (sintoma ) (sintoma b) …),  con la sintaxis y semántica de CLIPS.
El Agente Receptor tendrá una Base de Conocimientos, predefinida, con un conjunto de reglas condición-acción para diagnosticar cinco enfermedades  (e.g., (defrule gripe (sintoma) (sintoma b) (sintoma c) => (printout t “el paciente tiene gripe” crlf))).
Al recibir, el Agente Receptor, los síntomas del Emisor, utilizará CLIPS para diagnosticar la enfermedad.
El diagnóstico se imprimirá en terminal; por el momento, no se regresa al Emisor. 

## Hands-on 6 and Challenge 3: Knowledge-based Agents

Basados en el Hands-on 5, implementar un Sistema Multiagentes para soportar Diagnóstico Distribuido de Patologías.
