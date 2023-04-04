import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'th_TH': {
          'email': 'อีเมล์',
          'farm_name': 'ชื่อฟาร์ม',
          'pond_no': 'เลขบ่อ',
          'round_no': 'เที่ยว',
          'seal_no': 'เลข Seal',
          'seal_status': 'สถานะ Seal',
          'car_status': 'สถานะรถ',
          'license_plate': 'ทะเบียน',
        },
        'en_US': {
          'email': 'Email.',
          'farm_name': 'FarmName.',
          'pond_no': 'Pond No.',
          'round_no': 'Round No.',
          'seal_no': 'Seal No.',
          'seal_status': 'Seal Status.',
          'car_status': 'Car Status',
          'license_plate': 'Plate No.',
        }
      };
}