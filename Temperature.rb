class Temperature

  def initialize(n=40)
     @arr = []
     n.times { a = "#{rand((Time.now - 60*60*24*366)..Time.now).strftime("%d.%m")} #{rand(-40..50)}" ; @arr << a }
     
  end

  def avg_per_month
    hash = {}
    @arr.each do |el|
      date, t = el.split
      month = date.split(".").last
      hash[month] = [] unless hash.key?(month)
      hash[month] << t.to_i
      
      end
    hash1 = {}
    hash.each {|k, v| hash1[k] = avg(v).round 2}
    hash1
  end

  private
  def avg(r)
    r.inject{ |sum, el| sum + el }.to_f / r.size
  end
end

# Заполняет массив из 40 элементов (мы передали параметр по умолчанию n=40, если не укажем параметр при создании Temperature.new , то по умолчанию будет 40) случайными строками в виде даты и температуры воздуха "31.01 -7"; считает и выводит средню температуру за каждый месяц. В методе avg_per_month мы использовали приватный метод для вэлью. Мы разбили каждый строчный элемент и сделали из него массив с 0 и 1 индексом. Применили к 1 строке сначала, потом прошлись по каждой строке и записали в пустой хэш то,что нам нужно.
