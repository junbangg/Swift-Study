import UIKit

class Customer {
    let name: String
    var card: CreditCard?
    init(name: String) {
        self.name = name
    }
    deinit { print("\(name) is being deinitialized") }
}

class CreditCard {
    let number: UInt64
    let customer: Customer
    init(number: UInt64, customer: Customer) {
        self.number = number
        self.customer = customer
    }
    deinit { print("Card #\(number) is being deinitialized") }
}

var john : Customer?
var card : CreditCard?

john = Customer(name: "John Appleseed")
card = CreditCard(number: 1234_5678_9012_3456, customer: john!)
john!.card = card
john = nil
card = nil

