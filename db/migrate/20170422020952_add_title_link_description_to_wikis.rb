class AddTitleLinkDescriptionToWikis < ActiveRecord::Migration[5.0]
  def change
    add_column :wikis, :title, :string
    add_column :wikis, :link, :string
    add_column :wikis, :description, :text
  end
end
