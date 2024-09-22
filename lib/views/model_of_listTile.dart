
import 'package:responsive_ui_dash_board/utils/app_images.dart';

class ListTileModel{
  final String title;
   final String image ;

  ListTileModel({required this.title,required this.image});
  
}
List <ListTileModel> items = [
  ListTileModel(title: "Dashboard",image: Assets.assetsImagesDashBoardSvg),
  ListTileModel(title: "My Transaction", image: Assets.assetsImagesTransactionSvg),
  ListTileModel(title: "Statistics",image: Assets.assetsImagesStatisticSvg),
  ListTileModel(title: "Wallet Account",image: Assets.assetsImagesWallet2Svg),
  ListTileModel(title: "My Investments",image: Assets.assetsImagesInvestmentSvg),
];