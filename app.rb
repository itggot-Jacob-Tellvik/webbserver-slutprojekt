class App < Sinatra::Base

	enable :sessions

	get '/' do
		erb(:index, locals:{"user_id" => session[:user_id]})
	end

	get '/login' do
		erb(:login)
	end

	post '/login' do
		username = params[:username]
		password = params[:password]
		p username, password
		db = SQLite3::Database.new("db/databas.db")

		check = db.execute("SELECT username FROM user WHERE username LIKE ?", [username])[0]
		if check != nil
			session[:user_id] = check[0]
		
			redirect("/")
		else
			p "användarnam upptaget"
		end

		
	end
end           
