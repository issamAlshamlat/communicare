import 'dart:async';
import 'package:communicare/feature/home/models/pain_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._instance();
  static Database? _db;

  DatabaseHelper._instance();

  Future<Database> get db async {
    if (_db == null) {
      _db = await _initDb();
    }
    return _db!;
  }

  Future<Database> _initDb() async {
    final String dbPath = await getDatabasesPath();
    final String path = join(dbPath, 'my_database.db');

    print('1231231${path}');

    final Database db = await openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute(
          'CREATE TABLE user_pain(intensity INTEGER, position TEXT, description TEXT, side TEXT)',
        );
      },
    );
    return db;
  }

  Future<int> insertUserPain(PainModel userPain) async {
    final Database db = await this.db;
    return await db.insert('user_pain', userPain.toMap());
  }

  Future<List<Map<String, dynamic>>> getUserLogList() async {
    final Database db = await this.db;
    return await db.query('user_pain');
  }
}
