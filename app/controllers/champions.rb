get '/champions/:id' do
  @champion = Champion.find_by(id: params[:id])
  erb :'/champions/show'
end
