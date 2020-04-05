import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> uploadingData(String _productName, String _productPrice,
    String _imageUrl, bool _isFavourite) async {
  await Firestore.instance.collection("products").add({
    'productName': _productName,
    'productPrice': _productPrice,
    'imageUrl': _imageUrl,
    'isFavourite': _isFavourite,
  });
}

Future<void> editProduct(bool _isFavourite,String id) async {
  await Firestore.instance
      .collection("products")
      .document(id)
      .updateData({"isFavourite": !_isFavourite});
}

Future<void> deleteProduct(DocumentSnapshot doc) async {
  await Firestore.instance
      .collection("products")
      .document(doc.documentID)
      .delete();
}
