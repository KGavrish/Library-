module Statistics

  class << self
    def call(test)
      top_reader(test.orders)
      top_book(test.orders)
    end
    
    private

    def top_reader(orders)
        orders_grouped = orders.group_by(&:reader)
        tab = orders_grouped.max_by { |_entity, reader| reader.count }.first
        puts "#{tab.name} is the top reader"
    end

    def top_book(orders)
        orders_grouped = orders.group_by(&:book)
        tab = orders_grouped.max_by { |_entity, book| book.count }.first
        puts "#{tab.title} is the top book"
    end
  end
end
