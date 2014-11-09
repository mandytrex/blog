# ============
# POSTS
# ============

get '/posts' do
	@posts = Post.all
	erb :'/posts/index'
end

# NEW POST (form)
get '/posts/new' do
	@authors = Author.all
	@tags = Tag.all
	erb :'/posts/new'
end

# SHOW SINGLE POST
get '/posts/:id' do
	@post = Post.find(params[:id])
	erb :'posts/show'
end

# CREATE A POST (form) (redirect)
post '/posts' do
	post = Post.new(params[:post])
	if post.save
		redirect("/posts/#{post.id}")
	end
end

# EDIT POST (form) 
get '/posts/:id/edit' do
	@post = Post.find(params[:id])
	@authors = Author.all
	erb :'posts/edit'
end

# UPDATE SELECTED POST (form) (redirect)
put '/posts/:id' do
	post = Post.find(params[:id])
	if post.update(params[:post])
		redirect("/posts/#{post.id}")
	else
		redirect("/posts/#{post.id}/edit")
	end
end

# DESTROY SELECTED POSTS (form) (redirect)
delete '/posts/:id' do
	post = Post.find(param[:post])
	if post.destroy
		redirect("/posts")
	else
		redirect("/posts/#{post.id}")
	end
end