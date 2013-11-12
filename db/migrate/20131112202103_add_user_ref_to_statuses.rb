class AddUserRefToStatuses < ActiveRecord::Migration
  def change
    add_reference :statuses, :user, index: true
  end
end
