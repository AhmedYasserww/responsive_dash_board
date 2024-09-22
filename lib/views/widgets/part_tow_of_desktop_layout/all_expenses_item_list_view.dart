import 'package:flutter/material.dart';
import 'package:responsive_ui_dash_board/models/all_expenses_model.dart';
import 'package:responsive_ui_dash_board/views/widgets/part_tow_of_desktop_layout/all_expenses_item.dart';
class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() => _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Row(
     // children: expensesItem.map((e) =>Expanded(child: AllExpensesItem(allExpensesModel:e))).toList()
      //as map ==>بيكون معاك الانترى يعنى معاك الاندكس
children: expensesItem.asMap().entries.map((e){
  int index = e.key;
  var item = e.value;
  if(index==1){
    return Expanded(
      child: GestureDetector(
        onTap: (){
          updateIndex(index);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
            child: AllExpensesItem(
              selectedItem: selectedIndex ==index,
                allExpensesModel: item)),
      ),
    );
  }else {
   return  Expanded(
     child: GestureDetector(
       onTap: (){
         updateIndex(index);
       },
       child: AllExpensesItem(
       selectedItem: selectedIndex ==index,
         allExpensesModel: item),
     ),
   );
  }
  }).toList()
    );
    //   ListView.builder(
    //   scrollDirection: Axis.horizontal,
    //   itemCount: expensesItem.length,
    //     itemBuilder: (context,i){
    //   return AllExpensesItem(allExpensesModel:expensesItem[i],);
    // });
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }


}
