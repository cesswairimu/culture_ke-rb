class StoryController < ApplicationController

  def new
    @story = Story.new
  end

  def create
    # binding.pry
    @story = Story.new(story_params)
    @story.assign_user
    # binding.pry
    if @story.save
      flash[:notice] = "Story Posted!!"
      redirect_to story_index_path
    else
      @errors = @story.errors.objects.first.full_message
      flash[:alert] = "#{@errors}"
      render 'new'
    end
  end

  def update
  end

  def show
  end

  def index
    @stories = Story.all
  end

  def destroy
  end

  private

  def story_params
    params.require(:story).permit(:title, :body, :user_id)
  end
end
