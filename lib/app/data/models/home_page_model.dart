// To parse this JSON data, do
//
//     final homePageModel = homePageModelFromJson(jsonString);

import 'dart:convert';

HomePageModel homePageModelFromJson(String str) => HomePageModel.fromJson(json.decode(str));

String homePageModelToJson(HomePageModel data) => json.encode(data.toJson());

class HomePageModel {
    HomePageModel({
        this.name,
        this.labelPositionLocal,
        this.labelPositionEng,
        this.position,
        this.labelFactoryNameLocal,
        this.labelFactoryNameEng,
        this.factoryName,
        this.labelTopBoxLocal,
        this.labelTopBoxEng,
        this.topBox,
        this.labelBottonBoxLocal,
        this.labelBottonBoxEng,
        this.bottonBox,
    });

    String? name;
    String? labelPositionLocal;
    String? labelPositionEng;
    String? position;
    String? labelFactoryNameLocal;
    String? labelFactoryNameEng;
    String? factoryName;
    String? labelTopBoxLocal;
    String? labelTopBoxEng;
    String? topBox;
    String? labelBottonBoxLocal;
    String? labelBottonBoxEng;
    String? bottonBox;

    factory HomePageModel.fromJson(Map<String, dynamic> json) => HomePageModel(
        name: json["name"],
        labelPositionLocal: json["label_position_local"],
        labelPositionEng: json["label_position_eng"],
        position: json["position"],
        labelFactoryNameLocal: json["label_factory_name_local"],
        labelFactoryNameEng: json["label_factory_name_eng"],
        factoryName: json["factory_name"],
        labelTopBoxLocal: json["label_top_box_local"],
        labelTopBoxEng: json["label_top_box_eng"],
        topBox: json["top_box"],
        labelBottonBoxLocal: json["label_botton_box_local"],
        labelBottonBoxEng: json["label_botton_box_eng"],
        bottonBox: json["botton_box"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "label_position_local": labelPositionLocal,
        "label_position_eng": labelPositionEng,
        "position": position,
        "label_factory_name_local": labelFactoryNameLocal,
        "label_factory_name_eng": labelFactoryNameEng,
        "factory_name": factoryName,
        "label_top_box_local": labelTopBoxLocal,
        "label_top_box_eng": labelTopBoxEng,
        "top_box": topBox,
        "label_botton_box_local": labelBottonBoxLocal,
        "label_botton_box_eng": labelBottonBoxEng,
        "botton_box": bottonBox,
    };
}
