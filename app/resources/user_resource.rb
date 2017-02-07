class UserResource < JSONAPI::Resource
  attributes :username

  has_many :following
  has_many :followers
end
