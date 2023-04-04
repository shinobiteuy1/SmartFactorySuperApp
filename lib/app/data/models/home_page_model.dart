// To parse this JSON data, do
//
//     final homePageModel = homePageModelFromJson(jsonString);

import 'dart:convert';

HomePageModel homePageModelFromJson(String str) => HomePageModel.fromJson(json.decode(str));

String homePageModelToJson(HomePageModel data) => json.encode(data.toJson());

class HomePageModel {
    HomePageModel({
        this.name,
        this.positionName,
        this.factoryName,
        this.labelTopBox,
        this.dateTopBox,
        this.labelBottomBox,
        this.dateBottomBox,
        this.templateImage,
        this.cardList,
    });

    String? name;
    String? positionName;
    String? factoryName;
    String? labelTopBox;
    int? dateTopBox;
    String? labelBottomBox;
    int? dateBottomBox;
    String? templateImage;
    List<CardList>? cardList;

    factory HomePageModel.fromJson(Map<String, dynamic> json) => HomePageModel(
        name: json["name"],
        positionName: json["positionName"],
        factoryName: json["factoryName"],
        labelTopBox: json["labelTopBox"],
        dateTopBox: json["dateTopBox"],
        labelBottomBox: json["labelBottomBox"],
        dateBottomBox: json["dateBottomBox"],
        templateImage: json["templateImage"],
        cardList: json["cardList"] == null ? [] : List<CardList>.from(json["cardList"]!.map((x) => CardList.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "positionName": positionName,
        "factoryName": factoryName,
        "labelTopBox": labelTopBox,
        "dateTopBox": dateTopBox,
        "labelBottomBox": labelBottomBox,
        "dateBottomBox": dateBottomBox,
        "templateImage": templateImage,
        "cardList": cardList == null ? [] : List<dynamic>.from(cardList!.map((x) => x.toJson())),
    };
}

class CardList {
    CardList({
        this.checkPointId,
        this.transactionDate,
        this.routeId,
        this.nextRouteId,
        this.farmCode,
        this.farmNameLoc,
        this.farmNameEng,
        this.pondNo,
        this.roundNo,
        this.licensePlate,
        this.sealNo,
        this.sealStatus,
        this.currentStatusId,
        this.currentStatusName,
        this.nextStatusId,
        this.nextStatusName,
        this.updateTimestamp,
        this.status,
        this.createdUserId,
        this.createdDate,
        this.lastUpdatedUserId,
        this.lastUpdatedDate,
    });

    String? checkPointId;
    DateTime? transactionDate;
    String? routeId;
    String? nextRouteId;
    String? farmCode;
    String? farmNameLoc;
    String? farmNameEng;
    String? pondNo;
    int? roundNo;
    String? licensePlate;
    String? sealNo;
    bool? sealStatus;
    String? currentStatusId;
    String? currentStatusName;
    String? nextStatusId;
    String? nextStatusName;
    dynamic updateTimestamp;
    bool? status;
    String? createdUserId;
    DateTime? createdDate;
    String? lastUpdatedUserId;
    dynamic lastUpdatedDate;

    factory CardList.fromJson(Map<String, dynamic> json) => CardList(
        checkPointId: json["checkPointId"],
        transactionDate: json["transactionDate"] == null ? null : DateTime.parse(json["transactionDate"]),
        routeId: json["routeId"],
        nextRouteId: json["nextRouteId"],
        farmCode: json["farmCode"],
        farmNameLoc: json["farmNameLoc"],
        farmNameEng: json["farmNameEng"],
        pondNo: json["pondNo"],
        roundNo: json["roundNo"],
        licensePlate: json["licensePlate"],
        sealNo: json["sealNo"],
        sealStatus: json["sealStatus"],
        currentStatusId: json["currentStatusId"],
        currentStatusName: json["currentStatusName"],
        nextStatusId: json["nextStatusId"],
        nextStatusName: json["nextStatusName"],
        updateTimestamp: json["updateTimestamp"],
        status: json["status"],
        createdUserId: json["createdUserId"],
        createdDate: json["createdDate"] == null ? null : DateTime.parse(json["createdDate"]),
        lastUpdatedUserId: json["lastUpdatedUserId"],
        lastUpdatedDate: json["lastUpdatedDate"],
    );

    Map<String, dynamic> toJson() => {
        "checkPointId": checkPointId,
        "transactionDate": "${transactionDate!.year.toString().padLeft(4, '0')}-${transactionDate!.month.toString().padLeft(2, '0')}-${transactionDate!.day.toString().padLeft(2, '0')}",
        "routeId": routeId,
        "nextRouteId": nextRouteId,
        "farmCode": farmCode,
        "farmNameLoc": farmNameLoc,
        "farmNameEng": farmNameEng,
        "pondNo": pondNo,
        "roundNo": roundNo,
        "licensePlate": licensePlate,
        "sealNo": sealNo,
        "sealStatus": sealStatus,
        "currentStatusId": currentStatusId,
        "currentStatusName": currentStatusName,
        "nextStatusId": nextStatusId,
        "nextStatusName": nextStatusName,
        "updateTimestamp": updateTimestamp,
        "status": status,
        "createdUserId": createdUserId,
        "createdDate": createdDate?.toIso8601String(),
        "lastUpdatedUserId": lastUpdatedUserId,
        "lastUpdatedDate": lastUpdatedDate,
    };
}