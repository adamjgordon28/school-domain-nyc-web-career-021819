require "pry"

class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student, grade)
   @roster[grade] ||= []
   @roster[grade] << student

 end

  def grade(grade)
    @roster.each do |key, value|
      if key == grade
        return value
      end
    end
  end

  def sort
    sorted_hash = {}

    sorted_grade_array = @roster.keys.sort
    sorted_grade_array.each do |grade|
      sorted_hash[grade]=@roster[grade].sort
    end
    sorted_hash
  end

end
