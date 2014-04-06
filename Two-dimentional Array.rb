class Two_dim_arr

  def initialize(x=4, y=4)
    @array = Array.new(x){ Array.new(y){rand(-10..10)} }
  end

  def calc
   @array.flatten.find_all{ |i| i<0 }.inject{|s,a|s=s+a}
  end

  def calc_each
   a = 0
   @array.flatten.each { |i| a = a+i if i<0 }
   a
  end

end


# Метод заполняет случайными числами от -10 до 10 двумерный массив 4х4 элемента(представление матрицы в руби). Класс Matrix использовать нельзя.
