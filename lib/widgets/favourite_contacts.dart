import 'package:flutter/material.dart';
import 'package:flutter_chat_ui_starter/models/message_model.dart';

class FavouriteContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Favourite Contacts',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.more_horiz),
                  onPressed: () {},
                  iconSize: 30.0,
                  color: Colors.blueGrey,
                ),
              ],
            ),
          ),

          Container(
            height: 120.0,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 10.0),
              scrollDirection: Axis.horizontal,
              itemCount: favorites.length,
                itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: AssetImage(favorites[index].imageUrl),
                      ),

                      SizedBox(height: 6.0),
                      Text(
                        favorites[index].name,
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                );
                }
            ),
          ),
        ],
      ),
    );
  }
}
