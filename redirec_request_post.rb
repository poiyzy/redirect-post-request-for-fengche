require "sinatra"
require "httparty"

post "/projects/:project_id/hooks" do
  response = HTTParty.post("https://fengcheco.com/projects/#{params[:project_id]}/hooks", params)
  status response.code
end
