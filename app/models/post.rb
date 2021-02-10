class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

# Makes title display in URL
  def should_generate_new_friendly_id?
    title_changed?
  end


end
