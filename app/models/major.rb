class Major < ActiveRecord::Base
  has_and_belongs_to_many :courses
end
