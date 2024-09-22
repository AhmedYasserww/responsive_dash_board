import 'package:flutter/material.dart';
import 'package:responsive_ui_dash_board/models/model_of_listTile.dart';

import 'drawer_item.dart';
class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({super.key});

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  int selectIndex = 0 ;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: 5,
        itemBuilder: (context,i){

          return GestureDetector(
            onTap: (){
              if(selectIndex != i){
                setState(() {
                  selectIndex = i ;
                  print(selectIndex);
                });
              }

            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
                child: DrawerItem(listTileModel:items[i],
                  isActive: selectIndex == i
                ),
            ),
          );
        });
  }
}