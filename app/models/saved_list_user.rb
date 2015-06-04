class SavedListUser < ActiveRecord::Base
  belongs_to :saved_list, dependent: :destroy
  belongs_to :user, dependent: :destroy
end
