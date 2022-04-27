class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    roster = Student.all
    roster.to_json
  end

  get "/students" do
    roster = Student.all.order(last_name: :asc)
    roster.to_json
  end

  get "/assignments" do
    assignments = Assignment.all
    assignments.to_json
  end

  get "/submissions" do
    submissions = Submission.all
    submissions.to_json
  end
end
