class StoryController < ApplicationController

  def new
    @story = Story.new
  end

  def create
    # binding.pry
    tag_names = params["story"]["tag_ids"].split(',')
    tags = Tag.where(label: tag_names).map(&:id)
    @story = Story.new(story_params)
    @story.assign_user
    # binding.pry
    if tags&.present?
      tags.each do |tag|
        @story.story_tags.build(tag_id: tag)
      end
    end

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
    params.require(:story).permit(:title, :body, :user_id, :status)
  end
end
