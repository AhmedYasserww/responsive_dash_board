import 'package:responsive_ui_dash_board/utils/app_images.dart';

class AllExpensesModel{
  final String image,title,date,price;


  AllExpensesModel({required this.image, required this.title, required this.date, required this.price});

}
List<AllExpensesModel> expensesItem = [
  AllExpensesModel(image: Assets.assetsImagesBalance, title: "Balance", date:"April 2022", price: r"$20,129"),
  AllExpensesModel(image: Assets.assetsImagesInComeSvg, title: "Income", date:"April 2022", price: r"$20,129"),
  AllExpensesModel(image: Assets.assetsImagesInComeSvg, title: "Expenses", date:"April 2022", price: r"$20,129"),


];