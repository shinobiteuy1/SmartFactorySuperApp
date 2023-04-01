import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:smart_factory_suit/app/core/utils/bottnon_nav_bar.dart';
import 'package:smart_factory_suit/app/core/utils/extensions.dart';
import 'package:smart_factory_suit/app/core/values/colors.dart';
import 'package:smart_factory_suit/app/views/comfirm_car.dart';

class QRViewExample extends StatefulWidget {
  const QRViewExample({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _QRViewExampleState();
}

class _QRViewExampleState extends State<QRViewExample> {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 70.0.sp,
        backgroundColor: white,
        centerTitle: true,
        title: Column(
          children: [
            Text("สแกน QR Code",
                style: GoogleFonts.notoSansThai(
                  textStyle: TextStyle(
                    color: black,
                    fontSize: 14.0.sp,
                    fontWeight: FontWeight.w600,
                  ),
                )),
            Text("สแกน QR Code ประจำรถ เพื่อทำรายการ",
                style: GoogleFonts.notoSansThai(
                  textStyle: TextStyle(
                    color: black,
                    fontSize: 11.0.sp,
                    fontWeight: FontWeight.w300,
                  ),
                )),
            Text("เข้าโรงงาน - ออกโรงงาน หรือ รับคิว - ลงคิว",
                style: GoogleFonts.notoSansThai(
                  textStyle: TextStyle(
                    color: black,
                    fontSize: 11.0.sp,
                    fontWeight: FontWeight.w300,
                  ),
                )),
          ],
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: grey,
          ),
          onPressed: () {
            Get.off(const BottonVavBar());
          },
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(flex: 9, child: _buildQrView(context)),
          Expanded(
            flex: 1,
            child: FittedBox(
              fit: BoxFit.contain,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(20.0.sp),
                      child: Text(
                        'ให้ตำแหน่ง QR Code อยู่ตรงกลาง',
                        style: GoogleFonts.notoSansThai(
                          textStyle: const TextStyle(
                            color: black,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return Stack(
      children: [
        QRView(
          key: qrKey,
          onQRViewCreated: _onQRViewCreated,
          overlay: QrScannerOverlayShape(
              borderColor: Colors.blue,
              borderRadius: 10,
              borderLength: 35,
              borderWidth: 4.0.sp,
              overlayColor: const Color.fromRGBO(0, 0, 0, 80),
              cutOutSize: 220.0.sp),
          onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
        ),
        Positioned(
          left: 250.0.sp,
          right: 16,
          top: 450.0.sp,
          child: InkWell(
            onTap: () async {
              await controller?.toggleFlash();
              // setState(() {});
            },
            child: const Icon(
              Icons.flash_on,
              color: Colors.white,
            ),
          ),
        ),
      ],
      // ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      // setState(() {
      //   result = scanData;
        print(scanData.format);
        print(scanData.code);
        Get.off(ConfirmCar() , arguments: {
         "label_page_header" : "เข้าโรงงาน",
         "factory_name" : scanData.code.toString(),
        },);
      // });
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }
}


