import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pet_selection/core/models/pet.dart';
import 'package:pet_selection/resources/theme/typography.dart';
import 'package:pet_selection/ui/views/pet_selection/pet_selection_view_model.dart';

final PetSelectionViewModel _petSelectionViewModel = PetSelectionViewModel();

class SearchAndSelectFromListOfPet extends StatelessWidget {
  const SearchAndSelectFromListOfPet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      height: 550.0,
      width: 400.0,
      child: StreamBuilder<QuerySnapshot>(
        stream: _petSelectionViewModel.getPetsCollectionRef('pets').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasData) {
            final petListStream = snapshot.requireData.docs.map((e) {
              return Pet.fromDocument(e);
            }).toList();
            /*for (var item in petListStream) {
              print(item.photoURL);
            }*/
            return ListView.builder(
              itemCount: snapshot.requireData.size,
              itemBuilder: (context, index) {
                return TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Container(
                            width: 350.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Image.network(
                                  // snapshot.data!.docs[index]['pet_name'] or use
                                  petListStream[index].photoURL,
                                  scale: 0.75,

                                  loadingBuilder:
                                      (context, child, loadingProgress) {
                                    return loadingProgress == null
                                        ? child
                                        : LinearProgressIndicator();
                                  },
                                ),
                                SizedBox(height: 30.0),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: Text(
                                    'PetName: ${petListStream[index].petName}',
                                    style: textStyleNormalBold22,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: Text(
                                    'Desc: ${petListStream[index].description}',
                                    style: textStyleNormalBold22,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: Text(
                                    'Price: ${petListStream[index].price}',
                                    style: textStyleNormalBold22,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          actions: <Widget>[
                            IconButton(
                              onPressed: () {
                                _petSelectionViewModel
                                    .getPetsCollectionRef('saved_favorites')
                                    .add(
                                      Pet(
                                        userID: _petSelectionViewModel
                                            .getCurrentUserID(),
                                        petName: petListStream[index].petName,
                                        description:
                                            petListStream[index].description,
                                        photoURL: petListStream[index].photoURL,
                                        price: petListStream[index].price,
                                      ).toMap(),
                                    );
                                print(
                                    'You just save ${petListStream[index].petName} to favorite');
                                Navigator.of(context).pop();
                              },
                              icon: Icon(Icons.favorite, size: 24.0),
                            ),
                            SizedBox(width: 20.0),
                            TextButton(
                              onPressed: () => Navigator.of(context).pop(),
                              child: Text(
                                'Cancel',
                                style: TextStyle(
                                  fontSize: 24.0,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text(snapshot.data!.docs[index]['pet_name']),
                  style: TextButton.styleFrom(
                    primary: Colors.purple,
                    fixedSize: Size(190.0, 60.0),
                    textStyle: TextStyle(fontSize: 24.0),
                  ),
                );
              },
            );
          }
          return Center(child: Text('None of the if statement was executed'));
        },
      ),
    );
  }
}
