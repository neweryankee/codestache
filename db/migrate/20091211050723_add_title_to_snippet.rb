class AddTitleToSnippet < ActiveRecord::Migration
  def self.up
    change_table(:snippets) do |t|
      t.string :title
    end
  end

  def self.down
    change_table(:snippets) do |t|
      t.remove :title
    end
  end
end
