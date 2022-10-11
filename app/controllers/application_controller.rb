class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end
  
  get '/users' do 
    users = User.all
    users.to_json
  end
  post '/users' do
    new_user = User.create(params)
    new_user.to_json
  end

end
