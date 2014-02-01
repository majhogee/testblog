class Comment
  include Mongoid::Document
  include Mongoid::Timestamps

  field :content, type: String

  belongs_to :post
  belongs_to :user
  validates :content, length: { maximum: 140 }
end
