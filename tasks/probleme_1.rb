#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


puts "entrez 5 valeurs numeriques, je vais les organiser!"
 valeur1 = gets.chomp.to_i
 valeur2 = gets.chomp.to_i
 valeur3 = gets.chomp.to_i
 valeur4 = gets.chomp.to_i
 valeur5 = gets.chomp.to_i
 matrice = [valeur1, valeur2, valeur3, valeur4, valeur5] 

valeurs_triees = matrice.sort

puts "Les valeurs triees de plus petit a plus grand sont.. :"
valeurs_triees.each do |valeur|
  puts valeur
end