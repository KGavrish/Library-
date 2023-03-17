require "/Users/kirillgavris/Desktop/Library/autoload"

class Library
    include FakeDataGenerator
    include Statistics
    include Database
  
    attr_accessor :authors, :books, :orders, :readers
  
    def initialize(authors: [], books: [], orders: [], readers: [])
        @books = books
        @orders = orders
        @readers = readers
        @authors = authors
    end

    def statistics_call
        Statistics.call(self)
    end
end
