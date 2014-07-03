class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :name
      t.text :description
      t.string :url
      t.references :gallery #don't use this again

      #t.integer :gallery_id
      #t.belongs_to :gallery, index: true  -----> index: true creates a mapping to increase search speed later

      t.timestamps
    end
  end
end
