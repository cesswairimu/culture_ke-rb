class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # belongs_to :role
  before_create :assign_role

  def assign_role
    if self.role_id.nil?
      self.role_id =  Role.find_by(name: "limited").id
    end
  end

end
