import 'package:demo_project/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomeProvider homeProvider;
  @override
  void initState() {
    homeProvider = Provider.of<HomeProvider>(context, listen: false);
    homeProvider.getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
