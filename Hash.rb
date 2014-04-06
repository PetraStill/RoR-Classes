class Hash

  def keys_symbols
    result = {}
    self.each do |k, v|
      key = k.is_a?(String) ? k.to_sym : k
      val = case
	when v.is_a?(Array) 
	  v.map { |i| i.is_a?(Hash) ? i.keys_symbols : i } 
	when v.is_a?(Hash)
          v.keys_symbols
	end
      result[key] = val
    end
    result
  end
 
  def yes_keys
   a = self.keys.select {|k| k.to_s.start_with?("yes")}
   a.size
  end
end


# Рекурсивный метод keys_symbols, который переводит стринговые, или другие ключи в символьные ключи.
# Метод yes_keys выводит все ключи, которые начинаются на 'yes'. Мы выбираем .селект только ключи и проходим по ним; каждый ключ переделываем в строку и спрашиваем, начинается ли она на 'yes'. Можно также написать self.keys.select {|k| k.to_s.start_with?("yes")}.size Но, чтобы код не был громоздкий, вводим переменную.
