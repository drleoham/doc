class Post < ActiveRecord::Base
  has_many :dcomments
end
