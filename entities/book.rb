require "/Users/kirillgavris/Desktop/Library/extentions/validations"
require "/Users/kirillgavris/Desktop/Library/entities/author"

class Book
    include Validations

    attr_reader :title, :author

    def initialize(title, author)
        validate_instance("Author", author, ::Author)
        check_emptiness(title, author)

        @title = title
        @author = author
    end

    def to_s
        "#{title} by #{author}"
    end
end
