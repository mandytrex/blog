# ==================
# TAGS
# ==================

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
	tag = Tag.find
end

delete '/posts/:id' do
	post = Post.find(param[:tag])
	if tag.destroy
		redirect("/tags")
	end
end