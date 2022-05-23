import 'package:alwafitestmobileflutter/helper/colors.dart';
import 'package:alwafitestmobileflutter/helper/images.dart';
import 'package:flutter/material.dart';

class Educators extends StatelessWidget {
  const Educators({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamic listEducators = [
      {
        'icon': rooney2,
        'name': 'Christina Roy',
        'course': 12,
      },
      {
        'icon': rooney3,
        'name': 'Bessie Cooper',
        'course': 24,
      },
      {
        'icon': rooney4,
        'name': 'Anna Watson',
        'course': 18,
      },
      {
        'icon': rooney5,
        'name': 'Wayne Rooney',
        'course': 10,
      },
    ];

    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Top Educators',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 22.0,
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            height: 235.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: listEducators.length,
              itemBuilder: (context, index) {
                final item = listEducators[index];
                return Card(
                  color: secondaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: FittedBox(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 10.0,
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 5.0),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 10.0),
                            child: CircleAvatar(
                              radius: 50.0,
                              backgroundImage: AssetImage(item['icon']),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 5.0),
                            child: FittedBox(
                              child: Text(
                                item['name'],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: FittedBox(
                              child: Text(
                                '${item['course'].toString()} Courses',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
