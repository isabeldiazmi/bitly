class CreateUrls < ActiveRecord::Migration
  def change
  	create_table :urls do |u|
  		u.string :original_url
  		u.string :short_url
  	end
  end
end
