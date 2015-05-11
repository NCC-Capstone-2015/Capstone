class User < ActiveRecord::Base
  belongs_to :login
  belongs_to :company
end
