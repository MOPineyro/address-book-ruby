require 'rspec'
require 'address_book'
require 'ContactInfo'

describe 'Contact' do
  before do
    Contact.clear
  end

  describe '.create' do
    it "makes a new instance of Contact" do
      test_contact = Contact.create("manuel", "pineyro")
      test_contact.should be_an_instance_of Contact
    end

    it "saves the contact" do
      test_contact = Contact.create("manuel", "pineyro")
      Contact.all[0].first_name.should eq "manuel"
    end
  end

  describe'#add_phone' do
    it 'adds a phone number to the contact' do
      test_contact = Contact.create("manuel", "pineyro")
      test_contact.add_phone("my number")
      test_contact.phone_numbers[0].value.should eq "my number"
    end
  end

  describe'#remove_contact' do
    it 'removes a contact from list of all contacts' do
      test_contact = Contact.create("manuel", "pineyro")
      test_contact.remove_contact("1")
      Contact.all.length.should eq 0
    end
  end

  describe'#remove_number' do
    it 'removes a contact from list of all contacts' do
      test_contact = Contact.create("manuel", "pineyro")
      test_contact.add_phone("my number")
      test_contact.remove_number("1")
      test_contact.phone_numbers.length.should eq 0
    end
  end

  describe'#edit_contact_name' do
    it 'allows user to edit contact name' do
      test_contact = Contact.create("manuel", "pineyro")
      test_contact.edit_contact_name("spyder", "monkee")
      test_contact.first_name.should eq "spyder"
    end
  end

end

describe 'PhoneNumber' do
  it "is initialized as a new instance of Phone_num" do
    test_phone = PhoneNumber.new("2123456789")
    test_phone.should be_an_instance_of PhoneNumber
  end
end

