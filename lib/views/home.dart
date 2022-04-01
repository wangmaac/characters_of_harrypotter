import 'dart:math';
import 'dart:ui';

import 'package:characters_of_harrypotter/models/character.dart';
import 'package:characters_of_harrypotter/view_model/character_view_model.dart';
import 'package:characters_of_harrypotter/views/widgets/selected_character_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'widgets/character_card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late TextEditingController _searchController;
  Character? selectedCharacter;

  @override
  void initState() {
    _searchController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var readProviderInstance =
        Provider.of<CharacterViewModel>(context, listen: false);
    var watchProviderInstance =
        Provider.of<CharacterViewModel>(context, listen: true);
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Column(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                color: Colors.brown,
                shadowColor: Colors.grey,
                elevation: 5.5,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 3, 3),
                    child: TextField(
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                      controller: _searchController,
                      onChanged: (value) {},
                      decoration: InputDecoration(
                          hintStyle: const TextStyle(color: Colors.white54),
                          border: InputBorder.none,
                          suffixIcon: IconButton(
                            splashRadius: 20.0,
                            onPressed: () {
                              setState(() {
                                _searchController.clear();
                              });
                            },
                            icon: const Icon(Icons.cancel),
                            color: Colors.white,
                          ),
                          hintText: 'Characters'),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1.3,
                      mainAxisSpacing: 5.0,
                      crossAxisSpacing: 5.0),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {
                          watchProviderInstance.setCharacter(
                              readProviderInstance.getList[index]);
                        },
                        child: CharacterCard(
                          index: index,
                        ));
                  },
                  itemCount: readProviderInstance.getRow,
                ),
              )
            ],
          ),
          Visibility(
            visible: readProviderInstance.getCharacter == null ? false : true,
            child: Stack(
              children: [
                GestureDetector(
                  child: BackdropFilter(
                    child: Container(color: Colors.transparent),
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  ),
                  onTap: () {
                    watchProviderInstance.setCharacter(null);
                  },
                ),
                Align(
                  child: AspectRatio(
                    aspectRatio: 1 / 1.3,
                    child: Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: GestureDetector(
                        onTap: () {
                          ///coding rotation
                        },
                        child: SelectedCharacterCard(),
                      ),
                    ),
                  ),
                  alignment: Alignment.center,
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
