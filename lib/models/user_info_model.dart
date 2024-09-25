import 'package:responsive_ui_dash_board/utils/app_images.dart';

class UserInfoModel{
  final String image ; 
  final String title;
  final String subTitle;

  UserInfoModel({required this.image, required this.title, required this.subTitle});
  
}
List<UserInfoModel>userInfoItems=[
  UserInfoModel(image: Assets.assetsImagesInvoice1Svg, title: "Madrani Andi", subTitle: "Madraniadi20@gmail"),
  UserInfoModel(image: Assets.assetsImagesInvoice2Svg, title: "Josua Nunito", subTitle: "Josh Nunito@gmail.com"),
  UserInfoModel(image: Assets.assetsImagesInvoice3Svg, title: "Madrani Andi", subTitle: "Madraniadi20@gmail"),


];