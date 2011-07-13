class CreateArticleParagraphTypes < ActiveRecord::Migration
  def self.up
    create_table :article_paragraph_types do |t|
      t.text :Descriptio

      t.timestamps
    end
  end

  def self.down
    drop_table :article_paragraph_types
  end
end
