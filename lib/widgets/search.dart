import 'package:alwafitestmobileflutter/helper/colors.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  TextEditingController textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    textController.text = '';
  }

  @override
  void dispose() {
    super.dispose();
    textController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: TextFormField(
          style: TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(
              top: 20.0,
              bottom: 20.0,
              left: 30.0,
              right: 10.0,
            ),
            filled: true,
            fillColor: secondaryColor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 2.0,
              ),
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            hintText: 'Search Courses, Educators...',
            hintStyle: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
            isDense: false,
            suffixIconConstraints: BoxConstraints(
              minHeight: 20,
              minWidth: 20,
            ),
            suffixIcon: Container(
              padding: EdgeInsets.only(right: 10.0),
              child: IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                onPressed: () {
                  // setState(() {
                  //   _topic!.clear();
                  //   textController.clear();
                  // });
                },
              ),
            ),
          ),
          textAlignVertical: TextAlignVertical.center,
          controller: textController,
          textInputAction: TextInputAction.search,
          onChanged: (value) {
            // if (value.length >= 3) {
            //   onSearch(value);
            // } else {
            //   setState(() {
            //     _topic!.clear();
            //   });
            // }
          },
          onEditingComplete: () {
            if (textController.text.length >= 3) {
              FocusScope.of(context).unfocus();
            }
          },
        ),
      ),
    );
  }
}
