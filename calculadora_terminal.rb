class Calculadora

  attr_accessor :num1, :num2

  def initialize
    @num1 = 0
    @num2 = 0
  end



  def operações

  puts  "------------------------------------------------------"

  puts "escolha um  operador:"

  puts "1 - adição"

  puts "2 - subtração"

  puts "3 - multiplicação"

  puts  "4 - divisão"

  puts  "------------------------------------------------------"

  operador = gets.chomp.to_i



  if operador.between?(1, 4)
    valores
    case operador
    when 1
      puts  "------------------------------------------------------"
      resultado = adição(@num1, @num2)
      puts "Resultado da adição: #{resultado}"
      puts  "------------------------------------------------------"
    when 2
      puts  "------------------------------------------------------"
      resultado = subtração(@num1, @num2)
      puts "Resultado da subtração: #{resultado}"
      puts  "------------------------------------------------------"
    when 3
      puts  "------------------------------------------------------"
      resultado = multiplicação(@num1, @num2)
      puts "Resultado da multiplicação: #{resultado}"
      puts  "------------------------------------------------------"
    when 4
      if @num2 != 0
        puts  "------------------------------------------------------"
        resultado = divisão(@num1, @num2)
        puts "Resultado da divisão: #{resultado}"
        puts  "------------------------------------------------------"
      else
        puts  "------------------------------------------------------"
        puts "Divisão por zero não é permitida."
        puts  "------------------------------------------------------"
      end
    end
  else
    puts  "------------------------------------------------------"
    puts "Operador inválido"
    puts  "------------------------------------------------------"
  end
end

def valores
  puts  "------------------------------------------------------"
  puts "Digite o primeiro valor:"
  puts  "------------------------------------------------------"
  @num1 = gets.chomp.to_i
  puts  "------------------------------------------------------"
  puts "Digite o segundo valor:"
  puts  "------------------------------------------------------"
  @num2 = gets.chomp.to_i
end

def adição(num1, num2)
  num1 + num2
end

def subtração(num1, num2)
  num1 - num2
end

def divisão(num1, num2)
  num1 / num2
end

def multiplicação(num1, num2)
  num1 * num2
end
end

# Para utilizar a calculadora
calculadora = Calculadora.new
calculadora.operações
