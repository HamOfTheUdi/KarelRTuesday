#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

notes = Array.new(200) { rand(1..100) }


puts "donne moi un nombre entre 1 et 100 svp :"
valeur = gets.chomp.to_i


grand = notes.count { |note| note > valeur }
petit = notes.count { |note| note < valeur }
egale = notes.count { |note| note == valeur }


puts "Nombre de valeurs plus grand que #{valeur} : #{grand}"
puts "Nombre de valeurs plus petit que #{valeur} : #{petit}"
puts "nombre de valeurs egale a #{valeur} : #{egale}"