class Author
    attr_reader :name, :biography

    def initialize(name,biography)
        @name = name
        @biography = biography
    end

    def to_s
        "#{name}\n#{biography}"
    end 
end
