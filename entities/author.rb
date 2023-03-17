require "/Users/kirillgavris/Desktop/Library/extentions/validations"

class Author
    include Validations

    attr_reader :name, :biography

    def initialize(name,biography)
        check_emptiness(name)
        @name = name
        @biography = biography
    end

    def to_s
        "#{name}\n#{biography}"
    end 
end
