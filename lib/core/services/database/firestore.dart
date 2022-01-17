import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreDBService {
  /*CollectionReference collectionRef =
      FirebaseFirestore.instance.collection('pets');*/

  CollectionReference collectionRef(String document) {
    CollectionReference collectionRef =
        FirebaseFirestore.instance.collection(document);
    return collectionRef;
  }
}
