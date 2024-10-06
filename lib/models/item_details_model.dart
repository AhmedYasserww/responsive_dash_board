import 'dart:ui';

class ItemDetailsModel {
  final String title,value;
  final Color color ;

  ItemDetailsModel({required this.title, required this.value, required this.color});
  
}
 List<ItemDetailsModel>items =[
   ItemDetailsModel(title: "Design service", value: "40%", color: Color(0xff208CC8)),
   ItemDetailsModel(title: "Design product", value: "25%", color: Color(0xff4EB7F2)),
   ItemDetailsModel(title: "Product royalti", value: "20%", color: Color(0xff064061)),
   ItemDetailsModel(title: "Other", value: "22%", color: Color(0xffE2DECD)),
 ];