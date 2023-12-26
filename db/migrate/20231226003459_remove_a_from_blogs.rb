class RemoveAFromBlogs < ActiveRecord::Migration[7.0]
  def change
    remove_column :blogs, :a, :string
  end
end
