import 'package:flutter/material.dart';
import 'package:profile_view_flutter/tools/page_route.dart';
import 'package:profile_view_flutter/ui/full_image_screen.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final profileImage =
      'https://avatars3.githubusercontent.com/u/37104937?s=460&v=4';
  final profileName = 'Bhupendra Pundir';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chats'),
      ),
      body: bodyData(),
    );
  }

  Widget bodyData() => ListTile(
        leading: InkWell(
            child: Hero(
              tag: 'profileImg',
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  height: 50.0,
                  width: 50,
                  child: Image.network(profileImage),
                ),
              ),
            ),
            onTap: () => {
                  Navigator.push(
                      context,
                      MyPageRoute(
                          builder: (BuildContext context) =>
                              profileImageDialog()))
                }),
        title: Text(profileName),
        subtitle: Row(
          children: <Widget>[Icon(Icons.check), Text('Hello..')],
        ), //Text('${Icons.check}Hello..'),
        trailing: Text('8:45PM'),
      );

  fullViewProfile(String profileImage, String profileName) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) =>
                FullImageScreen(profileImage, profileName)));
  }

  profileImageDialog() => Container(
      child: Padding(
          padding:
              const EdgeInsets.only(top: 90, left: 55, right: 85, bottom: 245),
          child: Material(
              borderRadius: BorderRadius.circular(4.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    InkWell(
                      onTap: () => fullViewProfile(profileImage, profileName),
                      child: Hero(
                        tag: 'profileImg',
                        child: Container(child: Image.network(profileImage)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.message,
                                color: Color(0xff075E54),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.call,
                                color: Color(0xff075E54),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.videocam,
                                color: Color(0xff075E54),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.info,
                                color: Color(0xff075E54),
                              ),
                            )
                          ]),
                    )
                  ]))));
}
