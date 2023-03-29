// To parse this JSON data, do
//
//     final carCardModel = carCardModelFromJson(jsonString);

import 'dart:convert';

List<CarCardModel> carCardModelFromJson(String str) => List<CarCardModel>.from(json.decode(str).map((x) => CarCardModel.fromJson(x)));

String carCardModelToJson(List<CarCardModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CarCardModel {
    CarCardModel({
        this.labelPlateNoLocal,
        this.labelPlateNoEng,
        this.plateNo,
        this.labelSealNoLocal,
        this.labelSealNoEng,
        this.sealNo,
        this.labelFarmNameLocal,
        this.labelFarmNameEng,
        this.farmName,
        this.labelRoundNoLocal,
        this.labelRoundNoEng,
        this.roundNo,
        this.labelPondNoLocal,
        this.labelPondNoEng,
        this.pondNo,
        this.labelStatusCarLocal,
        this.labelStatusCarEng,
    });

    String? labelPlateNoLocal;
    String? labelPlateNoEng;
    String? plateNo;
    String? labelSealNoLocal;
    String? labelSealNoEng;
    String? sealNo;
    String? labelFarmNameLocal;
    String? labelFarmNameEng;
    String? farmName;
    String? labelRoundNoLocal;
    String? labelRoundNoEng;
    String? roundNo;
    String? labelPondNoLocal;
    String? labelPondNoEng;
    String? pondNo;
    String? labelStatusCarLocal;
    String? labelStatusCarEng;

    factory CarCardModel.fromJson(Map<String, dynamic> json) => CarCardModel(
        labelPlateNoLocal: json["label_plate_no_local"],
        labelPlateNoEng: json["label_plate_no_eng"],
        plateNo: json["plate_no"],
        labelSealNoLocal: json["label_seal_no_local"],
        labelSealNoEng: json["label_seal_no_eng"],
        sealNo: json["seal_no"],
        labelFarmNameLocal: json["label_farm_name_local"],
        labelFarmNameEng: json["label_farm_name_eng"],
        farmName: json["farm_name"],
        labelRoundNoLocal: json["label_round_no_local"],
        labelRoundNoEng: json["label_round_no_eng"],
        roundNo: json["round_no"],
        labelPondNoLocal: json["label_pond_no_local"],
        labelPondNoEng: json["label_pond_no_eng"],
        pondNo: json["pond_no"],
        labelStatusCarLocal: json["label_status_car_local"],
        labelStatusCarEng: json["label_status_car_eng"],
    );

    Map<String, dynamic> toJson() => {
        "label_plate_no_local": labelPlateNoLocal,
        "label_plate_no_eng": labelPlateNoEng,
        "plate_no": plateNo,
        "label_seal_no_local": labelSealNoLocal,
        "label_seal_no_eng": labelSealNoEng,
        "seal_no": sealNo,
        "label_farm_name_local": labelFarmNameLocal,
        "label_farm_name_eng": labelFarmNameEng,
        "farm_name": farmName,
        "label_round_no_local": labelRoundNoLocal,
        "label_round_no_eng": labelRoundNoEng,
        "round_no": roundNo,
        "label_pond_no_local": labelPondNoLocal,
        "label_pond_no_eng": labelPondNoEng,
        "pond_no": pondNo,
        "label_status_car_local": labelStatusCarLocal,
        "label_status_car_eng": labelStatusCarEng,
    };
}