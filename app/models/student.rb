class Student < ActiveRecord::Base
  attr_accessor :scores, :points, :class_average

  has_many :submissions
  has_many :assignments, through: :submissions

  @@grades = []

  def current_score
    @scores = self.submissions.map {|sub| sub.points_earned}
    @scores.sum
  end

  def points_possible
    @points = self.submissions.map{|sub| sub.assignment.points}
    @points.sum
  end

  def current_grade
      grade = current_score.to_f/points_possible
      grade.round(3) * 100
  end

  def self.class_size
    Student.all.length
  end

  def self.class_average
    students = Student.all
    filtered_students = students.filter {|stud| stud.submissions != []}
    grade_array = filtered_students.map {|stud| stud.current_grade.to_i}
    grade_array.sum/grade_array.length
  end

end