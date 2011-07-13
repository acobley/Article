class CreateArticleSectionTypes < ActiveRecord::Migration
  def self.up
    create_table :article_section_types do |t|
      t.text :Description
      t.references :ArticleText

      t.timestamps
    end
  end

  def self.down
    drop_table :article_section_types
  end
end
