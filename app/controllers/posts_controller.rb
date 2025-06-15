class PostsController < ApplicationController
    before_action :authenticate_user!, only: [ :new, :create ]

    def new
        @post = Post.new
    end

    def create
        @post = User.find_by_id(current_user.id).posts.build(post_params)
        if @post.save
            redirect_to posts_path
        else
            render :new, status: :unprocessable_entity
        end
    end

    def index
        @posts = Post.all.reverse
    end

    private

    def post_params
        params.expect(post: [ :title, :body ])
    end
end
