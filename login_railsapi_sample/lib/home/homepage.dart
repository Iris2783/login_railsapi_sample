import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../storage/storage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _storage = const FlutterSecureStorage();

  bool _isLoggedIn = false;

  @override
  void initState() {
    super.initState();
    _checkLoginStatus();
  }

  Future<void> _checkLoginStatus() async {
    final username = await _storage.read(key: 'username');
    final email = await _storage.read(key: 'email');

    setState(() {
      _isLoggedIn = username != null && email != null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Sample'),
      ),
      body: Center(
        child: SizedBox(
          height: 350,
          width: 350,
          child: Column(
            children: [
              const TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 3),
                  ),
                  contentPadding: EdgeInsets.only(left: 10),
                  hintText: 'User Name',
                ),
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 3),
                  ),
                  contentPadding: EdgeInsets.only(left: 10),
                  hintText: 'Email',
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _isLoggedIn ? null : login,
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
