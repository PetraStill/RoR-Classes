# Найти количество ключей, значение которых начинается на 'yes'

hash = {'y' => 23, 'b' => 'travel', 'yesterday' => 34, 5 => '234', :yesss => :fg, try: 30, key: 'some value', 'yesterday1' => 34, 'yesteryear' => 2014}

 hash.keys.select {|k| k.to_s.start_with?("yes")}.size
 => 4 

# Это проходит и по ключам и значениям

hash.to_a.flatten.select {|el| el.to_s.start_with?('yes')}
 => ["yesterday", :yesss, "yesterday1", "yesteryear"] 

 hash.to_a.flatten.select {|el| el.to_s.start_with?('yes')}.size
 => 4 

hash.to_a.flatten.map {|el| el.to_s.start_with?('yes')}
 => [false, false, false, false, true, false, false, false, true, false, false, false, false, false, true, false, true, false] 


# А это включает. Т.е., если будут 'talkyes', :mapyes, то оно тоже выведет и ключ и значение такого ключа в двумерном массиве

hash.to_a.find_all{ |el| el.to_s.include? "yes" }
 => [["yesterday", 34], [:yesss, :fg], ["yesterday1", 34], ["yesteryear", 2014]] 

hash1
 => {"y"=>23, "b"=>"travel", "dayyes"=>34, 5=>"234", :yesss=>:fg, :tryes=>30, :keyyes=>"some value", "yesterday1"=>34, "yesteryear"=>2014} 

hash1.to_a.find_all{ |el| el.to_s.include? "yes" }
 => [["dayyes", 34], [:yesss, :fg], [:tryes, 30], [:keyyes, "some value"], ["yesterday1", 34], ["yesteryear", 2014]] 


