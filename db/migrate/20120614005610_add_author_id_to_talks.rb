class AddAuthorIdToTalks < ActiveRecord::Migration
  def change
    add_column :talks, :author_id, :integer
  end
end
