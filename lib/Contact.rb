class Contact

  @@all_contacts = []
  @index = 1

  def Contact.clear
    @@all_contacts = []
    @index = 1
  end

  def Contact.all
    @@all_contacts
  end

  def Contact.create(first_name,last_name)
    contact = Contact.new(first_name,last_name, @index)
    @@all_contacts << contact
    @index += 1
    contact
  end

  def initialize(first_name,last_name, index)
    @first_name = first_name
    @last_name = last_name
    @phone_numbers = []
    @addresses = []
    @emails = []
    @id = index
  end

  attr_reader :first_name, :last_name, :phone_numbers, :addresses, :emails, :id

  def add_phone(number)
    @phone_numbers << PhoneNumber.new(number)
  end

  def add_address(address)
    @addresses << Address.new(address)
  end

  def add_email(email)
    @emails << Email.new(email)
  end

  def remove_contact(index)
    Contact.all.delete_at(index.to_i-1)
  end

  def remove_number(index)
    @phone_numbers.delete_at(index.to_i-1)
  end

  def remove_address(index)
    @addresses.delete_at(index.to_i-1)
  end

  def remove_email(index)
    @emails.delete_at(index.to_i-1)
  end

  def edit_contact_name(new_first_name, new_last_name)
    @first_name = new_first_name
    @last_name = new_last_name
  end

end


