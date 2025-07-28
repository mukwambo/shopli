import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shopli/common/utils/environment.dart';
import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Load the correct environment
  await dotenv.load(fileName: BEnvironment.fileName);
  // Initialize Get Storage
  await GetStorage.init();

  runApp(const MyApp());
}
