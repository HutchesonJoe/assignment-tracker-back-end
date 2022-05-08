# Assignment Tracker (back end)

This basic API is built with Sinatra and Active Record. 

Submissions is a the join table for students and assignments. 

## Students

Provides a roster of students and specific information for each, including their submissions and assignments.

## Assignments 

Provides a collection of assignments, including submissions recieved from students for each assignment. 

## Submissions

Provides the submissions available for each assignment from each student. 

## some available routes

"./students" - students, including submissions and according assignments. 

"./students/id" - student by id. 

"./assignments" - assignments, including students.

"/assignments/id" - assignments by id. 

"/class_average" - average of student grades. 

