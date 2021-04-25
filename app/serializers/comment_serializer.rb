class CommentSerializer
  include JSONAPI::Serializer
  attributes :content, :user_id, :post_id

  belongs_to :post
end
