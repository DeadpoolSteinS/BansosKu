import 'dart:convert';

import 'package:bansosku/constants/my_env.dart';
import 'package:bansosku/constants/my_tools.dart';
import 'package:bansosku/models/productanduser.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RincianService {
  Future<List<UserProduct>> fetchAllProduct({
    required BuildContext context,
  }) async {
    print("tes1");
    List<UserProduct> products = [];
    try {
      http.Response res = await http.get(
        Uri.parse('$uri/api/products/'),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      print("tes2");
      print(jsonDecode(res.body).length);

      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () {
          print("tes onsucces");
          for (int i = 0; i < jsonDecode(res.body).length; i++) {
            print("di looping");
            products.add(
              UserProduct.fromJson(
                jsonEncode(
                  jsonDecode(res.body)[i],
                ),
              ),
            );
          }
        },
      );
      print(products[0].user.password);
    } catch (e) {
      showSnackBar(context, e.toString());
    }
    return products;
  }
}
