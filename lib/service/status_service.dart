import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tarim_4_0/model/new_crop_model.dart';

class StatusService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<NewCropModel> addStatus(String city, String county, String product,
      double cultivationArea) async {
    var ref = _firestore.collection("Product");

    var documentRef = await ref.add({
      "city": city,
      "county": county,
      "product": product,
      "cultivationArea": cultivationArea
    });
    return NewCropModel(
        city: city,
        county: county,
        product: product,
        cultivationArea: cultivationArea);
  }
}
