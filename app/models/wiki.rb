class Wiki < ApplicationRecord
  acts_as_ordered_taggable

  before_validation :process_url

  validates :title, presence: true, length: { maximum: 255 }
  validates :link, presence: true, uniqueness: true, url: true
  validates :tag_list, presence: true

  def process_url
    self.link = self.link.slice(0, self.link.length - 1) if self.link.present? && self.link.ends_with?("/")
  end
end
