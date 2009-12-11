class CreateSnippets < ActiveRecord::Migration
  def self.up
    create_table :snippets do |t|
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :snippets
  end
end
