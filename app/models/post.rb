class Post < ApplicationRecord
  belongs_to :user

  has_many :comments, :dependent => :destroy
  has_many :likes, :dependent => :destroy

  def calc_likes
    likes.length
  end
end
