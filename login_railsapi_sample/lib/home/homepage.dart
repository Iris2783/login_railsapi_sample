import 'package:flutter/material.dart';
import 'package:login_railsapi_sample/next/nextpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Sample'),
      ),
      body: Center(
        child: SizedBox(
          height: 350, //Containerの高さを設定
          width: 350, //Containerの横幅を設定
          child: Column(
            children: [
              const TextField(
                //入力欄を設定
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    //TextFieldの外枠を設定。
                    borderSide: BorderSide(color: Colors.green, width: 3), //外枠の色と太さを設定。
                  ),
                  contentPadding: EdgeInsets.only(left: 10), //入力欄の左に少し余白を調整する
                  hintText: 'User Name', //入力欄に何を入力して欲しいのかを表示させる
                ),
              ),
              const SizedBox(height: 20), //余白調整
              const TextField(
                //入力欄を設定
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    //TextFieldの外枠を設定。
                    borderSide: BorderSide(color: Colors.green, width: 3), //外枠の色と太さを設定。
                  ),
                  contentPadding: EdgeInsets.only(left: 10),
                  hintText: 'Email',
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(//ボタン作成
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NextPage(),//NextPageに遷移するように設定
                    ),
                  );
                },
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
