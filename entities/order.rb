require "/Users/kirillgavris/Desktop/Library/extentions/validations.rb"
require "/Users/kirillgavris/Desktop/Library/entities/book.rb"
require "/Users/kirillgavris/Desktop/Library/entities/reader.rb"

class Order
    include Validations

    attr_accessor :book, :reader, :date

    def initialize(book, reader, date = Time.now)
        check_instance("Book", book, ::Book)
        check_instance("Reader",reader, ::Reader)
        @book = book
        @reader = reader
        @date = date
    end

    def to_s
        "#{book} was bought by #{reader} at #{date.strftime("%d/%m/%Y %H:%M")}" 
    end
end
