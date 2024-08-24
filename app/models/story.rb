class Story < ApplicationRecord
  belongs_to :user
  #has_many :tags, through: :story_tags
  has_many :story_tags
  STATUS = ["pending", "stale", "active", "spam"]

  # before_create :assign_user
  validates :title, uniqueness: true

  def assign_user
    # binding.pry
    if user_id.nil?
      self.status = "pending"
      self.user_id = User.find_by(username: "anonymous").id
    else
      self.status = "active"
    end
    #assign_tags
  end

  def assign_tags
    if !self.tag_ids&.empty?
      Tag.where(id: self.tag_ids).each do |tag|
        self.story_tags.build(tag_id: tag.id, story_id: self.id)
      end
    end
  end

  def author
    self.user.username
  end
  
end
