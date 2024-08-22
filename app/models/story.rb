class Story < ApplicationRecord
  belongs_to :user
  has_many :tags
  # before_create :assign_user
  validates :title, uniqueness: true


  def assign_user
    # binding.pry
    if user_id.nil?
      self.user_id = User.find_by(username: "anonymous").id
    end
  end
end
