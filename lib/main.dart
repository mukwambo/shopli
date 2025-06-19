import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopli/common/utils/environment.dart';
import 'package:shopli/common/utils/strings.dart';
import 'package:shopli/src/splashscreen/views/splashscreen_page.dart';

import 'common/utils/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  /// Load the correct environment file based on the build mode
  await dotenv.load(fileName: BEnvironment.fileName);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return ScreenUtilInit(
      /// ScreenUtilInit comes from a Flutter package (flutter_screenutil) that allows our app to be responsive depending on the screen size it is running on.
      designSize: screenSize, /// Gets the screen size of the device
      minTextAdapt: true, /// Allows text to adapt to the screen size
      splitScreenMode: false, /// Disables split screen mode
      useInheritedMediaQuery: true, /// Uses inherited media query for responsive design
      builder: (_, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: BTexts.kAppName,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          ),
          routerConfig: router,
        );
      },
      child: const SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Text(BEnvironment.appBaseUrl),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
