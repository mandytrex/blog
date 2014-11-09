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

# NEW AUTHOR (form)
get '/authors/new' do
  erb :'/authors/new'
end

# SHOW SINGLE AUTHOR
get '/authors/:id' do
  @author = Author.find(params[:id])
  erb :'authors/show'
end

# CREATE AUTHOR (redirect)
post '/authors' do
	@author = Author.new(params[:author])
	 if @author.save 
    redirect("/authors/#{@author.id}") 
  else
    redirect("/authors/new")
  end
end
 
# EDIT AUTHOR (form)
get '/authors/:id/edit' do
  @author = Author.find(params[:id])
  erb :'authors/edit'
end
 
# UPDATE (form) (redirect)
put '/authors/:id' do
	author = Author.find(params[:id])
    if author.update(params[:author])
    	redirect("/authors/#{author.id}")
    else
    	redirect("/author/#{author.id}/edit")
    end
end
 
# DESTROY AUTHOR - this will be a REDIRECT (form)
delete '/authors/:id' do
	author = Author.find(params[:id])
	  if author.destroy
    redirect("/authors")
  else
    redirect("/authors/#{author.id}")
  end
end