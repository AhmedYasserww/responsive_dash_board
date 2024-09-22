import 'package:flutter/material.dart';
import 'package:responsive_ui_dash_board/utils/app_images.dart';
import 'package:responsive_ui_dash_board/models/model_of_listTile.dart';
import 'package:responsive_ui_dash_board/views/widgets/active_and_inActive_widget.dart';
import 'package:responsive_ui_dash_board/views/widgets/drawer_item_list_view.dart';
import 'package:responsive_ui_dash_board/views/widgets/user_info_list_tile.dart';
class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 28,right: 20),
        child: CustomScrollView(
            slivers: [
            const SliverToBoxAdapter(child: UserInfoListTile(title: "Lekan Okeowo",subtitle: "demo@gmail.com",image: Assets.assetsImagesFrameSvg,)),
            const SliverToBoxAdapter(child:  SizedBox(height: 8,)),
            const DrawerItemListView(),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                children: [
                  const SizedBox(height: 20,),
                 const Spacer(),
                  InActiveDrawerItem(listTileModel: ListTileModel(title: "Setting system", image: Assets.assetsImagesSettings)),
                  const SizedBox(height: 20,),
                  InActiveDrawerItem(listTileModel: ListTileModel(title: "Setting system", image: Assets.assetsImagesLogout)),
                  const SizedBox(height: 48,),

                ],
              )
              )

          ],
        ),
      ),
    );
  }
}
