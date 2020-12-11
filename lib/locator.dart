import 'package:cupertino_flutter_app/singletons/global_data.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;
void setupLocator(){
  locator.registerSingleton(GlobalData());
}