def yes_keys(a)
   b = a.keys.select {|k| k.to_s.start_with?("yes")}
   b.size
end

# Это просто метод. Он не связан ни с каким классом. Работает сам по себе. Изначально думалось для hash. Решила просто создать доку с отдельным методом. 
# hash1 = {'y' => 23, 'b' => 'travel', 'dayyes' => 34, 5 => '234', :yesss => :fg, tryes: 30, keyyes: 'some value', 'yesterday1' => 34, 'yesteryear' => 2014}
# load 'Keys.rb'
# => true 
# yes_keys(hash1)
# => 3 
# Можно также a.keys.select {|k| k.to_s.start_with?("yes")}.size ))))


