import 'dart:math';

import 'package:characters_of_harrypotter/view_model/character_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SelectedCharacterCard extends StatefulWidget {
  const SelectedCharacterCard({Key? key}) : super(key: key);

  @override
  State<SelectedCharacterCard> createState() => _SelectedCharacterCardState();
}

class _SelectedCharacterCardState extends State<SelectedCharacterCard> {
  double before = 0.0;
  double myDistance = 0.0;

  @override
  Widget build(BuildContext context) {
    var readProviderInstance =
        Provider.of<CharacterViewModel>(context, listen: false);
    return Transform(
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.001)
        ..rotateY(-pi * myDistance / 100),
      alignment: FractionalOffset.center,
      child: GestureDetector(
        onHorizontalDragStart: (detail) {
          before = detail.localPosition.dx;
        },
        onHorizontalDragUpdate: (detail) {
          setState(() {
            if (detail.localPosition.dx - before > 100) {
              myDistance = 100;
            } else if (detail.localPosition.dx - before < 0) {
              myDistance = 0;
            } else {
              myDistance = detail.localPosition.dx - before;
            }
          });
        },
        child: myDistance > 50
            ? Transform(
                transform: Matrix4.identity()..rotateY(pi),
                alignment: FractionalOffset.center,
                child: Container(
                  color: Colors.brown,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('${readProviderInstance.getCharacter.name}'),
                      Text('${readProviderInstance.getCharacter.species}'),
                      Text('${readProviderInstance.getCharacter.gender}'),
                      Text('${readProviderInstance.getCharacter.house}'),
                      Text('${readProviderInstance.getCharacter.dateOfBirth}'),
                      Text('${readProviderInstance.getCharacter.yearOfBirth}'),
                      Text('${readProviderInstance.getCharacter.wizard}'),
                      Text('${readProviderInstance.getCharacter.ancestry}'),
                      Text('${readProviderInstance.getCharacter.eyeColour}'),
                      Text('${readProviderInstance.getCharacter.hairColour}'),
                      Text('${readProviderInstance.getCharacter.wand}'),
                      Text(
                          '${readProviderInstance.getCharacter.hogwartsStudent}'),
                      Text(
                          '${readProviderInstance.getCharacter.hogwartsStaff}'),
                      Text('${readProviderInstance.getCharacter.actor}'),
                      Text(
                          '${readProviderInstance.getCharacter.alternate_actors}'),
                      Text('${readProviderInstance.getCharacter.alive}'),
                    ],
                  ),
                ),
              )
            : Card(
                elevation: 5.5,
                shadowColor: Colors.grey,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15))),
                color: Colors.brown.shade100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: ClipRRect(
                      child: Image.network(
                        readProviderInstance.getCharacter.image,
                        errorBuilder: (context, object, trace) {
                          return const Center(
                            child: Text('Preparing the picture.'),
                          );
                        },
                        loadingBuilder: (context, widget, chunk) {
                          if (chunk == null) {
                            return widget;
                          } else {
                            return const Center(
                              child: CircularProgressIndicator.adaptive(),
                            );
                          }
                        },
                        width: double.infinity,
                        fit: BoxFit.cover,
                        //fit: BoxFit.fitWidth,
                      ),
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(15),
                          topLeft: Radius.circular(15)),
                    )),
                    Container(
                      color: Colors.red,
                      height: 30,
                      child: Center(
                          child: Text(readProviderInstance.getCharacter.name)),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
