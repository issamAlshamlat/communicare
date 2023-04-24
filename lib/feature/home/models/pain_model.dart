import 'package:communicare/helpers/db/database_helper.dart';
import 'package:flutter/material.dart';

class PainModel {
  int intensity;
  Offset position;
  String description;
  String side;

  PainModel({
    required this.intensity,
    required this.position,
    required this.description,
    required this.side,
  });

  Map<String, dynamic> toMap() {
    return {
      'intensity': intensity,
      'position': '${position.dx},${position.dy}',
      'description': description,
      'side': side,
    };
  }

  static Future<int> insertPainItem(PainModel painModel) async {
    final DatabaseHelper dbHelper = DatabaseHelper.instance;
    // final Map<String, dynamic> painMap = painModel.toMap();
    return await dbHelper.insertUserPain(painModel);
  }

  static Future<List<PainModel>> getPainItems() async {
    final DatabaseHelper dbHelper = DatabaseHelper.instance;
    final List<Map<String, dynamic>> painList = await dbHelper.getUserLogList();
    return painList.map((e) => PainModel.fromMap(e)).toList();
  }

  static PainModel fromMap(Map<String, dynamic> map) {
    final List<String> positionStrings = map['position'].split(',');
    final double x = double.parse(positionStrings[0]);
    final double y = double.parse(positionStrings[1]);
    return PainModel(
      intensity: map['intensity'],
      position: Offset(x, y),
      description: map['description'],
      side: map['side'],
    );
  }
}
