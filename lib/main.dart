import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        // ChangeNotifierProvider(create: (context) => ProviderProduk()),
        // ChangeNotifierProvider(create: (context) => ProviderKeranjang()),
      ],
      child: MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int halsaatini = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "WhatsApp",
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: [
      // HomePage(),
      // GaleriPage(),
      // StorePage(),
      ][halsaatini],
      bottomNavigationBar: NavigationBar(
        selectedIndex:halsaatini,
        onDestinationSelected: (int index) {
          setState(() {
            halsaatini = index;
          });
        },
        indicatorColor: Colors.green.shade200,
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.picture_in_picture), label: "Galeri"),
           NavigationDestination(icon: Icon(Icons.store), label: "Store"), 

        ],

      ),
    );
  }
}
