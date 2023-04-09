# Memorize
Stanford CS193p to learn SwiftUI
### Lecture 2  
* view is immutable when you make change to value inside view the view is rebuild it's body
* @state it change the variable to pointer and the change is done to this place where state refer to 
* we don't use state to build real logic it's just small logic to save the current state 
* if you use the same id for creating different views using ForEach it will create same view twice so if you click on one to do some actions it will do the same of the other `ForEach(emojis, id: \.self)`

* Spacer() take all space that is not needed by any other viewBuilder
* HStack use all space it can in all directions same for VStack 
* LazyVGrid use all space it can use for vertical grid items but small space as possible for the horizontal to fit as much as it can for all elements 
    * LazyVGrid is lazy about accessing the (body vars)"var body: some View" of all it's views,
     we only get value of a "body var" in LazyVGrid for views that actually appears in screen.
    * creating view is light wight, because accessing vars in view is simple
     but accessing the "body var" will cause it to access the "body vars" of it's inner views.
    * LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) 
    takes the number of GridItem() that is needed to be fit in vertical space
    * LazyVGrid(columns: GridItem(.adaptive(minimum: 20, maximum: <#T##CGFloat#>)))
    customize the GridItem width to minimum size and fill the vertical space with as much as GridItem it can fill.

### Lecture 3
* MVVM ->. view is declarative, it reflects what ever you declare in the model 
* MVC ->. view is imperative, you need to call functions one after another to build your UI 

* In SwiftUI the view is build from one place "body var" and build one time all components when  "body var" is being redrawing

* In Generic world the name used to refer to generic type is called "type parameter" Ex. Element
    * `onTapGesture` is example of variables of type function `() -> Void`

* Instance member is  any function, constant or variable that is defined inside class

* proprieties are vars and lets inside class or struct 

* proprieties initializer is assigning value to propriety using an equal sign 

* static function / variable called "type function / type variable or type propriety" because we are trying to emphasize  that this function is actually a function on the very type class, not instances of the type, but the type itself has this function or this variable  

* The type function / propriety is only exist once in the entire app while the normal properties and functions is created newly with every instance 
