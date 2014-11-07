practico-3
==========

Resolución del Práctico 3 - Menúes

Ejercicios
==========
* Idear una estructura de clases para separar las diferentes escenas del Juego (menu principal, ayuda y el juego).

* Crear un menú principal con los botones de “Jugar” y “Ayuda”

* Crear la pantalla de Ayuda

* Implementar la navegación entre escenas de la sig. manera:

#####MenuScene:
    * Jugar => GameScene
    * Ayuda => HelpScene

#####HelpScene:
    * Back => MenuScene

#####GameScene:
    * Back => MenuScene

* Mejorar la transición entre escenas utilizando animaciones (probar la librería actuate).
