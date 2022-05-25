import 'package:cloud_firestore/cloud_firestore.dart';

class NewCropModel {
  String? city;
  String? county;
  String? product;
  double? cultivationArea;

  NewCropModel({
    required this.city,
    required this.county,
    required this.product,
    required this.cultivationArea,
  });

  factory NewCropModel.fromSnapshot(DocumentSnapshot snapshot) {
    return NewCropModel(
        city: snapshot["city"],
        county: snapshot["county"],
        cultivationArea: snapshot["cultivationArea"],
        product: snapshot["product"]);
  }
}
