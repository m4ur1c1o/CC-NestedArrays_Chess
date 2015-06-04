# # TABLERO DE AJEDREZ HECHO A MANO
# tablero = [["TN","CN","AN","RN","RN","AN","CN","TN"],
# 		   ["PN","PN","PN","PN","PN","PN","PN","PN"],
# 		   ["  ","  ","  ","  ","  ","  ","  ","  "],
# 		   ["  ","  ","  ","  ","  ","  ","  ","  "],
# 		   ["  ","  ","  ","  ","  ","  ","  ","  "],
# 		   ["  ","  ","  ","  ","  ","  ","  ","  "],
# 		   ["PB","PB","PB","PB","PB","PB","PB","PB"],
# 		   ["TB","CB","AB","RB","RB","AB","CB","TB"]
# # 		  ]

# tablero = [ ["X", "X", "O"],
#          ["O", "X", "O"],
#          ["O", "O", "X"] ]

# # puts "-------------------------------------------------------------------------"
# # puts "|" + tablero[0][0] + "|" + tablero[0][1] + "|" + tablero[0][0] + "|" + tablero[0][1] + "|" + tablero[0][0] + "|" + tablero[0][1] + "|" + tablero[0][0] + "|" + tablero[0][1] + "|"

# tablero.each do |x|
# 	puts "\n-----------------------------------------------"
# 	print "|"
# 	x.each do |y|
# 		# puts y
# 		print " #{y} | "
# 	end
	
# end
# puts "\n-----------------------------------------------"

# METODO QUE RECIBE UN ARRAY Y REGRESA UN TABLERO DE AJEDREZ
# def crea_tablero(array)
# 	array.each do |x|
# 		puts "\n-----------------------------------------"
# 		print "| "
# 		x.each do |y|
# 			# puts y

# 			print "#{y} | "
# 		end
# 	end
# 	puts "\n-----------------------------------------"
# end

# crea_tablero(tablero)


# def ajedrez
# 	t = tablero.length
# 	t.times {
# 		puts "\n"
# 		column = []
# 		tablero.each do |x|
# 			# print x[0][1] = "2"
# 			print column 
# 		end
# 	}

# end


# ajedrez(tablero)

def crea_tablero_ajedrez
	tablero = Array.new(8, [])
	fila_vacia = Array.new(8, "  ")
	peon = Array.new(8, "P")
	fichas = ["T","C","A","R","R","A","C","T"]
	# second_array = Array.new(fichas)
	blanco = "B"
	negro = "N"
	fila_0 = []
	fila_1 = []
	fila_6 = []
	fila_7 = []


	tablero.each_with_index do |item, index|
		# p tablero
		case index
		when 0
			# puts "Entre a 0"
			fichas.each do |ficha|
				fila_0 << ficha + negro
				# puts "esto es tablero index"
				# puts tablero[index]
				tablero[index] = fila_0
			end
				# p tablero[index]
				# p tablero
		when 1
				peon.each do |ficha|
				fila_1 << ficha + negro
				tablero[index] = fila_1
				end
				# p tablero
		when (2..5)
			# puts "entre a vacias"
			tablero[index] = fila_vacia
			# p fila_vacia.class
			# p tablero
		when 6
			peon.each do |ficha|
				fila_6 << ficha + blanco
				tablero[index] = fila_6
			end
			# p tablero
		when 7
			# puts "Entre a 7"
			fichas.each do |ficha|
				fila_7 << ficha + blanco
				# puts "esto es tablero index"
				# puts tablero[index]
				tablero[index] = fila_7
			end
			# p tablero
		end
	end
	puts tablero.map { |x| x.join }
end

	# fichas.each do |ficha|
	# 	ficha_n = ficha + colores[1]
	# 	tablero[0][0] << ficha_n
	# end

	# 8.times { fila_2 << peon + colores[1] }

	# 8.times { fila_7 << peon + colores[0] }

	# fichas.each do |ficha|
	# 	ficha_n = ficha + colores[0]
	# 	fila_8 << ficha_n
	# end

crea_tablero_ajedrez
