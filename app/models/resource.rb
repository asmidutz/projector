class Resource < ActiveRecord::Base
    has_many :assignments
    has_many :projects, through: :assignments
    
    validates_presence_of :name
end