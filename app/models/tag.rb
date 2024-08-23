class Tag < ApplicationRecord

  def self.active_tags
    @tags =  Tag.all
  end
end
