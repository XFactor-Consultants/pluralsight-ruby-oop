# frozen_string_literal: true

module ContactUtils
  def format_phone_number(phone)
    # Using regex to capture the first 3, next 3, and last 4 digits of the phone number
    phone.gsub(/(\d{3})(\d{3})(\d{4})/, '(\1)\2-\3')
  end
end
