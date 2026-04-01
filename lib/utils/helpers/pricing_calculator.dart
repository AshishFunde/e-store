class TPricingCalculator {
  // Calculate price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);
    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  //Calculate Shipping Cost
  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  //Calculate tax
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    //Lockup the tax arte fopr given locatiobn from a tax rate database or api.
    //Return the appropriate tax rate.
    return 0.10;
  }

  static double getShippingCost(String location) {
    return 5.00;
  }

  //Sum of all cart values and return total amount
  // static double calculateCartTool(cartModel){
  //return cart.item.mao((e)=> e.price).fold(0,(previousPrice,currentPrice)=>previousPrice+(currentPrice ?? 0));
  //}
}
