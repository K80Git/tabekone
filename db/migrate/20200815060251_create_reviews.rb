class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :shopName
      t.string :menuName
      t.string :kind
      t.string :situation
      t.integer :deliciousness
      t.integer :costPerformance
      t.integer :sweetness
      t.integer :strongTaste
      t.integer :Texture
      t.integer :EaseOfEating
      t.integer :volume
      t.integer :appearance
      t.integer :balance
      t.integer :disagreement
      t.text :comment
      t.references :user, null:false, foregin_key:true
      t.timestamps
    end
  end
end
