import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
part 'wifi_Resut_Model.g.dart';

@HiveType(typeId: 0)
class WifiResultModel {
  @HiveField(0)
  DateTime? testDate;
  @HiveField(1)
  String? ping;
  @HiveField(2)
  String? dowoloadSpeed;
  @HiveField(3)
  String? uploadSpeed;


  WifiResultModel({
    this.testDate,
    this.ping,
    this.dowoloadSpeed, 
    this.uploadSpeed,

  });
}
