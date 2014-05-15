class Picture < ActiveRecord::Base
  validates :caption, :presence => true
  validates :source, :presence => true
end
