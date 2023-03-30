import 'package:flutter/material.dart';

import '../core/utils/qr_scan_page.dart';
import '../core/values/colors.dart';

class QRCode extends StatelessWidget {
  const QRCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return QRScanPage();
    // return const Scaffold(
    //   backgroundColor: yellow,
    //   body: Center(
    //     child: Text(
    //       'QRCode',
    //       style: TextStyle(
    //         fontWeight: FontWeight.bold,
    //         fontSize: 12.0,
    //       ),
    //     ),
    //   ),
    // );
  }
}