class Account < ActiveRecord::Base

   include BCrypt #bzzzzzzzz

   # setter for password: I DON'T UNDERSTAND THIS METHOD....
   def password=(pwd) # define password = pwd(arg)?
      # set password_digest column to encrypted version of user's pwd.
      self.password_digest = BCrypt::Password.create(pwd)
   end

   # getter for password. Define method to return password
   def password
      BCrypt::Password.new(self.password_digest)
   end

   # create method to test if we are allowed authorization
   # so we need to authenticate
   # this method handles backend for login w unm and pwd
   def self.authenticate(user_name, password)
      # find by args: column_name: value_to_find
      current_user = Account.find_by(user_name: user_name)
      # return current user if pwds match
      if (current_user.password == password)
      return current_user
      else
         return nil
      end
   end

end
