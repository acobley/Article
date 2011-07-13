class AddSectionToArticleTextType < ActiveRecord::Migration
  def self.up
    add_column :article_text_types, :section, :integer
  end

  def self.down
    remove_column :article_text_types, :section
  end
end
