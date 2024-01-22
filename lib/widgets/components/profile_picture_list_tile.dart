import 'package:admin_dashboard/models/user_info_model.dart';
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePictureListTile extends StatelessWidget {
  final UserInfoModel userInfoModel;
  const ProfilePictureListTile({super.key, required this.userInfoModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userInfoModel.image),
          title: Text(
            userInfoModel.name,
            style: AppStyles.textStyleSemiBold16
                .copyWith(color: Color(0xff064061)),
          ),
          subtitle: Text(
            userInfoModel.email,
            style: AppStyles.textStyleRegular12.copyWith(
              color: Color(
                0xFFAAAAAA,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
