require "/Users/kirillgavris/Desktop/Library/extentions/validations"

class Reader
    include Validations

    attr_reader :name, :email, :city, :street, :house

    def initialize(name, email, city, street, house)
        check_emptiness(name, email, city, street, house)
        @name = name
        @email = email
        @city = city
        @street = street
        @house = house
    end

    def to_s
        "#{name}'s email is #{email}. He lives in #{city} at #{street} in house ##{house}"
    end
end
