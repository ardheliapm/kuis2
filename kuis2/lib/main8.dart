import 'package:encrypt/encrypt.dart';
import 'dart:convert';

void main() {
  // 1️⃣ Buat key dan IV (harus panjangnya sesuai)
  final key = Key.fromUtf8(
    '0123456789ABCDEF0123456789ABCDEF',
  ); // 32 karakter = 256-bit key

  final iv = IV.fromUtf8(
    '0123456789ABCDEF',
  ); // 16 karakter = 128-bit IV

  // 2️⃣ Buat encrypter AES (mode CBC)
  final encrypter = Encrypter(AES(key, mode: AESMode.cbc));

  // 3️⃣ Data yang ingin dienkripsi
  final plainText = 'Ini rahasia besar saya 😎';

  // 4️⃣ Enkripsi
  final encrypted = encrypter.encrypt(plainText, iv: iv);
  print('🔐 Encrypted (base64): ${encrypted.base64}');

  // 5️⃣ Dekripsi
  final decrypted = encrypter.decrypt(encrypted, iv: iv);
  print('🔓 Decrypted text: $decrypted');

  // 6️⃣ Contoh enkripsi data JSON
  final data = {
    'user': 'luqman',
    'token': 'abc123xyz',
  };

  final jsonString = jsonEncode(data);

  final encryptedJson = encrypter.encrypt(jsonString, iv: iv);
  print('🔐 Encrypted JSON: ${encryptedJson.base64}');

  final decryptedJson = encrypter.decrypt(encryptedJson, iv: iv);
  print('🔓 Decrypted JSON: $decryptedJson');
}
