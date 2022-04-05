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

  late CharacterViewModel readProviderInstance;
  late CharacterViewModel watchProviderInstance;

  bool vs = false;

  @override
  void initState() {
    _searchController = TextEditingController();
    readProviderInstance =
        Provider.of<CharacterViewModel>(context, listen: false);
    readProviderInstance.initList();
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    watchProviderInstance =
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
                      onChanged: (value) {
                        if (value.isEmpty) {
                          readProviderInstance.emptyList();
                        } else {
                          watchProviderInstance.setSelectedList(
                              readProviderInstance.getList.where((element) {
                            return (element.name
                                .toString()
                                .toLowerCase()
                                .contains(value.toLowerCase()));
                          }).toList());
                        }
                      },
                      decoration: InputDecoration(
                          hintStyle: const TextStyle(color: Colors.white54),
                          border: InputBorder.none,
                          suffixIcon: IconButton(
                            splashRadius: 20.0,
                            onPressed: () {
                              setState(() {
                                _searchController.clear();
                                watchProviderInstance.emptyList();
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
                              watchProviderInstance.selectedList[index]);
                          setState(() {
                            vs = true;
                          });
                        },
                        child: CharacterCard(
                          index: index,
                        ));
                  },
                  itemCount: watchProviderInstance.selectedList.length,
                ),
              )
            ],
          ),
          Visibility(
            visible: vs,
            child: Stack(
              children: [
                GestureDetector(
                  child: BackdropFilter(
                    child: Container(color: Colors.transparent),
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  ),
                  onTap: () {
                    watchProviderInstance.setCharacter(null);
                    setState(() {
                      vs = false;
                    });
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
                        child: const SelectedCharacterCard(),
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
