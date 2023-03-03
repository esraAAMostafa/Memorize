# Memorize
Stanford CS193p to learn SwiftUI
### Lecture 2  
* view is immutable when you make change to value inside view the view is rebuild it's body
* @state it change the variable to pointer and the change is done to this place where state refer to 
* we don't use state to build real logic it's just small logic to save the current state 
* if you use the same id for creating different views using ForEach it will create same view twice so if you click on one to do some actions it will do the same of the other `ForEach(emojis, id: \.self)`
