class OnBoardingModel {
  String image;
  String title;
  String Decsription;

  OnBoardingModel(
      {required this.image, required this.title, required this.Decsription});
}

List<OnBoardingModel> onboardingdata = [
  OnBoardingModel(
      image: "assets/images/1.png",
      title: "CHOOSE YOUR PRODUCT",
      Decsription:
          "A product description is copy that informs potential customers about the product's benefits to convince them to buy."),
  OnBoardingModel(
      image: "assets/images/2.png",
      title: "ADD TO YOUR CART",
      Decsription:
          "Payment is the transfer of money, goods, or services in exchange for goods and services in acceptable proportions."),
  OnBoardingModel(
      image: "assets/images/3.png",
      title: "PAY BY CART",
      Decsription:
          "The carrying and turning over of letters, goods, etc., to a designated recipient or recipients."),
];
