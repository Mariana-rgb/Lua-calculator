-- script.lua

-- Função para calcular a soma
function calcularSoma(num1, num2)
    return num1 + num2
end

-- Função para calcular a subtração
function calcularSubtracao(num1, num2)
    return num1 - num2
end

-- Função para calcular a multiplicação
function calcularMultiplicacao(num1, num2)
    return num1 * num2
end

-- Função para calcular a divisão
function calcularDivisao(num1, num2)
    if num2 == 0 then
        return "Erro: Divisão por zero!"
    else
        return num1 / num2
    end
end

-- Função para calcular a média de dois números
function calcularMedia(num1, num2)
    return calcularSoma(num1, num2) / 2
end

-- Função para somar todos os elementos de um array
function somarArray(arr)
    local soma = 0
    for i = 1, #arr do
        soma = soma + arr[i]
    end
    return soma
end

-- Função para calcular a média de elementos de um array
function mediaArray(arr)
    local soma = somarArray(arr)
    return soma / #arr
end

-- Função para encontrar o maior número em um array
function maiorArray(arr)
    local maior = arr[1]
    for i = 2, #arr do
        if arr[i] > maior then
            maior = arr[i]
        end
    end
    return maior
end

-- Função para encontrar o menor número em um array
function menorArray(arr)
    local menor = arr[1]
    for i = 2, #arr do
        if arr[i] < menor then
            menor = arr[i]
        end
    end
    return menor
end

-- Função para calcular a potência de um número
function calcularPotencia(base, expoente)
    return base ^ expoente
end

-- Função para calcular o fatorial de um número
function calcularFatorial(n)
    if n < 0 then
        return "Erro: Número negativo!"
    elseif n == 0 then
        return 1
    else
        local fatorial = 1
        for i = 1, n do
            fatorial = fatorial * i
        end
        return fatorial
    end
end

-- Função para calcular a sequência de Fibonacci
function fibonacci(n)
    if n < 0 then
        return "Erro: Número negativo!"
    elseif n == 0 then
        return 0
    elseif n == 1 then
        return 1
    else
        return fibonacci(n - 1) + fibonacci(n - 2)
    end
end

-- Função para calcular o máximo divisor comum (MDC)
function calcularMDC(a, b)
    while b ~= 0 do
        local temp = b
        b = a % b
        a = temp
    end
    return a
end

-- Função para calcular o mínimo múltiplo comum (MMC)
function calcularMMC(a, b)
    return (a * b) / calcularMDC(a, b)
end

-- Funções para manipulação de strings
function contarCaracteres(str)
    return #str
end

function inverterString(str)
    return str:reverse()
end

function converterParaMaiusculas(str)
    return str:upper()
end

function converterParaMinusculas(str)
    return str:lower()
end

-- Exemplo de uso das funções
local num1 = 5
local num2 = 10
local arr = {1, 2, 3, 4, 5}

print("Soma: " .. calcularSoma(num1, num2))
print("Subtração: " .. calcularSubtracao(num1, num2))
print("Multiplicação: " .. calcularMultiplicacao(num1, num2))
print("Divisão: " .. calcularDivisao(num1, num2))
print("Média: " .. calcularMedia(num1, num2))
print("Soma do array: " .. somarArray(arr))
print("Média do array: " .. mediaArray(arr))
print("Maior do array: " .. maiorArray(arr))
print("Menor do array: " .. menorArray(arr))
print("Potência: " .. calcularPotencia(num1, 2))
print("Fatorial de 5: " .. calcularFatorial(5))
print("Fibonacci de 7: " .. fibonacci(7))
print("MDC de 48 e 18: " .. calcularMDC(48, 18))
print("MMC de 4 e 6: " .. calcularMMC(4, 6))
print("Contar caracteres: " .. contarCaracteres("Olá, mundo!"))
print("Inverter string: " .. inverterString("Lua"))
print("Converter para maiúsculas: " .. converterParaMaiusculas("lua"))
print("Converter para minúsculas: " .. converterParaMinusculas("LUA"))
