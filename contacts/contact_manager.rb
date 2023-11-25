# frozen_string_literal: true

class ContactManager
  @instance = new

  class << self
    attr_reader :instance
  end

  private_class_method :new

  def add_contact(contact)
    @contacts ||= []
    @contacts << contact
  end

  def list_contacts
    @contacts.map(&:to_s).join("\n")
  end
end
