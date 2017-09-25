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

def test_student_can_talk()
  student1 = Student.new("Fiona", 3)
  student1.speak()
  assert_equal("I can talk!", student1.speak())
end

def test_student_fave_language()
  student1 = Student.new("Fiona", 3)
  student1.say_fave_language("Ruby")
  assert_equal("I love Ruby", student1.say_fave_language("Ruby"))
end


end
