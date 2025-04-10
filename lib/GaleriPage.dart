import 'package:flutter/material.dart';

class Galeripage extends StatefulWidget {
  const Galeripage({super.key});

  @override
  State<Galeripage> createState() => _GaleripageState();
}

class _GaleripageState extends State<Galeripage> {
  final List listFavorit = List.generate(10, (index) => false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.5),
        child: GridView.builder(
          itemCount: 12,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 5.5,
            crossAxisSpacing: 5.5,
          ),
          itemBuilder: (context, index) {
            return GridTile(
              footer: Container(
                color: Colors.black.withOpacity(0.5),
                alignment: Alignment.centerRight,
                child: IconButton(onPressed: (){
                    setState(() {
                      listFavorit[index] = !listFavorit[index];
                    });
                },
                icon: Icon(listFavorit[index]
                ?Icons.favorite
                :Icons.favorite_border,
                color: Colors.pink,
                size: 32,

                ),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network("https//picsum.photos/id/${index*5+2}/200"),
              ),
            );
          },
        ),
      ),
    );
  }
}
//