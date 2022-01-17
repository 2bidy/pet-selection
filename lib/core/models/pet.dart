import 'package:cloud_firestore/cloud_firestore.dart';

class Pet {
  final String? id;
  final String? userID;
  final String petName;
  final String description;
  final String photoURL;
  final String price;

  Pet({
    this.userID,
    this.id,
    required this.petName,
    required this.description,
    required this.photoURL,
    required this.price,
  });

  factory Pet.fromDocument(QueryDocumentSnapshot data) {
    return Pet(
      id: data.id,
      petName: data.get('pet_name'),
      description: data.get('pet_description'),
      photoURL: data.get('photo_url'),
      price: data.get('price'),
    );
  }
  factory Pet.fromDocument1(QueryDocumentSnapshot data) {
    return Pet(
      id: data.id,
      userID: data.get('user_id'),
      petName: data.get('pet_name'),
      description: data.get('pet_description'),
      photoURL: data.get('photo_url'),
      price: data.get('price'),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'user_id': userID,
      'pet_name': petName,
      'pet_description': description,
      'photo_url': photoURL,
      'price': price,
    };
  }
}
