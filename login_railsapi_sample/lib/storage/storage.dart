
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

const _storage = FlutterSecureStorage();

void login() async {
  const username = 'ユーザー名を取得する処理';
  const email = 'メールアドレスを取得する処理';

  await _storage.write(key: 'username', value: username);
  await _storage.write(key: 'email', value: email);

  // 画面遷移などの処理
}