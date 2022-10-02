import 'package:flutter/material.dart';

class TowButtons extends StatelessWidget {
  final up, down, downPage;

  final void Function()? fun1;

  const TowButtons({
    Key? key,
    this.up,
    this.down,
    this.downPage,
    this.fun1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton(
          onPressed: fun1,
          child: Container(
              width: 350,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Center(
                child: Text(
                  up,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 11),
          child: Row(
            children: [
              Container(
                height: 1,
                width: 140,
                color: Colors.black54,
              ),
              SizedBox(width: 20),
              Text("OR"),
              SizedBox(width: 20),
              Container(
                height: 1,
                width: 140,
                color: Colors.black54,
              )
            ],
          ),
        ),
        SizedBox(height: 10),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) => downPage),
              ),
            );
          },
          child: Container(
            width: 350,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(
                  color: Colors.orange,
                  width: 3,
                )),
            child: Center(
              child: Text(
                down,
                style: TextStyle(
                  color: Colors.orange,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class DropDownWithText extends StatelessWidget {
  final text;

  final List<String> list;
  final String? dropdownValue;

  DropDownWithText({Key? key, this.text, required this.list, this.dropdownValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String dropdownValue = list.first.toString();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border: Border.all(
                color: Colors.orange,
                width: 3,
              )),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: DropdownButton<String>(
              underline: Container(),
              value: dropdownValue,
              icon: const Icon(Icons.arrow_drop_down_sharp),
              elevation: 16,
              style: const TextStyle(color: Colors.black),
              onChanged: (String? value) {
                // This is called when the user selects an item.
                dropdownValue = value!;
              },
              items: list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
