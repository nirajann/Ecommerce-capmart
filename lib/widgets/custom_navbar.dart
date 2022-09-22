import 'package:flutter/material.dart';



class customnavbar extends StatelessWidget {
  const customnavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        color: Colors.black,
        child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  icon: Icon(Icons.home, color: Colors.white),
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  }),
              IconButton(
                  icon: Icon(Icons.shopping_cart, color: Colors.white),
                  onPressed: () {
                    Navigator.pushNamed(context, '/cart');
                  }),
              IconButton(
                  icon: Icon(Icons.person, color: Colors.white),
                  onPressed: () {
                    Navigator.pushNamed(context, '/user');
                  })
            ],
          ),
        ),
      );
  }
}
