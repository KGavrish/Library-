require "/Users/kirillgavris/Desktop/Library/extentions/validations.rb"
require "/Users/kirillgavris/Desktop/Library/entities/author.rb"

class Book
    include Validations

    attr_reader :title, :author

    def initialize(title, author)
        check_instance("Author", author, ::Author)

        @title = title
        @author = author
    end

    def to_s
        "#{title} by #{author}"
    end
end
