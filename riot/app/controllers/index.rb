get '/' do
  @champions = Champion.all
  erb :'/index'
end
