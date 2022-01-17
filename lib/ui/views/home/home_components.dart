import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pet_selection/core/models/pet.dart';
import 'package:pet_selection/resources/theme/colours.dart';

import 'home_view_model.dart';

final HomeViewModel _homeViewModel = HomeViewModel();

class ListOfFavouritePetWidget extends StatelessWidget {
  const ListOfFavouritePetWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 60.0),
      height: 340.0,
      decoration: BoxDecoration(
        color: black,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: StreamBuilder<QuerySnapshot>(
        stream:
            _homeViewModel.getPetsCollectionRef('saved_favorites').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          //var filteredUserSavedFavoritePetStream // petListStream is doing d same work
          if (snapshot.hasData) {
            final petListStream = snapshot.requireData.docs.map((e) {
              return Pet.fromDocument1(e);
            }).where((element) {
              return (element.userID == _homeViewModel.getCurrentUserID());
            }).toList();
            /*for (var item in petListStream) {
    print(item.photoURL);
    }*/
            return (petListStream.isEmpty)
                ? Center(
                    child: Text(
                      'Is empty, click on SELECT PETS at the top right. '
                      'Pets you add to favorite will show here',
                      style: TextStyle(fontSize: 18.0, color: white),
                    ),
                  )
                : Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: petListStream.length,
                      itemBuilder: (context, index) {
                        Pet pet = petListStream[index];
                        return Container(
                          margin: EdgeInsets.all(20.0),
                          width: 200.0,
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                left: 0.0,
                                right: 0.0,
                                child: Container(
                                  height: 300,
                                  decoration: BoxDecoration(
                                    color: Colors.brown,
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.network(
                                  pet.photoURL,
                                  //scale: 0.75,
                                  loadingBuilder:
                                      (context, child, loadingProgress) {
                                    return loadingProgress == null
                                        ? child
                                        : LinearProgressIndicator();
                                  },
                                ),
                              ),
                              Positioned(
                                top: 191.0,
                                width: 200.0,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        pet.petName,
                                        style: TextStyle(
                                          color: Colors.yellow,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        pet.description,
                                      ),
                                      Text(pet.price),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 266.0,
                                left: 158.0,
                                child: IconButton(
                                  onPressed: () {
                                    _homeViewModel
                                        .getPetsCollectionRef('saved_favorites')
                                        .doc(pet.id)
                                        .delete();
                                    print(
                                        'You removed ${pet.petName} from favorite pet list');
                                  },
                                  icon: Icon(
                                    Icons.cancel_outlined,
                                    color: Colors.black38,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  );
          }
          return Center(child: Text('None of the if statement was executed'));
        },
      ),
    );
  }
}
