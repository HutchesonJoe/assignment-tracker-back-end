class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    roster = Student.all
    roster.to_json
  end

  get "/students" do
    roster = Student.all.order(last_name: :asc)
    roster.to_json(include: { submissions: { include: :assignment }})
  end

  get "/students/:id" do
    student = Student.find(params[:id])
    student.to_json
  end

  get "/assignments" do
    assignments = Assignment.all
    assignments.to_json(include: :students)
  end

  get "/assignments/:id" do
    assignment = Assignment.find(params[:id])
    assignment.to_json
  end

  get "/submissions" do
    submissions = Submission.all
    submissions.to_json(include:[:student, :assignment]) 
  end

  get "/submissions/:id" do
    submission = Submission.find(params[:id])
    submission.to_json(include: [:student, :assignment])
  end

  get "/submissions_by_student" do
    submissions = Student.all
    submissions.to_json(include: {submissions: {include: :assignment}})
  end

  get "/submissions_by_student/:id" do
    student = Student.find(params[:id])
    student_submissions = student.submissions
    student_submissions.to_json(include: :assignment)
  end

  get "/submissions_by_assignment" do
    submissions = Assignment.all
    submissions.to_json(include:{submissions: {include: :student}})
  end

  get "/submissions_by_assignment/:id" do
    assignment = Assignment.find(params[:id])
    assignment_submissions = assignment.submissions
    assignment_submissions.to_json(include: :student)
  end

  post "/assignments" do
    assignment = Assignment.create(
      description: params[:description],
      due_date: params[:due_date],
      points: params[:points]
    )
    assignment.to_json
  end

  patch "/submissions/:id" do
    submission = Submission.find(params[:id])
    submission.update(
      points_earned: params[:points_earned],
      teacher_notes: params[:teacher_notes]
    )
    submission.to_json(include: [:student, :assignment])
  end

  delete "/submissions/:id" do
    submission = Submission.find(params[:id])
    submission.destroy
    submission.to_json
  end

  delete "/assignments/:id" do
    assignment = Assignment.find(params[:id])
    assignment.destroy
    assignment.to_json
  end

  post "/submissions" do
    submission = Submission.create(
      points_earned: params[:points_earned],
      teacher_notes: params[:teacher_notes],
      assignment_id: params[:assignment_id],
      student_id: params[:student_id]
    )
    submission.to_json(include: [:student, :assignment])
  end

  get "/class_average" do
    average = Student.class_average
    average.to_json
  end

end
