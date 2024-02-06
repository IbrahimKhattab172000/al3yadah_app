import 'package:flutter/material.dart';

import '../../core/helpers/utils.dart';

class AppMapMarker extends StatelessWidget {
  const AppMapMarker({Key? key, this.onTap}) : super(key: key);

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            Utils.getAssetPNGPath('marker'),
            height: 64,
            width: 64,
          ),
          Positioned(
            top: 4,
            child: Image.asset(
              Utils.getAssetPNGPath('mosque'),
              height: 40,
              width: 40,
            ),
          ),
        ],
      ),
    );
  }
}
