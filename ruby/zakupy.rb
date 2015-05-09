@koszyk = Array.new

def dodaj_do_koszyka(a)

  @koszyk.push a.to_s
end

def wyswietl_koszyk
  @koszyk.each do |i|
    print "#{i} "
  end
end

5.times do 
  produkt = gets.chomp
  dodaj_do_koszyka(produkt)
end
wyswietl_koszyk





