class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable, :registerable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self

  attr_accessor :current_token

  def jwt_payload
    super.merge('nyein yadana win' => 'win yadana nyein')
  end

  def on_jwt_dispatch(token, _payload)
    puts "************"
    puts token
    self.current_token = token
    puts "*******************"
    puts self.current_token
  end
end
