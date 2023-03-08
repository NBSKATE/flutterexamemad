import 'package:flutter/material.dart';
import 'package:thuis_gemaakt/models/gerecht.dart';
import 'package:thuis_gemaakt/components/gerecht_item.dart';
import 'package:thuis_gemaakt/components/navbar.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  List<Gerecht> loadedGerecht = [
    Gerecht(
      id: 'p1',
      title: 'Bowl',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \n \n Euismod elementum nisi quis eleifend quam. Tempus egestas sed sed risus. Vel pretium lectus quam id leo in vitae turpis massa. Dolor magna eget est lorem ipsum dolor sit amet. \n Euismod elementum nisi quis eleifend quam. Tempus egestas sed sed risus. Vel pretium lectus quam id leo in vitae turpis massa. Dolor magna eget est lorem ipsum dolor sit amet. \nEuismod elementum nisi quis eleifend quam. Tempus egestas sed sed risus. Vel pretium lectus quam id leo in vitae turpis massa. Dolor magna eget est lorem ipsum dolor sit amet. Euismod elementum nisi quis eleifend quam. Tempus egestas sed sed risus. Vel pretium lectus quam id leo in vitae turpis massa. Dolor magna eget est lorem ipsum dolor sit amet.',
      image: 'images/01_Bowl.jpg',
    ),
    Gerecht(
      id: 'p2',
      title: 'Broccoli',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \n \n Euismod elementum nisi quis eleifend quam. Tempus egestas sed sed risus. Vel pretium lectus quam id leo in vitae turpis massa. Dolor magna eget est lorem ipsum dolor sit amet. \n Euismod elementum nisi quis eleifend quam. Tempus egestas sed sed risus. Vel pretium lectus quam id leo in vitae turpis massa. Dolor magna eget est lorem ipsum dolor sit amet. \nEuismod elementum nisi quis eleifend quam. Tempus egestas sed sed risus. Vel pretium lectus quam id leo in vitae turpis massa. Dolor magna eget est lorem ipsum dolor sit amet. Euismod elementum nisi quis eleifend quam. Tempus egestas sed sed risus. Vel pretium lectus quam id leo in vitae turpis massa. Dolor magna eget est lorem ipsum dolor sit amet.',
      image: 'images/02_Broccoli.jpg',
    ),
    Gerecht(
      id: 'p3',
      title: 'Curry',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \n \n Euismod elementum nisi quis eleifend quam. Tempus egestas sed sed risus. Vel pretium lectus quam id leo in vitae turpis massa. Dolor magna eget est lorem ipsum dolor sit amet. \n Euismod elementum nisi quis eleifend quam. Tempus egestas sed sed risus. Vel pretium lectus quam id leo in vitae turpis massa. Dolor magna eget est lorem ipsum dolor sit amet. \nEuismod elementum nisi quis eleifend quam. Tempus egestas sed sed risus. Vel pretium lectus quam id leo in vitae turpis massa. Dolor magna eget est lorem ipsum dolor sit amet. Euismod elementum nisi quis eleifend quam. Tempus egestas sed sed risus. Vel pretium lectus quam id leo in vitae turpis massa. Dolor magna eget est lorem ipsum dolor sit amet.',
      image: 'images/03_Curry.jpg',
    ),
    Gerecht(
      id: 'p4',
      title: 'Flammenkuchen',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \n \n Euismod elementum nisi quis eleifend quam. Tempus egestas sed sed risus. Vel pretium lectus quam id leo in vitae turpis massa. Dolor magna eget est lorem ipsum dolor sit amet. \n Euismod elementum nisi quis eleifend quam. Tempus egestas sed sed risus. Vel pretium lectus quam id leo in vitae turpis massa. Dolor magna eget est lorem ipsum dolor sit amet. \nEuismod elementum nisi quis eleifend quam. Tempus egestas sed sed risus. Vel pretium lectus quam id leo in vitae turpis massa. Dolor magna eget est lorem ipsum dolor sit amet. Euismod elementum nisi quis eleifend quam. Tempus egestas sed sed risus. Vel pretium lectus quam id leo in vitae turpis massa. Dolor magna eget est lorem ipsum dolor sit amet.',
      image: 'images/04_Flammenkuchen.jpg',
    ),
    Gerecht(
      id: 'p4',
      title: 'Pasta',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \n \n Euismod elementum nisi quis eleifend quam. Tempus egestas sed sed risus. Vel pretium lectus quam id leo in vitae turpis massa. Dolor magna eget est lorem ipsum dolor sit amet. \n Euismod elementum nisi quis eleifend quam. Tempus egestas sed sed risus. Vel pretium lectus quam id leo in vitae turpis massa. Dolor magna eget est lorem ipsum dolor sit amet. \nEuismod elementum nisi quis eleifend quam. Tempus egestas sed sed risus. Vel pretium lectus quam id leo in vitae turpis massa. Dolor magna eget est lorem ipsum dolor sit amet. Euismod elementum nisi quis eleifend quam. Tempus egestas sed sed risus. Vel pretium lectus quam id leo in vitae turpis massa. Dolor magna eget est lorem ipsum dolor sit amet.',
      image: 'images/05_Pasta.jpg',
    ),
    Gerecht(
      id: 'p4',
      title: 'Zalm',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \n \n Euismod elementum nisi quis eleifend quam. Tempus egestas sed sed risus. Vel pretium lectus quam id leo in vitae turpis massa. Dolor magna eget est lorem ipsum dolor sit amet. \n Euismod elementum nisi quis eleifend quam. Tempus egestas sed sed risus. Vel pretium lectus quam id leo in vitae turpis massa. Dolor magna eget est lorem ipsum dolor sit amet. \nEuismod elementum nisi quis eleifend quam. Tempus egestas sed sed risus. Vel pretium lectus quam id leo in vitae turpis massa. Dolor magna eget est lorem ipsum dolor sit amet. Euismod elementum nisi quis eleifend quam. Tempus egestas sed sed risus. Vel pretium lectus quam id leo in vitae turpis massa. Dolor magna eget est lorem ipsum dolor sit amet.',
      image: 'images/06_Zalm.jpg',
    ),
    Gerecht(
      id: 'p4',
      title: 'Burger',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \n \n Euismod elementum nisi quis eleifend quam. Tempus egestas sed sed risus. Vel pretium lectus quam id leo in vitae turpis massa. Dolor magna eget est lorem ipsum dolor sit amet. \n Euismod elementum nisi quis eleifend quam. Tempus egestas sed sed risus. Vel pretium lectus quam id leo in vitae turpis massa. Dolor magna eget est lorem ipsum dolor sit amet. \nEuismod elementum nisi quis eleifend quam. Tempus egestas sed sed risus. Vel pretium lectus quam id leo in vitae turpis massa. Dolor magna eget est lorem ipsum dolor sit amet. Euismod elementum nisi quis eleifend quam. Tempus egestas sed sed risus. Vel pretium lectus quam id leo in vitae turpis massa. Dolor magna eget est lorem ipsum dolor sit amet.',
      image: 'images/07_Sloppyjoe.jpg',
    ),
    Gerecht(
      id: 'p4',
      title: 'Burrito',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \n \n Euismod elementum nisi quis eleifend quam. Tempus egestas sed sed risus. Vel pretium lectus quam id leo in vitae turpis massa. Dolor magna eget est lorem ipsum dolor sit amet. \n Euismod elementum nisi quis eleifend quam. Tempus egestas sed sed risus. Vel pretium lectus quam id leo in vitae turpis massa. Dolor magna eget est lorem ipsum dolor sit amet. \nEuismod elementum nisi quis eleifend quam. Tempus egestas sed sed risus. Vel pretium lectus quam id leo in vitae turpis massa. Dolor magna eget est lorem ipsum dolor sit amet. Euismod elementum nisi quis eleifend quam. Tempus egestas sed sed risus. Vel pretium lectus quam id leo in vitae turpis massa. Dolor magna eget est lorem ipsum dolor sit amet.',
      image: 'images/08_Breakfast_Burrito.jpg',
    ),
    Gerecht(
      id: 'p4',
      title: 'Andijvie',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \n \n Euismod elementum nisi quis eleifend quam. Tempus egestas sed sed risus. Vel pretium lectus quam id leo in vitae turpis massa. Dolor magna eget est lorem ipsum dolor sit amet. \n Euismod elementum nisi quis eleifend quam. Tempus egestas sed sed risus. Vel pretium lectus quam id leo in vitae turpis massa. Dolor magna eget est lorem ipsum dolor sit amet. \nEuismod elementum nisi quis eleifend quam. Tempus egestas sed sed risus. Vel pretium lectus quam id leo in vitae turpis massa. Dolor magna eget est lorem ipsum dolor sit amet. Euismod elementum nisi quis eleifend quam. Tempus egestas sed sed risus. Vel pretium lectus quam id leo in vitae turpis massa. Dolor magna eget est lorem ipsum dolor sit amet.',
      image: 'images/09_Andijvie.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Thuis Gemaakt',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          itemCount: loadedGerecht.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 4,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          itemBuilder: (context, i) => GerechtItem(
            id: loadedGerecht[i].id,
            title: loadedGerecht[i].title,
            image: loadedGerecht[i].image,
            description: loadedGerecht[i].description,
          ),
        ),
      ),
      bottomNavigationBar: const Navbar(),
    );
  }
}
