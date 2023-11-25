# frozen_string_literal: true

require_relative 'contact'

class WorkContact < Contact
  attr_accessor :position, :company

  def initialize(name, email, phone, position, company)
    super(name, email, phone)
    @position = position
    @company = company
  end

  def to_s
    super + ", Position: #{@position}, Company: #{@company}"
  end
end
