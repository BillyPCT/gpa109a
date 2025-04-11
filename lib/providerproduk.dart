import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:myapp/modelproduk.dart';

Future<List<Produk>> ambilProduk() async {
  final respon = await http.get(Uri.parse('https://fakestoreapi.com/products'));
  if (respon.statusCode == 200) {
    final List data = jsonDecode(respon.body);
    return data.map((json) => Produk.fromJson(json)).toList();
  }
  throw Exception('Gagal mengambil data');
}
