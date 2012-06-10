class AddEmbedUrlWidgetToTalks < ActiveRecord::Migration
  def change
    add_column :talks, :embed_url_widget, :text
  end
end
