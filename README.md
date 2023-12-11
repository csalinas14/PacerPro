# README

The soft delete works by having an Item model with an deleted_at attribute which we set to DateTime.now.to_i. The DateTime class is responsible for the time, the now returns the time at which the code is excuted, and the to_i gets rid of the microseconds which helps for testing.