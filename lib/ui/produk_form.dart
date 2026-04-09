import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/produk_detail.dart';

class Produkform extends StatefulWidget {
  @override
  _Produkformstate createState() => _Produkformstate();
}

class _Produkformstate extends State<Produkform> {
  final _kodeProdukTextboxController = TextEditingController();
  final _namaProdukTextboxController = TextEditingController();
  final _hargaProdukTextboxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form Produk')),
      body: SingleChildScrollView(
        // Menambahkan Padding agar tidak menempel ke pinggir layar
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _textboxKodeProduk(),
              const SizedBox(height: 10), // Jarak antar input
              _textboxNamaProduk(),
              const SizedBox(height: 10),
              _textboxHargaProduk(),
              const SizedBox(height: 20), // Jarak sebelum tombol
              _tombolSimpan(),
            ],
          ),
        ),
      ),
    );
  }

  _textboxKodeProduk() {
    return TextField(
      decoration: const InputDecoration(
        labelText: "Kode Produk:",
        border: OutlineInputBorder(), // Memberikan garis kotak agar lebih rapi
      ),
      controller: _kodeProdukTextboxController,
    );
  }

  _textboxNamaProduk() {
    return TextField(
      decoration: const InputDecoration(
        labelText: "Nama Produk:",
        border: OutlineInputBorder(),
      ),
      controller: _namaProdukTextboxController,
    );
  }

  _textboxHargaProduk() {
    return TextField(
      decoration: const InputDecoration(
        labelText: "Harga Produk:",
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number, // Memunculkan keyboard angka saja
      controller: _hargaProdukTextboxController,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
      child: const Text('Simpan'),
      onPressed: () {
        String kodeProduk = _kodeProdukTextboxController.text;
        String namaProduk = _namaProdukTextboxController.text;
        // Gunakan try-parse untuk menghindari error jika input harga kosong
        int harga = int.tryParse(_hargaProdukTextboxController.text) ?? 0;

        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ProdukDetail(
            kodeProduk: kodeProduk,
            namaProduk: namaProduk,
            harga: harga,
          ),
        ));
      },
    );
  }
}