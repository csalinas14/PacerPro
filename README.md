# README
In order to run the tests, run the following commands in terminal

cd pacerpro
rspec spec -fd

The soft delete works by having an Item model with an deleted_at attribute which we set to DateTime.now.to_i. The DateTime class is responsible for the time, the now returns the time at which the code is excuted, and the to_i gets rid of the microseconds which helps for testing. The files with the relevant info are in:

app/models/item.rb
spec/item_spec.rb