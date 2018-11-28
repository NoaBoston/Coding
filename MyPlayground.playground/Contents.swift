import UIKit

struct chickens
{
    var newBreed: breed
    enum breed
    {
        case leghorn
    }
}

var newChicken = chickens(newBreed: .leghorn)
print(newChicken.newBreed)

