import 'package:demo_project/provider/home_provider.dart';
import 'package:provider/provider.dart';

var list = [
  ChangeNotifierProvider<HomeProvider>(create: (context) => HomeProvider()),
];
