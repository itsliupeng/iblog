class ArchiveController < ApplicationController
  def index
    @posts = Post.order('created_at desc');
  end
end
