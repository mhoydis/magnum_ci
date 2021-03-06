class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :name, :repo_uri, :branch, :script, :account, :room, :token
      t.boolean :campfire, :ssl, :bundler
      t.integer :keep_build_number
      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
