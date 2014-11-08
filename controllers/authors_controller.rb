# ==================
# AUTHORS
# ==================

# VIEWS Folder (routes): index.erb, show.erb, new.erb, edit.erb
# REDIRECTS: create (from new), update (from edit), destroy (from edit)


# INDEX - ALL AUTHORS
get '/authors' do
	@authors = Author.all
  erb :'authors/index'
end

# SHOW SINGLE AUTHOR
get '/authors/:id' do
  @author = Author.find(params[:id])
  erb :'authors/show'
end
 
# NEW AUTHOR (form)
get '/authors/new' do
  erb :'/authors/new'
end