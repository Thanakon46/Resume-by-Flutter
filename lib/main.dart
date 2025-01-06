import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // List to store prime numbers
  List<int> primeList = [2];  // Start with the first prime number
  int currentPrime = 2;

  // Function to add the next prime number
  void addNextPrime() {
    int nextPrime = currentPrime + 1;
    while (!isPrime(nextPrime)) {
      nextPrime++;
    }
    setState(() {
      primeList.add(nextPrime);
      currentPrime = nextPrime;
    });
  }

  // Function to subtract the previous prime number
  void subtractPreviousPrime() {
    if (primeList.length > 1) {
      setState(() {
        primeList.removeLast();
        currentPrime = primeList.last;
      });
    }
  }

  // Helper function to check if a number is prime
  bool isPrime(int number) {
    if (number <= 1) return false;
    for (int i = 2; i <= number ~/ 2; i++) {
      if (number % i == 0) {
        return false;
      }
    }
    return true;
  }

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
                    'mu.jpg',
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
                // Divider line
                SizedBox(height: 16),
                Text(
                  "-------------------------------------",
                  style: TextStyle(fontFamily: 'Courier', fontSize: 16),
                ),
                SizedBox(height: 16),
                // Display the current prime number
                Text(
                  "Current Prime Number: $currentPrime",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 16),
                // Buttons to add next and previous primes
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: addNextPrime,
                      child: Text("Add Next Prime (+)"),
                    ),
                    ElevatedButton(
                      onPressed: subtractPreviousPrime,
                      child: Text("Add Previous Prime (-)"),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                // Display the list of prime numbers
                Expanded(
                  child: ListView.builder(
                    itemCount: primeList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text("Prime ${index + 1}: ${primeList[index]}"),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
