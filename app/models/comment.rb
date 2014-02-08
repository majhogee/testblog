class Comment
  include Mongoid::Document
  include Mongoid::Timestamps

  field :body, type: String

  belongs_to :post
  belongs_to :user
  has_many :votes
  validates :body, length: { maximum: 140 }
end
