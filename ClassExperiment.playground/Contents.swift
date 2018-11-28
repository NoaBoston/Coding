import UIKit

class newClass
{
    var newVar: Int
    
    init(newVar: Int)
    {
        self.newVar = newVar
    }
}


var firstInstance = newClass.init(newVar: 20)
var secondInstance = firstInstance

firstInstance.newVar = 21

print(secondInstance.newVar)

secondInstance.newVar = 23

print(firstInstance.newVar)

var thirdInstance = newClass.init(newVar: 50)

print(firstInstance.newVar)

firstInstance = thirdInstance

print(firstInstance.newVar)

print(secondInstance.newVar)
