require "/Users/kirillgavris/Desktop/Library/autoload"

module FakeDataGenerator

    class << self
        def call
            fill_author
            fill_book
            fill_reader
            fill_order
            {
                authors: @authors,
                books: @books,
                readers: @readers,
                orders: @orders
            }
        end
  
        private

        def build_author
            name = FFaker::Book.author
            biography = FFaker::Book.description
            Author.new(name, biography)
        end

        def build_book(author)
            title = FFaker::Book.title
            Book.new(title, author)
        end

        def build_reader
            name = FFaker::Name.name
            email = FFaker::Internet.email
            city = FFaker::Address.city
            street = FFaker::Address.street_name
            house = rand(1 - 10_000)
            Reader.new(name, email, city, street, house)
        end

        def build_order(book, reader)
            date = Time.now.utc.strftime('%d.%m.%Y')
            Order.new(book, reader, date)
        end

        def fill_author
            @authors = []
            3.times do
                author = build_author
                @authors.push(author)
            end
        end

        def fill_book
            @books = []
            6.times do
                book = build_book(@authors.sample)
                @books.push(book)
            end
        end

        def fill_reader
            @readers = []
            10.times do
                reader = build_reader
                @readers.push(reader)
            end
        end

        def fill_order
            @orders = []
            16.times do
                @orders.push(build_order(@books.sample, @readers.sample))
            end
        end
    end
end
