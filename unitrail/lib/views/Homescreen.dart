import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'ARDebug.dart';


class HomeScreen extends StatefulWidget{
  const HomeScreen({Key? key}): super(key: key);
  
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      bottomNavigationBar: GNav(
        backgroundColor: Color.fromARGB(255, 28, 125, 121),
        color: Colors.white,
        activeColor: Colors.white,
        tabBackgroundColor: Color.fromARGB(255, 129, 22, 14),
        gap: 8,
        padding: EdgeInsets.all(15),
        tabs: [
          GButton(
            icon: Icons.fireplace,
            text: "AR Debug!",
            onPressed: (){
               Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const ARDebug();
                    }
                  )
                );
            },
            ),
        
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),

          GButton(
            icon: Icons.search,
            text: 'Search',  
          ),
          
        ],
      ),
    );
  }
}