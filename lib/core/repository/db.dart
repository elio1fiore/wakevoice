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

    return await openDatabase(
      path,
      version: VersionDB.vdb,
      onCreate: (db, version) {
        return db.execute(
          '''CREATE TABLE audios (
        _id INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT NOT NULL,
        recordingPath TEXT NOT NULL,
        note TEXT NOT NULL,
        date TEXT NOT NULL,
        time TEXT NOT NULL,
        dateTime INTEGER NOT NULL
          )''',
        );
      },
    );
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

    final audioEntity = AudioEntity.fromDomain(audio).toJson();
    audioEntity["_id"] = audioEntity.remove('id');

    await db.insert("audios", audioEntity);
  }

  Future<LocalResponse<List<AudioEntity>>> getAudioPaginated(
      int page, int limit) async {
    try {
      final db = await database;
      final nEle = await _countItem();

      int maxPage;

      if (nEle == null) {
        maxPage = 1;
      } else {
        maxPage = (nEle / limit).ceil();
      }

      final offset = (page - 1) * limit;
      final result = await db.query(
        "audios",
        orderBy: "dateTime DESC",
        limit: limit,
        offset: offset,
      );

      final ret = result.map((e) => AudioEntity.fromJson(e)).toList();

      return LocalResponse.withNewData(ret, maxPage: maxPage);
    } catch (e) {
      return const LocalResponse.problemDb();
    }
  }

  Future<int?> _countItem() async {
    final db = await database;

    final value = Sqflite.firstIntValue(
      await db.rawQuery('SELECT COUNT(*) FROM audios'),
    );

    return value;
  }

  Future<AudioEntity> getAudioById(int id) async {
    final db = await database;

    final maps = await db.query(
      "audios",
      columns: [
        "_id",
        "title",
        "recordingPath",
        "note",
        "date",
        "time",
        "dateTime"
      ],
      where: '_id = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      final ret = AudioEntity.fromJson(maps.first);

      return ret;
    } else {
      throw Exception('ID $id not found');
    }
  }

  Future<int> delate(int id) async {
    final db = await database;

    return await db.delete(
      "audios",
      where: '_id = ?',
      whereArgs: [id],
    );
  }
}
