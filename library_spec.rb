require("minitest/autorun")
require("minitest/rg")
require_relative("./library")

class TestLibrary < MiniTest::Test

  def setup()
    @books = [  {
      title: "lord_of_the_rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
      }
    },
    {
      title: "the_hobbit",
      rental_details: {
        student_name: "June",
        date: "04/03/17"
      }
      }]

      @library = Library.new(@books)

    end

  def test_list_all_books()
    assert_equal(@books, @library.list_all_books)
  end




  end
