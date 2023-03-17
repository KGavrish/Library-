require "/Users/kirillgavris/Desktop/Library/autoload"
require "pry"
module Database

  def save_library_data
    data = self
      file_name = "load.yml"
      data = {
        authors: YAML.dump(data.authors),
        books: YAML.dump(data.books),
        readers: YAML.dump(data.readers),
        orders: YAML.dump(data.orders)
      }
      file = File.new(file_name, 'w')
      file.write(YAML.dump data)
      file.close
    end
    def load_library_data
      file_name = "load.yml"
      if File.exist?(file_name)
        file = File.open(file_name)
        data = YAML.load file.read
        @authors = YAML.load (data[:authors])
        @books = YAML.load (data[:books])
        @readers = YAML.load (data[:readers])
        @orders = YAML.load (data[:orders])
        file.close
      else
        puts "There is no such file."
      end
    end

    def generate_data
      data = FakeDataGenerator.call
    end
end
