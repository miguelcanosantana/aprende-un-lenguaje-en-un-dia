## Miembros del grupo

* Miguel Cano Santana
* Pablo Luis Molina Blanes

## Lenguaje de programación

![alt text](https://github.com/miguelcanosantana/aprende-un-lenguaje-en-un-dia/blob/master/Imagenes/julia.png)

[De estos posibles lenguajes](https://github.com/miguelcanosantana/aprende-un-lenguaje-en-un-dia/blob/master/lenguajes_de_programacion.pdf)

## Ejercicios

*[HolaMundo](https://github.com/miguelcanosantana/aprende-un-lenguaje-en-un-dia/blob/master/JL/HolaMundo.jl)
![Foto del Hola Mundo](https://github.com/miguelcanosantana/aprende-un-lenguaje-en-un-dia/blob/master/Imagenes/helloWorld.png)
```julia

print("¡Hola Mundo!")

```

*[Pirámide](https://github.com/miguelcanosantana/aprende-un-lenguaje-en-un-dia/blob/master/JL/Piramide.jl)
![Foto del ejercicio de pirámide](https://github.com/miguelcanosantana/aprende-un-lenguaje-en-un-dia/blob/master/Imagenes/pyramid.png)
```julia

print("Input a height for the pyramid\n")
heightOfPyramid = parse(Int, readline(stdin))
counterForHeight = heightOfPyramid
auxilliarCounterForHeight = 0
counterForElements = 0
elementsPerLine = 1
while counterForHeight > 0
    for auxilliarCounterForHeight = 0:counterForHeight
        print(" ")
    end
        for counterForElements = 1:elementsPerLine
            print("*")
        end
    println("")
    global elementsPerLine += 2
    global counterForHeight -= 1     
end

```

*[Arrays](https://github.com/miguelcanosantana/aprende-un-lenguaje-en-un-dia/blob/master/JL/Arrays.jl)
![Foto del ejercicio de Array](https://github.com/miguelcanosantana/aprende-un-lenguaje-en-un-dia/blob/master/Imagenes/arrays.png)
```julia

B = [rand(1:100), rand(1:100), rand(1:100), rand(1:100), rand(1:100), rand(1:100), rand(1:100), rand(1:100), rand(1:100),rand(1:100), rand(1:100), rand(1:100), rand(1:100), rand(1:100), rand(1:100), rand(1:100), rand(1:100), rand(1:100),rand(1:100), rand(1:100)]
A = Array{Int32}(undef, 20)
println(B)
primeCounter = 1
nonPrimeCounter = length(B)
currentNumber = 0
for counter = 1:length(B)
    global currentNumber = B[counter]-1
    if currentNumber == 0 ## So that it does not give '-1' for '1', which would give an error.
        currentNumber = 1
    end
    while ((B[counter] % currentNumber) != 0) && currentNumber > 1
        global currentNumber -= 1
    end
        if currentNumber > 1 && primeCounter <= nonPrimeCounter
            A[primeCounter] = B[counter]
            global primeCounter += 1
        elseif currentNumber <= 1 && primeCounter <= nonPrimeCounter
            A[nonPrimeCounter] = B[counter]
            global nonPrimeCounter -= 1
        end
        counter += 1
end
println(A)

```

## Presentación de Julia
[Enlace a Genial.ly](https://view.genial.ly/5dca6d9ba502df0f78ab1c3b/presentation-julia)

## Repositorio y Explicación de la tarea
[Enlace a Github ](https://github.com/LuisJoseSanchez/aprende-un-lenguaje-en-un-dia)

