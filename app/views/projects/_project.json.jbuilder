json.extract! project, :id, :title, :description, :picture, :video, :goalamount, :duedate, :startdate, :markdown, :category, :views, :created_at, :updated_at
json.url project_url(project, format: :json)
