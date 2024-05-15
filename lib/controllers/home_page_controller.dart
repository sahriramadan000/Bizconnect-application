import 'package:flutter/material.dart';
import 'package:bizconnect_application/models/user_model.dart';
import 'package:bizconnect_application/views/pages/home_page.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<User> fetchUserModel() async {
  final response = await http.get(Uri.parse('https://official-joke-api.appspot.com/random_joke'));
  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    return User(
      setup: data['setup'],
      punchline: data['punchline'],
    );
  } else {
    throw Exception('Failed to fetch user model');
  }
}

class HomePageController extends StatefulWidget {
  @override
  _HomePageControllerState createState() => _HomePageControllerState();
}

class _HomePageControllerState extends State<HomePageController> {
  // late User _user;
  // bool _isLoading = false;
  // String _errorMessage = '';

  @override
  void initState() {
    super.initState();
    // _fetchUserModel();
  }

  // Future<void> _fetchUserModel() async {
  //   setState(() {
  //     _isLoading = true;
  //   });
  //   try {
  //     final user = await fetchUserModel();
  //     setState(() {
  //       _user = user;
  //       _isLoading = false;
  //     });
  //   } catch (error) {
  //     setState(() {
  //       _errorMessage = error.toString();
  //       _isLoading = false;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    // if (_isLoading) {
    //    return Center(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         Image.asset('assets/logo.png', width: 100), // Ganti dengan path logo yang sesuai
    //         SizedBox(height: 20), // Jarak antara logo dan CircularProgressIndicator
    //         CircularProgressIndicator(),
    //       ],
    //     ),
    //   );
    // } else if (_errorMessage.isNotEmpty) {
    //   return Center(child: Text(_errorMessage));
    // } else {
      // return HomePage(user: _user);
      return HomePage();
    // }
  }
}