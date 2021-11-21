import 'package:exam/about.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

var item_name = [
  "Fancy Coat",
  "Green TShirts",
  "Black Shoes",
  "Blue Jeans",
  "Formal Shirt"
];

var pieces_left = [
  "4 pieces left",
  "8 pieces left",
  "10 pieces left",
  "10 pieces left",
  "10 pieces left",
];

var item_image = [
  "assets/coat_img.jpg",
  "assets/shirt_img.jpg",
  "assets/shoe_img.jpg",
  "assets/jeans.jpg",
  "assets/bshirt.jpg"
];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
                //child: Text('Drawer Header'),
                child: ListTile(
                  title: Text('Username',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold)),
                  leading: CircleAvatar(
                    radius: 40,
                  ),
                )),
            ListTile(
              title: const Text('Logout'),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Cart'),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Favorite'),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('About'),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const About()),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text("Home Page",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold)),
        ),
        actions: const [
          //Padding: EdgeInsets.all(10),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.shopping_cart_rounded,
              color: Colors.orange,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: Colors.orange,
                  border: Border.all(
                    color: Colors.red,
                    width: 4,
                  )),
              child: const Text("Limited Time Deals"),
            ),
            GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    //mainAxisExtent: 100,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                shrinkWrap: true,
                // physics: const NeverScrollableScrollPhysics(),
                // scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (BuildContext ctx, index) {
                  return ListTile(
                    tileColor: Colors.white,
                    leading: Image.asset(
                      item_image[index],
                      fit: BoxFit.contain,
                    ),
                    title: Text(pieces_left[index]),
                    //subtitle: Text(pieces_left[index]),
                    contentPadding: EdgeInsets.all(20),
                  );
                }),
            const SizedBox(height: 30),
            //Neecha Wala part hay
            ListView.builder(
                shrinkWrap: true,
                itemCount: item_name.length,
                itemExtent: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    tileColor: Colors.white,
                    leading: Container(
                      color: Colors.blue,
                      height: 70,
                      width: 70,
                      child: Image.asset(
                        item_image[index],
                        fit: BoxFit.fill,
                      ),
                    ),
                    title: Text(item_name[index]),
                    subtitle: Text(pieces_left[index]),
                    trailing: const Icon(
                      Icons.shopping_cart_rounded,
                      color: Colors.orange,
                    ),
                    contentPadding: EdgeInsets.all(20),
                  );
                }),
            const SizedBox(height: 30),

            // ListView.builder(
            //     shrinkWrap: true,
            //     //scrollDirection: Axis.horizontal,
            //     itemCount: item_name.length,
            //     itemExtent: 100,
            //     itemBuilder: (context, index) {
            //       return ListTile(
            //         tileColor: Colors.white,
            //         leading: Container(
            //           color: Colors.blue,
            //           height: 70,
            //           width: 70,
            //           child: Image.asset(
            //             item_image[index],
            //             fit: BoxFit.fill,
            //           ),
            //         ),
            //         title: Text(item_name[index]),
            //         subtitle: Text(pieces_left[index]),
            //         trailing: const Icon(
            //           Icons.shopping_cart_rounded,
            //           color: Colors.orange,
            //         ),
            //         contentPadding: EdgeInsets.all(20),
            //       );
            //     }),
            // const SizedBox(height: 30),
          ],
        ),
      ),
      bottomNavigationBar: DefaultTabController(
        length: 3,
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Profile',
            ),
          ],

          selectedItemColor: Colors.amber[800],
          // onTap: _onItemTapped,
        ),
      ),
    );
  }
}
