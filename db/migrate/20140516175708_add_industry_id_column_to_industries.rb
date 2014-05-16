class AddIndustryIdColumnToIndustries < ActiveRecord::Migration
  def change
    add_column :industries, :industry_id, :integer
  end
end
