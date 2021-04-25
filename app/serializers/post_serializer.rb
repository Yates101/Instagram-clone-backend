class PostSerializer
  include JSONAPI::Serializer
  attributes :image, :caption, :user_id

  has_many :comments
  has_many :likes
end
