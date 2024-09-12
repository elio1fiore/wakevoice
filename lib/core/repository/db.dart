import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:wakevoice/core/domain/audio.dart';
import 'package:wakevoice/core/infrastructure/local_response.dart';
import 'package:wakevoice/core/repository/audio_entity.dart';
import 'package:wakevoice/utils/version_db.dart';

class Db {
  Db();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }

    _database = await _initDB('data_wakevoice_${VersionDB.vdb.toString()}');
    return _database!;
  }

  Future<Database> _initDB(String name) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, name);

    return await openDatabase(path, version: VersionDB.vdb,
        onCreate: (db, version) {
      return db.execute(
        "CREATE TABLE audios (id INTEGER PRIMARY KEY AUTOINCREMENT, filename TEXT, filepath TEXT, duration INTEGER, recordedAt DATETIME, recordTime TIME, recordDate DATE, comment TEXT)",
      );
    });
  }

  Future<void> dropTable() async {
    final db = await database;

    db.execute("DROP TABLE IF EXISTS audios");
  }

  Future close() async {
    final db = await database;

    db.close();
  }

  Future<void> create(Audio audio) async {
    final db = await database;
  }

  Future<LocalResponse<List<AudioEntity>>> getAudioPaginated() async {
    return const LocalResponse.problemDb();
  }
}
