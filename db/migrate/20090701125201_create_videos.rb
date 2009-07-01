class CreateVideos < ActiveRecord::Migration
  def self.up
    create_table :videos do |t|
      t.string   "title"
      t.string   "source_media"
      t.string   "length"
      t.integer  "customer_id"
      
      t.timestamps
    end
  end

  def self.down
    drop_table :videos
  end
end
