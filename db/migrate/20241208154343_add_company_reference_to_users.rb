class AddCompanyReferenceToUsers < ActiveRecord::Migration[7.2]
  def change
    add_reference :users, :company, null: false, foreign_key: true
  end
end
