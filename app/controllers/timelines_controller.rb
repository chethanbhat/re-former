class TimelinesController < ApplicationController

    def index

        @posts = Post.all

    end



end
