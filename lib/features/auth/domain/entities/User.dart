import 'package:equatable/equatable.dart';

class User extends Equatable {
  late String uId;
  late String name;
  late String businessName;
  late String phone;
  late String image;
  late String currency;

  User(this.uId, this.name, this.businessName, this.image, this.phone,
      this.currency);

  User.fromMap(Map<String, dynamic> json) {
    uId = json['uId'];
    name = json['name'];
    businessName = json['businessName'];
    phone = json['phone'];
    image = json['image'];
    currency = json['currency'];
  }

  Map<String, dynamic> toMap() => {
        'uId': uId,
        'name': name,
        'businessName': businessName,
        'phone': phone,
        'image': image,
        'currency': currency,
      };

  @override
  // TODO: implement props
  List<Object?> get props => [uId, name, phone];
}
