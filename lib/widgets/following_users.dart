import 'package:flutter/material.dart';
import 'package:flutter_social_ui/data/data.dart';
import 'package:flutter_social_ui/models/user_model.dart';

class FollowingUsers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
                child: Text(
                  'Following',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
              //Users Following
              Container(
                height: 80.0,
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: users.length,
                    itemBuilder: (BuildContext context, int index) {
                      User user = users[index];
                      return Container(
                        margin: EdgeInsets.all(8.0),
                        height: 60.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 2.0,
                            color: Theme.of(context).primaryColor,
                          ) ,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0, 2),
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: ClipOval(
                          child: Image(
                            height: 60.0,
                            width: 60.0,
                            image: AssetImage(user.profileImageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    }),
              ),
            ],
          );
        
  }
}