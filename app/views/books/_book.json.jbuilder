json.extract! book, :id, :name, :author, :year
json.url book_url(book, format: :json)
