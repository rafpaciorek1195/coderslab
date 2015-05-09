TAX = 0.23
def policz_podatek(a)
  a += a * TAX
end
for 
puts "podaj cene netto"
netto = gets.chomp.to_f
puts "kwota brutto to: #{policz_podatek(netto)}"