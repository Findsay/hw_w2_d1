class Student
  def initialize(student_name, cohort_number)
    @name = student_name
    @cohort = cohort_number
  end

  def name
    return @name
  end

  def cohort
    return @cohort
  end

  def set_name(new_student_name)
    @name = new_student_name
  end

  def set_cohort(new_student_cohort)
    @cohort = new_student_cohort
  end

  def speak()
    return "I can talk!"
  end

  def say_fave_language(fave_language)
    return "I love #{fave_language}"
  end



end
