import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rundate/core/utils/size_util.dart';
import 'package:url_launcher/url_launcher.dart';

class EndDrawer extends StatelessWidget {
  const EndDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.horizontal(left: Radius.circular(15.size)),
      ),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: 50.size,
            left: 10.size,
            right: 10.size,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 10.size,
                  bottom: 30.size,
                ),
                child: SvgPicture.asset('assets/image/svgviewer-output.svg'),
              ),
              InkWell(
                onTap: () {
                  launchUrl(
                    Uri.parse('https://forms.gle/MYe82KqNjAKCfQWi6'),
                    mode: LaunchMode.externalApplication,
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10.size),
                  child: Text(
                    '일정추가',
                    style: TextStyle(
                      fontSize: 16.size,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  launchUrl(
                    Uri.parse('https://toss.me/jejst/1000'),
                    mode: LaunchMode.externalApplication,
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10.size),
                  child: Text(
                    '후원하기',
                    style: TextStyle(
                      fontSize: 16.size,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
