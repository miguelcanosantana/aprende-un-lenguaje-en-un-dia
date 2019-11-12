
    print("Introduce la altura de la pirámide: ")

    #Lee la altura de la Pirámide por teclado
    alturaPiramide = parse(Int, readline(stdin))

    altura = alturaPiramide

    print("Introduce el carácter de relleno: ")

    #Carácter con el que se va a formar la pirámide
    caracter = readline(stdin)

    #Para guardar el valor original de la altura
    auxilliarAltura = 0

    #Cuenta los elementos por cada línea
    contadorElementosLinea = 0

    #La cantidad de elementos que hay por línea
    elementosPorLinea = 1

    #Pintado de la pirámide
    while altura > 0

        for auxilliarAltura = 0:altura
            print(" ")           
        end

            for contadorElementosLinea = 1:elementosPorLinea
                print(caracter)
            end

        println("")
        global elementosPorLinea += 2
        global altura -= 1     
    end







