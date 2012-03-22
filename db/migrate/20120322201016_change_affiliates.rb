class ChangeAffiliates < ActiveRecord::Migration
  def change
    change_table :affiliates do |t|
      t.rename :name, :affiliate_name
      t.rename :url, affiliate_url
    end
  end
end
