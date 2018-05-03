class App < Sinatra::Base

	get '/' do
		erb(:index)
	end

	post '/login' do
		username = params[:username]
		password = params[:password]

		db = SQLite3::Database.new("db/databas.sqlite3")
		
	end
end           
