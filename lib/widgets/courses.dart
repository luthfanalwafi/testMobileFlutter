import 'package:alwafitestmobileflutter/helper/colors.dart';
import 'package:alwafitestmobileflutter/helper/images.dart';
import 'package:flutter/material.dart';

class Courses extends StatelessWidget {
  final int? itemLength;
  const Courses({
    Key? key,
    this.itemLength,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamic listItems = [
      {
        'image': background1,
        'title': 'Virtual Reality',
        'subtitle': 'Satwik Pachino',
      },
      {
        'image': background2,
        'title': 'Android Developer',
        'subtitle': 'John Victor',
      },
      {
        'image': background3,
        'title': 'IOS Developer',
        'subtitle': 'Wayne Rooney',
      },
    ];

    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Container(
        height: 210.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: itemLength,
          itemBuilder: (context, index) {
            final item = listItems[index];
            return Card(
              color: secondaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: FittedBox(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 15.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5.0),
                      Container(
                        height: 100.0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          child: Image.asset(
                            item['image'],
                          ),
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: FittedBox(
                          child: Text(
                            item['title'],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: FittedBox(
                          child: Text(
                            item['subtitle'],
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
