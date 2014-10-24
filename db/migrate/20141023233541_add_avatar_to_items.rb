class AddAvatarToItems < ActiveRecord::Migration
  def change
  end
      def self.up
    add_attachment :items, :avatar
  end

  def self.down
    remove_attachment :items, :avatar
  end
end
