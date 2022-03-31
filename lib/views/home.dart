import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late TextEditingController _searchController;

  @override
  void initState() {
    _searchController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            color: Colors.brown,
            shadowColor: Colors.grey,
            elevation: 5.5,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 3, 3),
                child: TextField(
                  //textAlignVertical: TextAlignVertical.bot,
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
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1.5,
                  crossAxisSpacing: 5.0),
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.amber,
                );
              },
              itemCount: 500,
            ),
          )
        ],
      ),
    ));
  }
}
