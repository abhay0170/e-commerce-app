class TPricingCalculater {
  static double calculateTotalPrice(double productPrice, String location) {
    final texRate = getTaxRateForLocation(location);
    final taxAmount = productPrice * texRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;

    return totalPrice;
  }

  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static getTaxRateForLocation(String location) {
    //look up the tax rate for the given location from a shipping rate API
    // return the appropriate tax rate
    return 0.10;
  }

  static double getShippingCost(String location) {
    //look up the shipping cost for the given location from a shipping rate API
    // calculate the shipping cost based on various factories like distence, weight , etc.
    return 5.00;
  }

  
}
