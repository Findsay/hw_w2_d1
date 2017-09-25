require("minitest/autorun")
require("minitest/rg")
require_relative("./student")

class TestStudent < MiniTest::Test

def test_student_name()
  student1 = Student.new("Fiona", 3)
  assert_equal("Fiona", student1.name())
end

def test_cohort()
  student1 = Student.new("Fiona", 3)
  assert_equal(3, student1.cohort())
end

def test_set_student_name()
  student1 = Student.new("Fiona", 3)
  student1.set_name("Glenn")
  assert_equal("Glenn", student1.name())
end

def test_set_student_cohort()
  student1 = Student.new("Fiona", 3)
  student1.set_cohort(4)
  assert_equal(4, student1.cohort())
end

def test_get_student_to_talk()
  student1 = Student.new("Fiona", 3)
  result = student1.set_speech("I can talk")
  assert_equal("I can talk", result)
end

def test_say_students_fave_language()
  student1 = Student.new("Fiona", 3)
  result = student1.say_fave_language("Ruby")
  assert_equal("I love Ruby", result)
end



end
