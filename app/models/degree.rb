# Associations implemented by Cornelius Donley

class Degree < ActiveRecord::Base
  has_many :graduate_degree
  has_many :undergraduate_degree
end
