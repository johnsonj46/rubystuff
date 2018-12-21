class CreateBirds < ActiveRecord::Migration
  def change
    create_table :birds do |t|
      t.string :username
      t.string :tweet
      t.string :image
      t.string :origin

      t.timestamps null: false
    end
  end
end
