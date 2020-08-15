class CreateGroupReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :group_reviews do |t|
      t.references :group, foreign_key: true
      t.references :review, foreign_key: true
      t.timestamps
    end
  end
end
