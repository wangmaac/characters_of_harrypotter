import 'package:characters_of_harrypotter/view_model/character_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../views/home.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GoRouter _goRouter = GoRouter(routes: <GoRoute>[
      GoRoute(path: '/', builder: (context, state) => const Home())
    ]);

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CharacterViewModel())
      ],
      child: MaterialApp.router(
        routerDelegate: _goRouter.routerDelegate,
        routeInformationParser: _goRouter.routeInformationParser,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
      ),
    );
  }
}
