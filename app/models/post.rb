class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  # Db query making posts in order
  scope :most_recent, -> { order(id: :desc)}

  # Method for pushing date ('%-b %-d, %y') formatting date
  # putting variable inside string
  def display_day_published
    "Published : #{created_at.strftime('%-b %-d, %Y')}"
  end

  # Makes title display in URL
  def should_generate_new_friendly_id?
    title_changed?
  end


end
