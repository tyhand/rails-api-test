class FollowResource < JSONAPI::Resource
  has_one :follower
  has_one :following
end
