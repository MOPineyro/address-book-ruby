require './lib/Contact'
require './lib/ContactInfo'

def main_menu
  puts "To view/edit an individual contact-- enter contact index number.\n"
       "To Add a new contact-- enter 'a'\n"
       "To exit your address book-- enter 'x'\n"
  main_choice = gets.chomp
  if main_choice == 'a'
    puts "Enter the contact name in this format: 'first name, last name':\n"
    new_contact = Contact.create(gets.chomp)
    contact_view(Contact.all[new_contact.id-1])
  elsif main_choice == 'x'



def contact_view(contact)
