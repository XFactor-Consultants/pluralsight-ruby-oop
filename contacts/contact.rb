# frozen_string_literal: true

require_relative 'contact_utils'
require_relative 'contact_manager'
class Contact
  include ContactUtils
  attr_accessor :name, :email, :phone

  def initialize(name, email, phone)
    @name = name
    @email = email
    @phone = format_phone_number(phone)
    add_contact
  end

  def to_s
    "Name: #{@name}, Email: #{@email}, Phone: #{@phone}"
  end

  def add_contact
    ContactManager.instance.add_contact(self)
  end
end
