# tesis

TODO


### Propuesta

Antes de presentar una tesis en la [Facultad de Ciencias](http://www.fciencias.unam.mx/) es 
necesario realizar una propuesta y ésta debe ser aprobada por el Comité Académico de la 
[Licenciatura en Ciencias de la Computación](http://www.fciencias.unam.mx/licenciatura/resumen/104) 
para hacer el registro de la tésis.

[**Aquí se puede ver la propuesta de esta tesis.**](propuesta/propuesta-tesis.pdf)


### Presentación

TODO


### Ambiente

* [LaTeX](https://www.latex-project.org/get/)
* [latexmk](https://mg.readthedocs.io/latexmk.html): `Latexmk, John Collins, 17 Jan. 2018. Version 4.55`
* [pygmentize](https://pygments.org/): `Pygments version 2.2.0, (c) 2006-2017 by Georg Brandl.`

> :warning: Como se hace uso del paquete de 
> [minted](https://www.overleaf.com/learn/latex/Code_Highlighting_with_minted) en LaTeX, es
> necesario tener instalado [Pygments](https://pygments.org/). Para ello se puede instalar con:
> ```bash
> $ pip install Pygments
> ```


### Compilar

Dentro del proyecto hay un [Makefile](https://www.gnu.org/software/make/manual/make.html) que tiene 
reglas para compilar y limpiar el proyecto.

* Compilarlo: Generará el `.pdf` de la tesis con el nombre `tesis.pdf`.
    ```bash
    $ make
    ```

* Limpiar: Se eliminarán los archivos generados por `minted` (lo que hará que la próxima vez que 
  se compile sea **más lento**) y el `.pdf` generado.
    ```bash
    $ make deep-clean
    ```

> :exclamation: **Como yo lo fui trabajando** fue usando el editor 
> [Visual Studio Code](https://code.visualstudio.com/) con la extensión 
> [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) 
> (la cual creo que es la manera más sencilla y útil) ya que no lo tengo que estar compilando de 
> manera manual con `make`.
>
> Algunas veces al usar LaTeX Workshop hay problemas al utilizar `minted` pero
> [aquí](https://wusun.name/blog/2019-01-17-minted-vscode/) explica cómo resolverlo.

### Estilo del código

* LaTeX
    * Ruler: 110
    * [Formato a BibTeX](https://flamingtempura.github.io/bibtex-tidy/)
* Haskell
    * Code pritifier: [stylish-haskell](https://github.com/haskell/stylish-haskell)
* C++
    * [LLVM Coding Standards](https://llvm.org/docs/CodingStandards.html)
* Archivos
    * Convensión de nombres: [Kebab Case](https://en.wikipedia.org/wiki/Naming_convention_(programming)#Multiple-word_identifiers)
    * _Character Encoding_: `UTF-8`
    * [_Line Ending_](https://stackoverflow.com/questions/1552749/difference-between-cr-lf-lf-and-cr-line-break-types): `LF`

### Citar

Si te es útil mi tesis y quieres citarla, lo puedes hacer con 
[BibTeX](https://www.overleaf.com/learn/latex/bibliography_management_with_bibtex):

```bibtex
@misc{kmp-func-analisis-gladin,
	title        = {Análisis del algoritmo Knuth-Morris-Pratt con énfasis en la programación funcional},
	author       = {Ángel Iván Gladín García},
	year         = 2021,
	journal      = {GitHub repository},
	publisher    = {GitHub},
	howpublished = {\url{https://github.com/angelgladin/tesis}}
}
```
