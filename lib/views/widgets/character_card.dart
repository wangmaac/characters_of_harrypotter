import 'package:characters_of_harrypotter/view_model/character_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CharacterCard extends StatelessWidget {
  final int index;
  const CharacterCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var readProviderInstance =
        Provider.of<CharacterViewModel>(context, listen: false);
    return Card(
      elevation: 5.5,
      shadowColor: Colors.grey,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15))),
      color: Colors.brown.shade100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: ClipRRect(
            child: Image.network(
              readProviderInstance.selectedList[index].image,
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
                topRight: Radius.circular(15), topLeft: Radius.circular(15)),
          )),
          Container(
            color: Colors.red,
            height: 30,
            child: Center(
                child: Text(readProviderInstance.selectedList[index].name)),
          ),
        ],
      ),
    );
  }
}
