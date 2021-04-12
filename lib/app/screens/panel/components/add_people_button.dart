import 'package:flutter/material.dart';

class AddPeopleButton extends StatefulWidget {
  @override
  _AddPeopleButtonState createState() => _AddPeopleButtonState();
}

class _AddPeopleButtonState extends State<AddPeopleButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Color(0xFF4D5A6F)),
      width: 130,
      child: FittedBox(
        child: Row(
          children: [
            Container(
              child: TextButton(
                  style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all(Color(0xFF424D5F)),
                      backgroundColor: MaterialStateProperty.all(Color(0xFF424D5F))),
                  onPressed: () => null,
                  child: Icon(
                    Icons.person_add_alt_1_rounded,
                    size: 20,
                    color: Colors.white,
                  )),
              width: 40,
              height: 35,
            ),
            Padding(
                padding: EdgeInsets.only(left: 5, right: 5),
                child: Text('Add People', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400)))
          ],
        ),
      ),
    );
  }
}
