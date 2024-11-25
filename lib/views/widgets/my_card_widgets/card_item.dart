import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_ui_dash_board/utils/app_images.dart';
import 'package:responsive_ui_dash_board/utils/app_styles.dart';
class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 420/215,
        child: Container(
          decoration:  ShapeDecoration(
              image: const DecorationImage(
                fit: BoxFit.fill,
                  image: AssetImage(Assets.assetsImagesCard2)),
              color: const Color(0xff4EB7F2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 31,right: 45,top: 12),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text("Name card",style: Styles.styleRegular16(context).copyWith(color: Colors.white),),
                  subtitle: Text("Syah Bandi",style: Styles.styleMedium20(context).copyWith(color: Colors.white),),
                  trailing: SvgPicture.asset(Assets.assetsImagesGallery),
                ),

              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Text("0918 8124 0042 8129",style: Styles.styleMedium20(context).copyWith(color: Colors.white),

                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Text("124 12/20-",style: Styles.styleRegular16(context).copyWith(color: Colors.white),)),
              Flexible(child: const SizedBox(height: 27,))

            ],
          ),
        )

    );
  }
}
