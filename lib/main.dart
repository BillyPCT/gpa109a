import 'package:flutter/material.dart';
import 'package:myapp/pengaturan.dart';
import 'package:myapp/storepage.dart';

import 'GaleriPage.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
  // runApp(
  //   MultiProvider(
  //     providers: [
  //       // ChangeNotifierProvider(create: (context) => ProviderProduk()),
  //       // ChangeNotifierProvider(create: (context) => ProviderKeranjang()),
  //     ],
  //     child: MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()),
  //   ),
  // );
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
          style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
        ),
      ),
      body: [
        HomePage(), Galeripage(), 
        StorePage(),pengaturan(),
        ]
        [halsaatini],
      bottomNavigationBar: NavigationBar(
        selectedIndex: halsaatini,
        onDestinationSelected: (int index) {
          setState(() {
            halsaatini = index;
          });
        },
        indicatorColor: Colors.green.shade200,
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(
            icon: Icon(Icons.picture_in_picture),
            label: "Galeri",
          ),
          NavigationDestination(icon: Icon(Icons.store), label: "Store"),
          NavigationDestination(icon: Icon(Icons.settings), label: "Setings"),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder:
          (context, index) => ListTile(
            leading: CircleAvatar(
              foregroundImage: NetworkImage(
                'https://picsum.photos/id/${index * 5 + 2}/200',
              ),
            ),
            title: const Text('billy'),
            subtitle: Text('Pinjam dulu ${index + 1}00 besok diganti'),
            trailing: const Text('12.0'),
          ),
    );
  }
}

class TampilanListView extends StatelessWidget {
  const TampilanListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: CircleAvatar(
            foregroundImage: NetworkImage('https://picsum.photos/id/237/200'),
          ),
          title: const Text('billy'),
          subtitle: Text('Pinjam dulu besok diganti'),
        ),
        ListTile(
          leading: CircleAvatar(
            foregroundImage: NetworkImage('https://picsum.photos/id/237/200'),
          ),
          title: const Text('billy'),
          subtitle: Text('Pinjam dulu besok diganti'),
        ),
      ],
    );
  }
}
