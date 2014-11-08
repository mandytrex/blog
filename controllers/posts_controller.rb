# ============
# POSTS
# ============

get '/posts' do
	@posts = Post.all
	erb :'/posts/index'
end

# NEW POST (form)
get '/posts/new' do
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
	else
		redirect("/posts/new")
	end
end

# EDIT POST (form) 
get '/posts/:id/edit' do
	@post = Post.find(params[:id])
	erb :'posts/edit'
end

# UPDATE SELECTED POST (form) (redirect)
put '/posts/:id' do
	post.update(params[:post])
		redirect('/posts/#{post.id}')
end

# DESTROY SELECTED POSTS (form) (redirect)
delete '/posts/:id' do
	post = Post.find(param[:micropost])
	if post.destroy
		redirect('/posts')
	else
		redirect('/posts/#{post.id}')
	end
end