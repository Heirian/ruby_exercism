# custom school class
class School
  def initialize
    @school_file = {}
  end

  def students(grade)
    @school_file[grade] || []
  end

  def add(student, grade)
    @school_file[grade] = (students(grade) << student).sort
  end

  def students_by_grade
    @school_file.sort.collect { |g, s| { grade: g, students: s } }
  end
end

module BookKeeping
  VERSION = 3
end
