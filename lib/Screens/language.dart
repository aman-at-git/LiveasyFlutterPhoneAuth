import 'package:flutter/material.dart';
import 'package:liveasy_auth/Screens/login.dart';



class ChooseLang extends StatefulWidget {
  @override
  _ChooseLangState createState() => _ChooseLangState();
}

class ListItem {
  int value;
  String name;

  ListItem(this.value, this.name);
}

const themeColor = const Color(0xff063970);


class _ChooseLangState extends State<ChooseLang> {

  List<ListItem> _dropdownItems = [
    ListItem(1, "English"),
    ListItem(2, "Hindi"),
  ];

  List<DropdownMenuItem<ListItem>> _dropdownMenuItems;
  ListItem _selectedItem;

  void initState() {
    super.initState();
    _dropdownMenuItems = buildDropDownMenuItems(_dropdownItems);
    _selectedItem = _dropdownMenuItems[0].value;

  }

  List<DropdownMenuItem<ListItem>> buildDropDownMenuItems(List listItems) {
    List<DropdownMenuItem<ListItem>> items = List();
    for (ListItem listItem in listItems) {
      items.add(
        DropdownMenuItem(
          child: Text(listItem.name),
          value: listItem,
        ),
      );
    }
    return items;
  }

  String _chosenValue;
  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      border: Border.all(
        color: themeColor, //                   <--- border color
        width: 2.0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
            child:Container(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 150,
                  ),
                  Container(
                    height: 50,
                    child: Icon(
                      Icons.photo_outlined,
                      size: 50,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 50),
                  Text(
                    'Please select your Language',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'You can change the language\n at any time',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 50,),
                  Container(
                    width: 300,
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                    decoration: myBoxDecoration(),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<ListItem>(
                          value: _selectedItem,
                          items: _dropdownMenuItems,
                          onChanged: (value) {
                            setState(() {
                              _selectedItem = value;
                            });
                          }),
                    ),
                  ),
                  SizedBox(height: 30,),
                  RaisedButton(
                    padding: EdgeInsets.fromLTRB(100, 15, 100, 15),
                    onPressed: ()=>Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    ),
                    child: Text('NEXT',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    color: themeColor,
                  )
                ],
              ),
            )
        ),
      ),
    );
  }
}
