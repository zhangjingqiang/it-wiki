class Wiki < ApplicationRecord
  acts_as_ordered_taggable

  validates :title, presence: true, length: { maximum: 255 }
  validates :link, presence: true, url: true
  validates :tag_list, presence: true
end
