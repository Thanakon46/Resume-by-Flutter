import 'package:flutter/material.dart';
 
void main() {
  runApp(MyApp());
}
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Personal Info",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Personal Info"),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
             
                Center(
                  child: Image.network(
                    'abc.jpg',
                    width: 100,
                    height: 100,
                  ),
                ),
             
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Firstname: thanakon"),
                    Text("Lastname: kamaoy"),
                    Text("Nickname: arm"),
                  ],
                ),
                SizedBox(height: 16),
                Text("Hobby: play game"),
                Text("Food: mama"),
                Text("Birthplace: home"),
                SizedBox(height: 16),
                Text("Education:"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("elementary: wud khou etong kwang ped year: 50"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("primary:  wud khou etong kwang ped year: 55"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("high school:  wud khou etong kwang ped year: 60"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Undergrad: Naresual university year: 65"),
                  ],
                ),
             
              ],
            ),
          ),
        ),
      ),
    );
  }
}