# custom school class
class School
  def initialize
    @school_file = {}
    @alumni_list = []
    @bunch = ->(number) { @alumni_list << { grade: number, students: [] } }
  end

  def add(student, grade)
    @school_file[student] = grade
  end

  def students(grade_select)
    students_of_grade = []
    @school_file.each do |student, grade|
      students_of_grade << student if grade_select == grade
    end
    students_of_grade.sort
  end

  def students_by_grade
    number_of_grades = []
    @school_file.each_value { |grade_value| number_of_grades << grade_value }
    number_of_grades.uniq.sort.each(&@bunch)
    @school_file.each do |student, grade|
      @alumni_list.each do |container_yard|
        container_yard[:students] << student if container_yard[:grade] == grade
        container_yard[:students].sort!
      end
    end
    @alumni_list
  end
end

module BookKeeping
  VERSION = 3
end
