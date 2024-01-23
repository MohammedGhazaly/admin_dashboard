import 'package:admin_dashboard/utils/app_assets.dart';
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(Assets.imagesCreditCard)),
          color: Color(0xFF4EB7F2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.only(left: 24, right: 24, top: 8),
              title: Text(
                "Name card",
                style: AppStyles.textStyleRegular16.copyWith(
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                "Syah Bandi",
                style: AppStyles.textStyleMedium20.copyWith(
                  color: Colors.white,
                ),
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                "0918 8124 0042 8129",
                style: AppStyles.textStyleSemiBold24.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                "12/20 - 124",
                style:
                    AppStyles.textStyleRegular16.copyWith(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 54 - 28,
            )
          ],
        ),
      ),
    );
  }
}
