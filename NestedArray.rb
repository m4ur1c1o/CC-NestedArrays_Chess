# TABLERO DE AJEDREZ HECHO A MANO
tablero = [["TN","CN","AN","RN","RN","AN","CN","TN"],
		   ["PN","PN","PN","PN","PN","PN","PN","PN"],
		   ["  ","  ","  ","  ","  ","  ","  ","  "],
		   ["  ","  ","  ","  ","  ","  ","  ","  "],
		   ["  ","  ","  ","  ","  ","  ","  ","  "],
		   ["  ","  ","  ","  ","  ","  ","  ","  "],
		   ["PB","PB","PB","PB","PB","PB","PB","PB"],
		   ["TB","CB","AB","RB","RB","AB","CB","TB"]
		  ]


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
def crea_tablero(array)
	array.each do |x|
		puts "\n-----------------------------------------"
		print "| "
		x.each do |y|
			# puts y

			print "#{y} | "
		end
	end
	puts "\n-----------------------------------------"
end

crea_tablero(tablero)