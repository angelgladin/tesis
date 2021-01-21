# Hacer todos los problemas
    [ ] Haskell
    [ ] C++

# Cosas que debo explicar en otros capitulos

    [ ] Ver que es eso del point-free
    [ ] partial list
    [ ] undefined (importancia)
    [ ] transparencia referencial (ventajas de la programación funcional)
    [ ] orden superior (ventajas de la programación funcional)
    [ ] ver mas casos de porque es chida la programación funcional
    [ ] Continuar con lo de la failure function

# Herrameintas que use

    - Dara formato chido a haskell https://github.com/jaspervdj/stylish-haskell
    - Encontrar símbolos http://detexify.kirelabs.org/classify.html


% Definicinoes de haskell en Data.List
% https://hackage.haskell.org/package/base-4.14.0.0/docs/src/GHC.List.html#scanr
% https://en.wikipedia.org/wiki/Sides_of_an_equation
% https://www.overleaf.com/learn/latex/Code_Highlighting_with_minted
% https://hackage.haskell.org/package/base-4.14.0.0/docs/Data-List.html
% TODO: ver que es eso: Note that tails has the following strictness property: tails _|_ = _|_ : _|_
% representacion de cadenas en haskell
% explicar eso de funciones polimórficas https://wiki.haskell.org/Polymorphism#:~:text=A%20value%20is%20polymorphic%20if,polymorphism%20and%20ad%2Dhoc%20polymorphism.
% Investigar acerca del data refinement
% Argumenttar que onda con los folds y el valor "inicial"
% Investigar diferencias de MP con KMP
%https://stackoverflow.com/questions/12656160/what-are-the-main-differences-between-the-knuth-morris-pratt-and-boyer-moore-sea
%https://www.cs.helsinki.fi/u/tpkarkka/teach/14-15/SPA/lecture04.pdf
%https://studylib.net/doc/7580926/chapter-6-the-mp-and-kmp-algorithms--algorithms-based-upon
%http://www-igmF.univ-mlv.fr/~lecroq/articles/lir9511.pdf
%http://www-igm.univ-mlv.fr/~lecroq/string/node7.html#SECTION0070
%http://www-igm.univ-mlv.fr/~lecroq/string/node8.html
%https://en.wikipedia.org/wiki/Knuth%E2%80%93Morris%E2%80%93Pratt_algorithm




% Ver que grep usa KMP
%https://www.cs.princeton.edu/~rs/AlgsDS07/21PatternMatching.pdf
% https://github.com/j84guo/kmp/blob/master/src/filesystem.cpp

# Inlcuir la bibliografía que encontré de la función de error en haskell

    [ ] Leer el artículo
    [ ] Implementarla


# Entender bien lo de la función de prefijos para argumentar bien los problemas donde lo use
cormen

# Primero dar una motivación de I/O en haskell
Probablemente de aquí saque varias cosas de los libros que tengo

# Explicar I/O en Haskell

Empezar con la motivación del problema [Different Problem](https://open.kattis.com/problems/different).
Aquí es usar esto https://byorgey.wordpress.com/2019/04/24/competitive-programming-in-haskell-basic-setup/

Ver si me puede servir esto https://byorgey.wordpress.com/2019/05/22/competitive-programming-in-haskell-scanner/
https://github.com/blaisepascal/competative-haskell

Echarle un ojo a esto
https://github.com/glguy/advent2019

https://en.wikibooks.org/wiki/Haskell/Simple_input_and_output

https://www.haskell.org/arrows/
https://wiki.haskell.org/Arrow_tutorial#Kleisli_Arrows

# Explicar que es un juez
https://wiki.haskell.org/SPOJ

# Cosas de haskell que me podrían servir
https://www.youtube.com/watch?v=qhAl6yxzEwA
https://www.youtube.com/watch?v=zqNkKeJMCWM
https://github.com/chemouna/HaskellAlgorithms
https://github.com/rodrigosetti/haskell-spoj/blob/master/novice51.hs
https://github.com/cnphil/spoj-haskell
https://crypto.stanford.edu/~blynn/haskell/io.html
https://github.com/Josef-Vonasek/ACM
https://wiki.haskell.org/Tutorials/Programming_Haskell/String_IO
https://github.com/Vicfred/codeforces-haskell/tree/master/src
https://github.com/MaximilianoRom7/hackerrank-haskell
https://www.youtube.com/watch?v=ofUAlkYHFsI&list=PLguYJK7ydFE4aS8fq4D6DqjF6qsysxTnx&index=12&t=15s
https://ro-che.info/articles/2019-07-22-associativity-of-fmap


Explicar sobre runghc

# Resolución de problemas

1.  https://www.spoj.com/problems/FINDSR/
    - [x] C++
    - [x] Haskell

2.  https://www.spoj.com/problems/EPALIN/
    - [x] C++
    - [x] Haskell

3.  https://www.spoj.com/problems/PERIOD/
    - [x] C++
    - [ ] Haskell

4.  https://www.spoj.com/problems/NAJPF/
    - [x] C++
    - [ ] Haskell

5.  https://www.spoj.com/problems/NHAY/
    - [x] C++
    - [x] Haskell

6.  https://www.spoj.com/problems/FILRTEST/
    - [ ] C++
    - [ ] Haskell

7.  https://acm.timus.ru/problem.aspx?space=1&num=1423&locale=en
    - [x] C++
    - [-] Haskell (por algún motivo no funciona y no sé porqué)
    Necesito este código 309298CY

8. https://www.spoj.com/problems/TESSER/
    - [ ] C++
    - [ ] Haskell


# Explicar la entrada en haskell

Ver si cambio `fmap` con `<$>`

- `lines`,
- Para leer cada test case use una función auxiliar llamada `join`


Poner que sigo este estilo en cpp
// LLVM C++ style
// http://format.krzaq.cc/