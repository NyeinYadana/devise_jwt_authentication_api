class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :email
  attribute :email_with_id do |object|
    "#{object.email} #{object.id}"
  end
end
