class CreateArticleTextTypes < ActiveRecord::Migration
  def self.up
    create_table :article_text_types do |t|
      t.text :Descriptiion
      t.references :ArticleText

      t.timestamps
    end
  end

  def self.down
    drop_table :article_text_types
  end
end
