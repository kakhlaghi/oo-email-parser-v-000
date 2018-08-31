# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailParser
  @@all = []
  attr_accessor :emails
  def initialize(emails)
    @emails = emails
    @@all << self
    
    
  end
 
  def parse
      
      email_final = []
      parsed_emails = @emails.split(', ')
      parsed_emails = parsed_emails.each {|email| email_final << email.split(' ') }
      email_final = email_final.join(', ')
      email_final = email_final.split(', ')
      
      email_final = email_final.uniq
      email_final
      #this can be much shorter. see solution.. 
  end
  
  
end