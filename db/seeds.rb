puts "🌱 Seeding spices..."

informative_speech = Assignment.create(description: "Informative Speech", due_date: "9/15/22", points: "100")
persuasive_speech = Assignment.create(description: "Persuasive Speech", due_date: "11/15/22", points: "150")
demonstration_speech = Assignment.create(description: "Demonstration Speech", due_date: "10/15/22", points: "75")
final_exam = Assignment.create(description: "FINAL EXAM", due_date: "12/15/22", points: "200")

mr_hughes = Teacher.create(name: "Mr. Hughes", is_tenured: false, t.string: "rhughes@treemail.com")
prof_hutcheson = Teacher.create(name: "Prof. Hutcheson", is_tenured: true, t.string: "jhutcheeson@treemail.com")
ms_brown = Teacher.create(name: "Ms. Brown", is_tenured: false, t.string: "cbrown@treemail.com")

fatoumata = Student.create(first_name: "Fatoumata", last_name: "Smith", grade_level: "Sophomore", gpa: 3.98, email: "fsmith@stud.treemail.com")
joseph = Student.create(first_name: "Joseph", last_name: "Lopez", grade_level: "Freshman", gpa: 2.75, email: "jlo@stud.treemail.com")
abdoul = Student.create(first_name: "Abdoul", last_name: "Soumano", grade_level: "Freshman", gpa: 3.56, email: "asoumano@stud.treemail.com")

puts "✅ Done seeding!"
