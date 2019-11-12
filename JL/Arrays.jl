#Array de números aleatorios del 1 al 100
i = 1:100
B = [rand(i), rand(i), rand(i), rand(i), rand(i), rand(i), rand(i), rand(i), rand(i),rand(i), rand(i), rand(i), rand(i), rand(i), rand(i), rand(i), rand(i), rand(i),rand(i), rand(i)]

println(B)

A = Array{Int32}(undef, 20) #Array para ordenar números en él


primeCounter = 1
nonPrimeCounter = length(B)
currentNumber = 0

for counter = 1:length(B)
    global currentNumber = B[counter]-1

    if currentNumber == 0 # Si currentNumber = 1 este if prohibe que el resultado de 0, ya que daría error.
        currentNumber = 1
    end

    while ((B[counter] % currentNumber) != 0) && currentNumber > 1
        global currentNumber -= 1
    end

        if currentNumber > 1 && primeCounter <= nonPrimeCounter
            A[primeCounter] = B[counter]
            global primeCounter += 1

        elseif 
          
          currentNumber <= 1 && primeCounter <= nonPrimeCounter
            A[nonPrimeCounter] = B[counter]
            global nonPrimeCounter -= 1
        end

        counter += 1
end
println(A)
