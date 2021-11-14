import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food/helpers/platform_aware_asset_image.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /*CircleAvatar(
            radius: 90.0,
            backgroundImage: AssetImage('${kIsWeb ? 'assets/' : ''}assets/images/profile.png'),
          ),*/
          ClipRRect(
            borderRadius: BorderRadius.circular(90.0),
            child: Container(
              width: 180.0,
              height: 180.0,
              child: PlatformAwareAssetImage(
                assetPath: 'assets/images/profile2.jpg',
              ),
            ),
          ),
          SizedBox(height: 24.0),
          Text('Tanawoot Samerjai',
              style: Theme.of(context).textTheme.headline1),
          SizedBox(height: 10.0),
          Text('tanawoot.work@gmail.com', style: TextStyle(fontSize: 20.0)),
          Text('Date of Birth : 08/08/2543', style: TextStyle(fontSize: 15.0)),
          Text('Address : Nakhonpathom Thailand', style: TextStyle(fontSize: 15.0)),

        ],
      ),
    );
  }
}
