class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string   "login"
      t.string   "crypted_password"
      t.string   "password_salt"
      t.string   "persistence_token"
      t.integer  "login_count"
      t.datetime "last_request_at"
      t.datetime "last_login_at"
      t.datetime "current_login_at"
      t.string   "last_login_ip"
      t.string   "current_login_ip"
      t.string   "first_name"
      t.string   "last_name"
      t.string   "perishable_token",        :default => "",      :null => false
      t.string   "email",                   :default => "",      :null => false
      t.string   "language"
      t.string   "notify_method",           :default => "email"
      t.string   "jabber_address",          :default => "",      :null => false
      t.boolean  "task_notify",             :default => false
      t.string   "new_video_notify_filter"
      t.boolean  "video_archive_notify",    :default => false
      t.string   "notify_on"
      t.string   "new_video_notify"
      
      t.timestamps
    end
    add_index :users, :perishable_token
    add_index :users, :email
  end

  def self.down
    drop_table :users
  end
end
