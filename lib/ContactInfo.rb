class ContactInfo

  attr_reader :value

  def initialize(value)
    @value = value
  end
end

class PhoneNumber < ContactInfo
end

class Address < ContactInfo
end

class Email < ContactInfo
end
