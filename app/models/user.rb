class User < ApplicationRecord
  has_many :posts, :dependent => :destroy

  before_create :slugify

  def slugify
    self.slug = username.parameterize
  end
end
