class UserSerializer
  include JSONAPI::Serializer
  attributes :username, :nickname, :email, :password, :avatar, :slug

  has_many :posts
end
