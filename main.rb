require "/Users/kirillgavris/Desktop/Library/entities/library"
require "pry"

# create new Library and save data
# data = FakeDataGenerator.call
# lib = Library.new(data)
# lib.save_library_data
# lib.statistics_call

# load Library from storage
lib = Library.new
lib.load_library_data
lib.statistics_call
