import UIKit

struct Shoe {
    var brand: String
    var price: Float
    var color: String
}

var sacaiLDV = Shoe(brand: "Nike", price: 170, color: "red")
var sacaiVaporWaffle = Shoe(brand: "Nike", price: 220, color: "fusia")
var darkMocha = Shoe(brand: "Nike", price: 220, color: "brown")
var obsidian = Shoe(brand: "Nike", price: 220, color: "UNC")
var dreamy = Shoe(brand: "Sunnei", price: 450, color: "blue")
var sabo = Shoe(brand: "Sunnei", price: 350, color: "Sail")
let shoes = [sacaiLDV, sacaiVaporWaffle, darkMocha, obsidian, dreamy, sabo]


//MARK:- FILTER
// Old way
var myShoes: [Shoe] = []

for shoe in shoes {
    if shoe.brand == "Nike" {
        myShoes.append(shoe)
    }
}
//FILTER
/*
 위 for loop에서 shoe == 밑에  $0
 */
let myShoes2 = shoes.filter({return $0.brand == "Nike"})

//MARK:- MAP
//MAP
let koreanPrices : [Float] = shoes.map({return $0.price * 1.3})

//MARK: - REDUCE
//REDUCE
var totalPrice : Float = 0.0

for price in koreanPrices {
    totalPrice += price
}

//reduce(initalValue, operation)
let totalKoreanPrice : Float = koreanPrices.reduce(0.0, +)
print(totalKoreanPrice)





