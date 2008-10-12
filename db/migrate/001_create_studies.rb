class CreateSTUDies < ActiveRecord::Migration
  def self.up
    create_table :study do |t|
    end
  end

  def self.down
    drop_table :study
  end
end
