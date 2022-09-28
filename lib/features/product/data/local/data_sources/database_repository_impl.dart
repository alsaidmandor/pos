import 'package:flutter/foundation.dart';
import 'package:pos/core/network/local/db.dart';
import 'package:pos/features/product/data/local/models/product.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseRepositoryImpl implements DatabaseRepository<Product> {
  late Database database;

  @override
  void createDataBase() {
    openDatabase(
      'pos.db',
      version: 1,
      onCreate: (database, version) {
        if (kDebugMode) {
          print('database created');
        }
        database
            .execute(
                'CREATE TABLE product (id INTEGER PRIMARY KEY, productName TEXT, imagePath TEXT, plateSize TEXT, category TEXT, price TEXT, totalStock TEXT,)')
            .then((value) {
          if (kDebugMode) {
            print('table created');
          }
        }).catchError((error) {
          if (kDebugMode) {
            print('Error When Creating Table ${error.toString()}');
          }
        });
      },
      onOpen: (database) {
        getData(database);
        if (kDebugMode) {
          print('database opened');
        }
      },
    ).then((value) {
      database = value;
      // emit(AppCreateDatabaseState());
    });
  }

  @override
  Future<void> insertTransaction(Product product) async {
    await database.transaction((txn) async {
      txn
          .rawInsert(
        'INSERT INTO tasks(productName , imagePath , plateSize , category , price , totalStock) VALUES("${product.productName}", "${product.imagePath}", "${product.plateSize}", "${product.category}" ,"${product.price}","${product.totalStock}")',
      )
          .then((value) {
        if (kDebugMode) {
          print('$value inserted successfully');
        }

        getData(database);
      }).catchError((error) {
        if (kDebugMode) {
          print('Error When Inserting New Record ${error.toString()}');
        }
      });
    });
  }

  @override
  Future<void> getData(Database database) async {
    await database.rawQuery('SELECT * FROM tasks').then((value) {});
  }

  @override
  Future<void> update(Product product) async {
    await database
        .rawUpdate(
      'UPDATE tasks SET status = ? WHERE id = ?',
    )
        .then((value) {
      getData(database);
      // emit(AppUpdateDatabaseState());
    });
  }

  @override
  Future<void> delete(String id) async {
    await database
        .rawDelete('DELETE FROM tasks WHERE id = ?', [id]).then((value) {
      getData(database);
      // emit(AppDeleteDatabaseState());
    });
  }
}
