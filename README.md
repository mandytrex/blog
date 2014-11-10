#blog project for WDI - "Say What?" Microblog

I created this blog to be a space where people visit to share their thoughts on daily events. They are able to do this through photos and text.

An existing user can post (a photo and/or a blurb of text), edit a post, delete a post, tag a post, or view a post. A user can also view a profile page for a particular user, all post associated with a selected tab, and view a basic home feed. Working to improve the appearance, but aside from the design the application works and does what it is meant to do. Will improve upon appearance.

Mix of tumblr/instagram/twitter functionalities.

###Post
+ belongs_to :author

###Author
+ has_many :posts
+ has_and_belongs_to_many :tags

###Tag
	has_and_belongs_to_many :posts

##home_controller
+ get /posts/index.erb

##posts_controller
+ get /blogs/index.erb
+ get /blogs/new.erb
+ get /blogs/show.erb
+ get /blogs/edit.erb
+ put /posts/:id
+ delete /posts/:id


##authors_controller
+ get /authors/index.erb
+ get /authors/new.erb
+ get /authors/show.erb
+ get /authors/edit.erb
+ put /authors/:id
+ delete /authors/:id

##tags_controller
+ get /tags/index
+ get /tags/show.erb
+ get /tags/edit.erb
+ delete /tags/:id
