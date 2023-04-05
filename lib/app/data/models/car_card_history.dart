// To parse this JSON data, do
//
//     final carCardHistoryModel = carCardHistoryModelFromJson(jsonString);

import 'dart:convert';

List<CarCardHistoryModel> carCardHistoryModelFromJson(String str) => List<CarCardHistoryModel>.from(json.decode(str).map((x) => CarCardHistoryModel.fromJson(x)));

String carCardHistoryModelToJson(List<CarCardHistoryModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CarCardHistoryModel {
    CarCardHistoryModel({
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

    factory CarCardHistoryModel.fromJson(Map<String, dynamic> json) => CarCardHistoryModel(
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