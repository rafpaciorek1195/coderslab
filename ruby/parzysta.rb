liczba = (1..100)


def parzysta(l)
  l.each do |l|
    l.even? ? puts("Liczba #{l} jest parzysta") : puts("Liczba #{l} jest nieparzysta")
  end
end


parzysta(liczba)