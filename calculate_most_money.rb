require_relative "student"

def most_money(students)
  all_students_total = []
  students.each do |student|
    all_students_total << ((student.fives * 5) + (student.tens * 10) + (student.twenties*20))
  end
  return "all" if all_students_total.count(all_students_total.max) > 1 
  students[all_students_total.index(all_students_total.max)].name
end