import 'dart:math';
import 'package:flutter/material.dart';

import '../models/tujuan.dart';

import '../models/product.dart';

import '../models/alamat.dart';

class Penyalur with ChangeNotifier {
  late Tujuan _allTujuan;
  late List<Product> _allProduct = [];
  late Alamat _allAlamat;

  Tujuan get allTujuan {
    return _allTujuan;
  }

  void setAllTujuan(Tujuan newTujuan) {
    _allTujuan = newTujuan;
    notifyListeners();
  }

  List<Product> getAllProduct() {
    return [..._allProduct];
  }

  void addAllProduct(List<Product> newProduct) {
    _allProduct = newProduct;
    notifyListeners();
  }

  void printAllProduct() {
    for (int i = 0; i < _allProduct.length; i++) {
      // services.addProduct(
      //   context: context,
      //   jenis: product[i].jenis,
      //   merk: product[i].merk,
      //   satuan: product[i].satuan,
      //   kuantitas: product[i].kuantitas,
      // );
      print(_allProduct[i].jenis);
    }
  }

  Alamat getAllAlamat() {
    return _allAlamat;
  }

  void setAllAlamat(Alamat newAlamat) {
    _allAlamat = newAlamat;
    notifyListeners();
  }
}
