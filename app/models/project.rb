class Project < ActiveRecord::Base
  has_many :tasks, dependent: :destroy  
  has_many :assignments
  has_many :resources, through: :assignments
  
  validates_presence_of :name
end