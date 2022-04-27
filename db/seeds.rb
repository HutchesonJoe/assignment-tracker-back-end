puts "🌱 Seeding speech classes..."

informative_speech = Assignment.create(description: "Informative Speech", due_date: "9/15/22", points: "100")
persuasive_speech = Assignment.create(description: "Persuasive Speech", due_date: "11/15/22", points: "150")
demonstration_speech = Assignment.create(description: "Demonstration Speech", due_date: "10/15/22", points: "75")
final_exam = Assignment.create(description: "FINAL EXAM", due_date: "12/15/22", points: "200")

fatoumata = Student.create(first_name: "Fatoumata", last_name: "Smith", grade_level: "Sophomore", gpa: 3.98, email: "fsmith@stud.treemail.com")
joseph = Student.create(first_name: "Joseph", last_name: "Lopez", grade_level: "Freshman", gpa: 2.75, email: "jlo@stud.treemail.com")
abdoul = Student.create(first_name: "Abdoul", last_name: "Soumano", grade_level: "Freshman", gpa: 3.56, email: "asoumano@stud.treemail.com")

info_sub = Submission.create(points_earned: 80, teacher_notes: "Good eye contact. Work on volume.", student_id: fatoumata.id, assignment_id: informative_speech.id)
pers_sub = Submission.create(points_earned: 145, teacher_notes: "Excellent research! Terrific arguments.", student_id: joseph.id, assignment_id: persuasive_speech.id)
demo_sub = Submission.create(points_earned: 68, teacher_notes: "Work on connecting to the audience with the visual aids.", student_id: abdoul.id, assignment_id: demonstration_speech.id)
final_sub = Submission.create(points_earned: 175, teacher_notes: "Highest grade in the class", student_id: abdoul.id, assignment_id: final_exam.id)



puts "✅ Done seeding!"
