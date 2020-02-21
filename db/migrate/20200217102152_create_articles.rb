class CreateArticles < ActiveRecord::Migration[6.0]
  def up
    create_table :articles do |t|
      t.belongs_to :user, class_name: :users
      t.string :content

      t.timestamps
    end
  end

  def down
    drop_table :articles
  end
end
