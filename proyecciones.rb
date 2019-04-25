# Crear el programa proyecciones.rb además tendremos un archivo con las proyecciones de venta de cada mes del próximo año. Este archivo debe llamarse ventas_base.db y estar en el misma carpeta de trabajo que el código.

ventas_base = open('ventas_base.db').read.split(",") # se ocupa read.split para crear arreglo por separando los elementos


# cambiar a "".to_f"

ventas_decimal = ventas_base.map{|x| x.to_f}
puts ventas_decimal
# Las ventas totales dado que en la primera mitad del año se vende un 10% más.

# no se hizo en 1 linea con {} por que hay 2 condiciones, y se coloca con "do" y "end"
ventas_10 = ventas_decimal.map_with_index do |x , i|  # "i" es la posicion del elemento
  if i <= 5
     x*1.1
  else
     x
  end
     end

venta_anual_10 = ventas_10.sum

puts ventas_10
puts venta_anual_10

# Las ventas totales dado que en la segunda mitad del año se vende un 20% más.
ventas_20 = ventas_decimal.map_with_index do |x , i|  # "i" es la posicion del elemento
  if i > 5
     x*1.2
  else
     x
  end
     end

venta_anual_20 = ventas_20.sum

puts ventas_20
puts venta_anual_20

salida = open('resultados.data','w')

salida.close
