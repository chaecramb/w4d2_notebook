class Tag < ActiveRecord::Base
  has_and_belongs_to_many :notes

  def self.create_if_unique(tag_params)
    tag = Tag.where(name: tag_params[:name])
    if tag.empty?
      Tag.create(tag_params)
    else
      tag
    end
  end
end
