# Crear un método llamado nota_mas_alta dentro del archivo calculo_notas.rb que reciba un arreglo con el nombre y notas de un alumno y devuelva la nota mas alta.
#Ejemplos:
# nota_mas_alta(data[0]) => 9
# nota_mas_alta(data[1]) => 8

calculo_notas = open('notas.data').read.split(",") # se ocupa read.split para crear arreglo por separando los elementos
