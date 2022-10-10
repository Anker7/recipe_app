class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.integer :user_id
      t.string :recipe_title
      t.text :recipe_detail
      t.string :image_id

      t.timestamps
    end
  end
end
