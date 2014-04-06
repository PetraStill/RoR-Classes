class User
  attr_accessor :first_name, :last_name, :year, :country, :city, :street, :house_number
  def initialize(options)
    self.first_name = options.fetch(:first_name)
    self.last_name = options.fetch(:last_name)
    self.year = options.fetch(:year)
    self.country = options.fetch(:country)
    self.city = options.fetch(:city)
    self.street = options.fetch(:street)
    self.house_number = options.fetch(:house_number)
  end

  def full_adress
    [first_name, last_name, year, country, city, street, house_number].join('.')
  end

  def full_name
    [first_name, last_name].join('.')
  end 
end

@user = User.new(first_name: "max", last_name: "suhak", year: "21", country: "ua", city: "chercassy", street: "bl", house_number: "341")

puts @user.full_name
puts @user.full_adress