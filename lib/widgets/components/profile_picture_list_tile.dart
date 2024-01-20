import 'package:admin_dashboard/utils/app_assets.dart';
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePictureListTile extends StatelessWidget {
  final String name;
  final String email;
  const ProfilePictureListTile(
      {super.key, required this.name, required this.email});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(Assets.imagesAvatar1),
        title: Text(
          name,
          style:
              AppStyles.textStyleSemiBold16.copyWith(color: Color(0xff064061)),
        ),
        subtitle: Text(
          email,
          style: AppStyles.textStyleRegular12.copyWith(
            color: Color(
              0xFFAAAAAA,
            ),
          ),
        ),
      ),
    );
  }
}
