class AddCompanyIdToRecruiters < ActiveRecord::Migration[5.2]
  def change
    add_column :recruiters, :company_id, :integer
  end
end
