import 'package:flutter/material.dart';
import 'package:ott_website/screens/home/provider/home_provider.dart';
import 'package:ott_website/screens/home/view/home_view.dart';
import 'package:ott_website/screens/web/view/web_view.dart';
import 'package:provider/provider.dart';
void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => HomeScreen(),
          'web':(context) => WebScreen(),
        },
      ),
    ),

  );
}
