# ==================
# TAGS
# ==================

# VIEWS Folder(routes): index.erb, show.erb, edit.erb
# REDIRECTS: destroy (from edit)
# Do I need a CREATE NEW TAG ROUTE? - I don't think so, but I'm not sure

#INDEX - ALL TAGS
get '/tags' do
	@tags= Tag.all
	erb :'/tags/index'
end

# SHOW A SELECTED TAG
get '/tags/:id' do
	@tag = Tag.find(params[:id])
	erb :'/tags/show'
end

# # EDIT - (form)
# get '/posts/:id/edit' do
#  	@tag = Tag.find(params[:id])
#  	erb :'/tags/edit'
# end

# DESTROY AUTHOR - (form) (redirect)
delete '/tags/:id' do
end