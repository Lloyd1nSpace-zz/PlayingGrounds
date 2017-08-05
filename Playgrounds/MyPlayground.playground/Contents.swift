var shoppingList: [String] = []

func makeShoppingList (_: [String], quantityOfItems: [Int]) -> [String] {
           
          
            shoppingList.insert("\(_[0]) \(quantityOfItems[0])", atIndex: 0)
          
            
        }
let quantity = [6, 4, 12, 4]
let foodList = [
    "Bananas",
    "Apples",
    "Eggs",
    "Rolls",
]


print(makeShoppingList(foodList, quantityOfItems: quantity))


