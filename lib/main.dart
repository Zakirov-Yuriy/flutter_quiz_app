import 'package:flutter/material.dart';
import 'package:flutter_quiz/Pages/home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        textTheme: GoogleFonts.openSansCondensedTextTheme(
          Theme.of(context).textTheme,
        ),
        // color: Colors.white,
      ),
      home: HomePage(),
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorite = false;
  int _favoriteCount = 4444;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          child: IconButton(
              color: Colors.red,
              onPressed: _toggleFavorite,
              icon: _isFavorite
                  ? Icon(Icons.favorite)
                  : Icon(Icons.favorite_border)),
        ),
        SizedBox(
            width: 40,
            child: Container(
              child: Text('$_favoriteCount'),
            ))
      ],
    );
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorite) {
        _isFavorite = false;
        _favoriteCount -= 1;
      } else {
        _isFavorite = true;
        _favoriteCount += 1;
      }
    });
  }
}

class PeronWidget extends StatelessWidget {
  const PeronWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Япония Старшая Некома'),
      ),
      body: Container(
        child: _buildMainColumn(),
      ),
    );
  }

  Widget _buildMainColumn() => ListView(
        children: [
          _buildTopImage(),
          Center(
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(5),
                    child: _buildRating(),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(5),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: _buildAction(),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    child: _buildDesc(),
                  ),
                ],
              ),
            ),
          )
        ],
      );

  Widget _buildTopImage() => Container(
        child: Card(
          elevation: 5,
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Image.asset(
            'assets/images/0.jpeg',
            fit: BoxFit.cover,
          ),
        ),
      );

  Widget _buildRating() => const ListTile(
        title: Text(
          'Куроо',
        ),
        subtitle: Text('Япония, Старшая Некома'),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            FavoriteWidget(),
          ],
        ),
      );

  Widget _buildAction() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _buildButton('Блокирубщий', Icons.star, Colors.black),
          _buildButton('Рост 188 см', Icons.radio_button_checked, Colors.black),
          _buildButton('Возраст 18', Icons.school, Colors.black),
        ],
      );

  Widget _buildButton(String label, IconData icon, Color color) => Column(
        children: <Widget>[
          Icon(
            icon,
            color: Colors.black,
          ),
          Container(
            child: Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: color,
              ),
            ),
          )
        ],
      );

  Widget _buildDesc() => const Text(
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. ',
        style: TextStyle(fontSize: 16),
      );
}
