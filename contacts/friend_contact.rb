# frozen_string_literal: true

require_relative 'contact'

class FriendContact < Contact
  attr_accessor :nickname

  def initialize(name, email, phone, nickname)
    super(name, email, phone)
    @nickname = nickname
  end

  def to_s
    super + " , Nickname: #{@nickname}"
  end
end
