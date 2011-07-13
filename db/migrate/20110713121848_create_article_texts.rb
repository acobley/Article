class CreateArticleTexts < ActiveRecord::Migration
  def self.up
    create_table :article_texts do |t|
      t.text :Text
      t.integer :SequenceNumber

      t.timestamps
    end
  end

  def self.down
    drop_table :article_texts
  end
end
