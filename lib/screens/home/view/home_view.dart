import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/home_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? homeProviderTrue;
  HomeProvider? homeProviderFalse;

  @override
  Widget build(BuildContext context) {
    homeProviderFalse = Provider.of<HomeProvider>(context, listen: false);
    homeProviderTrue = Provider.of<HomeProvider>(context, listen: true);
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey.shade300,
          appBar: AppBar(title: Text("OTT Platform"),centerTitle: true,backgroundColor: Colors.black,),
          body: GridView.builder(
            itemCount: homeProviderFalse!.logo.length,
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'web');
                  homeProviderFalse!.linkurl(index);
                },
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 130,
                          width: 130,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                "${homeProviderFalse!.logo[index]}",
                                fit: BoxFit.cover,
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("${homeProviderFalse!.name[index]}",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                                letterSpacing: 1)),
                      ],
                    )),
              );
            },
          ),
        ),
    );
  }
}
