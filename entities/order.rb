require "/Users/kirillgavris/Desktop/Library/extentions/validations"
require "/Users/kirillgavris/Desktop/Library/entities/book"
require "/Users/kirillgavris/Desktop/Library/entities/reader"

class Order
    include Validations

    attr_accessor :book, :reader, :date

    def initialize(book, reader, date)
        validate_instance("Book", book, ::Book)
        validate_instance("Reader",reader, ::Reader)
        @book = book
        @reader = reader
        @date = date
    end

    def to_s
        "#{book} was bought by #{reader} at #{date.strftime("%d/%m/%Y %H:%M")}" 
    end
end
