class ChangeFkColInArticles < ActiveRecord::Migration[7.1]
  def change
    remove_foreign_key :articles, :authors  
    add_foreign_key :articles, :authors, column: :author_id, on_delete: :cascade
  end
end
