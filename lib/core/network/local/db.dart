import 'package:sqflite/sqflite.dart';

abstract class DatabaseRepository<T> {
  void createDataBase();
  Future<void> insertTransaction(T param);
  Future<void> update(T param);
  Future<void> getData(Database database);
  Future<void> delete(String id);
}
