class Place < ActiveRecord::Base
  attr_accessible :comments, :cuisine, :location, :name, :url, :website
end
