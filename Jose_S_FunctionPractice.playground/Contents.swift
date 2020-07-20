import Cocoa

func main(){
    let jacket = 199.00
    // call the clearance function passing it the jacket price, storing the result in a variable - the jacket should be 50% off - print the clearance price
    let clearancePrice = clearance(itemPrice: jacket)
    print("Clearance Price: \(clearancePrice)")
    // call the thirty function, pass it the clearance price
    // print the new price with the additional discount
    let itemPrice = clearancePrice - thirty(itemPrice: clearancePrice)
    print("Thirty Percent Off: \(itemPrice)")
    // call the sales tax function, pass it the price with the additional discount. Make sales tax 6% (0.06)
    let salesTaxPrice = salesTax(itemPrice: itemPrice)
    // print the sales tax amount
    print("Sales Tax: \(salesTaxPrice)")
    
    //call the grand total passing it 2 arguments the discounted total and sales tax, add the two together and return the total
    let grandTotal = purchasePrice(itemPrice: itemPrice, salesTax: salesTaxPrice)
    // print the total
    print("Grand Total: \(grandTotal)")
}

func clearance(itemPrice: Double) -> (Double) {
    // add an argument in main and clearance with the initial price of the jacket, return the clearance price (jacket *.5 - 50% off)
    return itemPrice * 0.5
}


func thirty(itemPrice: Double) -> (Double) {
    // complete the function to recieve calculate 30% off of the clearnance price (price * 0.3)
    return itemPrice * 0.3

}


func salesTax(itemPrice: Double) -> (Double) {
    // complete the function to calculate the sales tax (price * 0.06)
    return itemPrice * 0.06

}

func purchasePrice(itemPrice: Double, salesTax: Double) -> (Double){
    return itemPrice + salesTax
    // complete the function to calcualte the purchase price by passing the price and the sales tax, adding them together and returning the total
}

main()
