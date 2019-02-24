class CommentsController < ApplicationController
  before_action :set_song
  
  def new
    @comment = Comment.new
  end
  def create
    @comment = @song.comments.new(comment_params)
    if @comment.save
      redirect_to billboard_song_path(@song.billboard_id, @song)
    else
      render :new
    end
  end

  private
    def set_song
      @song = Song.find(params[:song_id])
    end

    def comment_params
      params.require(:comment).permit(:body, :author)
    end

end
