class RemoveCompanyFromRecruiters < ActiveRecord::Migration[5.2]
  def change
  	remove_column :recruiters, :current_position, :string 
  end
end
