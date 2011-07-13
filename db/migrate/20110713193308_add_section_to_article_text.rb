class AddSectionToArticleText < ActiveRecord::Migration
  def self.up
    add_column :article_texts, :section, :integer
  end

  def self.down
    remove_column :article_texts, :section
  end
end
