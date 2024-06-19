import 'package:flutter/material.dart';
import 'Home.dart';
import 'List.dart';
import 'Truc.dart';
import 'Bruxelles.dart';

class DeviceScreen extends StatefulWidget {
  
  @override
  _DeviceScreenState createState() => _DeviceScreenState();
}  


  class _DeviceScreenState extends State<DeviceScreen> {
    int _currentScreen = 3;
    final List<Widget> _screenList = [HomeScreen(), ListScreen(), TrucScreen(), BruxelleScreen()];
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: const Text('Clems'),
        ),
        body: _screenList[_currentScreen],
        bottomNavigationBar: BottomNavigationBar(
  onTap: onTabTapped,
  currentIndex: _currentScreen,
  type: BottomNavigationBarType.fixed,
  items: const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Accueil',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.list),
      label: 'Liste',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.book_online),
      label: 'Truc',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.location_city),
      label: 'Bruxelles',
    ),
  ],
  selectedItemColor: Colors.blue, // Couleur des icônes et du texte sélectionné
  unselectedItemColor: Colors.grey, // Couleur des icônes et du texte non sélectionné
),
      );

    }

    void onTabTapped(int index) {
      setState(() {
        _currentScreen = index;
      });
    }

  }
     
