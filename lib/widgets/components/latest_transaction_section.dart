import 'package:admin_dashboard/models/user_info_model.dart';
import 'package:admin_dashboard/utils/app_assets.dart';
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/widgets/components/profile_picture_list_tile.dart';
import 'package:flutter/material.dart';

class LatestTransactionSection extends StatelessWidget {
  const LatestTransactionSection({
    super.key,
  });
  static List<UserInfoModel> items = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        name: "Madrani Andi",
        email: "Madraniadi20@gmail "),
    UserInfoModel(
        image: Assets.imagesAvatar1,
        name: "Josua Nunito",
        email: "Josh Nunito@gmail.com"),
    UserInfoModel(
        image: Assets.imagesAvatar1,
        name: "Madrani Andi",
        email: "Madraniadi20@gmail"),
    UserInfoModel(
        image: Assets.imagesAvatar1,
        name: "Madrani Andi",
        email: "Madraniadi20@gmail"),
    UserInfoModel(
        image: Assets.imagesAvatar1,
        name: "Madrani Andi",
        email: "Madraniadi20@gmail"),
    UserInfoModel(
        image: Assets.imagesAvatar1,
        name: "Madrani Andi",
        email: "Madraniadi20@gmail"),
    UserInfoModel(
        image: Assets.imagesAvatar1,
        name: "Madrani Andi",
        email: "Madraniadi20@gmail"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Latest Transaction",
          style: AppStyles.textStyleMedium16
              .copyWith(color: const Color(0xFF064060)),
        ),
        const SizedBox(
          height: 12,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: items.map((e) {
              return IntrinsicWidth(
                child: ProfilePictureListTile(userInfoModel: e),
              );
            }).toList(),
          ),
        )
        // SizedBox(
        //   height: 80,
        //   child: ListView.builder(
        //     itemCount: items.length,
        //     scrollDirection: Axis.horizontal,
        //     itemBuilder: (context, index) {
        //       return IntrinsicWidth(
        //         child: ProfilePictureListTile(
        //           userInfoModel: items[index],
        //         ),
        //       );
        //     },
        //   ),
        // )
      ],
    );
  }
}
