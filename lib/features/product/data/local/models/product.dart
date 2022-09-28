const String columnId = 'id';
const String columnProductName = 'productName';
const String columnImagePath = 'imagePath';
const String columnPlateSize = 'plateSize';
const String columnCategory = 'category';
const String columnPrice = 'price';
const String columnTotalStock = 'totalStock';

class Product {
  late String id;
  late String productName;
  late String imagePath;
  late String plateSize;
  late String category;
  late String price;
  late String totalStock;

  Product();

  Map<String, dynamic> toMap() {
    var map = <String, Object?>{
      columnId: id,
      columnProductName: productName,
      columnImagePath: imagePath,
      columnPlateSize: plateSize,
      columnCategory: category,
      columnPrice: price,
      columnTotalStock: totalStock,
    };
    if (id != null) {
      map[columnId] = id;
    }
    return map;
  }

  Product.fromMap(Map<String, dynamic> map) {
    id = map[columnId];
    productName = map[columnProductName];
    imagePath = map[columnImagePath];
    plateSize = map[columnPlateSize];
    category = map[columnCategory];
    price = map[columnPrice];
    totalStock = map[columnTotalStock];
  }
}
