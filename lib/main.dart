import 'package:ceiba_flutter/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ceiba_flutter/ui/ListScreen.dart';
import 'package:ceiba_flutter/ui/detailsScreen.dart';



void main() { 
  runApp(const ProviderScope(child:MyApp()));
  setup();
}

class MyApp extends HookWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return
    MaterialApp(
      routes: {
        "/details": (_)=> const DetailsScreen(),
       },
      home: ListScreen(),
    );
  }
}

