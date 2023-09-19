class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :banner_url
      t.text :content

      t.timestamps
    end
  end
end
