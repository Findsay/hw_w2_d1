class Library
  def initialize
    @books =[]
  end

  def list_all_books()
    @books.each do {|book name| print book name}
  end
end
