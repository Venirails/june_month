xml.instruct!
xml.book do
  @books.each do |c|
    xml.book do
      xml.name c.name
    end
  end
end