import 'package:flutter/material.dart';

class FullImageScreen extends StatelessWidget {
  var profileImage;
  var profileName;

  FullImageScreen(this.profileImage, this.profileName);

  @override
  Widget build(BuildContext context) {
    return _profileImage(context);
  }

  Widget _profileImage(BuildContext context) => Column(
        children: <Widget>[
          SizedBox(
            height: 15,
          ),
          Row(children: <Widget>[
            SizedBox(
              width: 5,
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Material(
                color: Colors.transparent,
                child: Text(profileName,
                    style: TextStyle(fontSize: 15.0, color: Colors.white))),
          ]),
          SizedBox(
            height: 80.0,
          ),
          Container(
              decoration: BoxDecoration(color: Colors.black),
              width: MediaQuery.of(context).size.width,
              child: FittedBox(
                  fit: BoxFit.fill,
                  child: Hero(
                      tag: 'profileImg', child: Image.network(profileImage))))
        ],
      );
}
