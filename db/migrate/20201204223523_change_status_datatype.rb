class ChangeStatusDatatype < ActiveRecord::Migration[6.0]
  def change
    change_column :friendships, :status, :integer
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
