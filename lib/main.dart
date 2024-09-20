import 'package:flutter/material.dart';

void main() {
  runApp(const Aplikasiku());
}

class Aplikasiku extends StatelessWidget {
  const Aplikasiku({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
       debugShowCheckedModeBanner: false,
      home: HalamanLogin(),
    );
  }
}

class HalamanLogin extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  HalamanLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Tugas 1 Mobile',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              fontFamily: 'arial',
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: const Color(0xFF1E3A8A),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 10),
            Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.blue[50],  
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.blueAccent, width: 2),
              ),
              child: Column(
                children: [
                  const Text(
                    'Menu Login',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Arial',
                      color: Color(0xFF333333),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                    ),
                  ),
                  TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HalamanDashboard()),
                      );
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Color(0xFF333333)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xFFE6F7FF),
    );
  }
}
//


class HalamanDashboard extends StatelessWidget {
  const HalamanDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E3A8A),
        title: const Center(
          child: Text(
            'Dashboard',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              fontFamily: 'arial',
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  minimumSize: const Size(double.infinity, 50),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0), 
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HalamanKelompok()),
                  );
                },
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    '1. Data Nama',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'arial',
                      color: Color(0xFF1E3A8A),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  minimumSize: const Size(double.infinity, 50),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0), 
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HalamanHitung()),
                  );
                },
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    '2. Penjumlahan dan Pengurangan',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'arial',
                      color: Color(0xFF1E3A8A),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  minimumSize: const Size(double.infinity, 50),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0), 
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Halamanganjilgenap()),
                  );
                },
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    '3. Penentuan Ganjil atau Genap',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'arial',
                      color: Color(0xFF1E3A8A),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xFFE6F7FF),
    );
  }
}



class HalamanKelompok extends StatelessWidget {
  const HalamanKelompok({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E3A8A),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Center(
          child: Text(
            'Data Nama',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              fontFamily: 'arial',
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            

            
            SizedBox(
              height: 150,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 4,
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/images/image2.jpg'),
                      ),
                      SizedBox(width: 20), 
                      Expanded(
                        child: Text(
                          'Raden Muhammad Argo Faiz Miftah (124220015)',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),

           
           
          ],
        ),
      ),
      backgroundColor: const Color(0xFFE6F7FF),
    );
  }
}



class HalamanHitung extends StatefulWidget {
  const HalamanHitung({super.key});

  @override
  _HalamanHitungState createState() => _HalamanHitungState();
}

class _HalamanHitungState extends State<HalamanHitung> {
  final TextEditingController angka1penjumlahan = TextEditingController();
  final TextEditingController angka2penjumlahan = TextEditingController();
  final TextEditingController angka1pengurangan = TextEditingController();
  final TextEditingController angka2pengurangan = TextEditingController();

  String additionResult = '';
  String subtractionResult = '';

  double parseInput(String input) {
    try {
      if (input.contains('/')) {
        // Jika input mengandung pecahan, misalnya "1/2"
        List<String> parts = input.split('/');
        double numerator = double.parse(parts[0]);
        double denominator = double.parse(parts[1]);
        return numerator / denominator;
      } else {
        // Jika input adalah angka biasa atau desimal
        return double.parse(input);
      }
    } catch (e) {
      // Jika terjadi error saat parsing, beri nilai default 0
      return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Penjumlahan dan Pengurangan',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            fontFamily: 'arial',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),
                margin: const EdgeInsets.only(bottom: 30),
                decoration: BoxDecoration(
                  color: Colors.green[50],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: const Color.fromARGB(255, 142, 243, 33), width: 2),
                ),
                child: Column(
                  children: [
                    const Text(
                      'Penjumlahan',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                    TextField(
                      controller: angka1penjumlahan,
                      keyboardType: TextInputType.number,
                      decoration:
                          const InputDecoration(labelText: 'Masukkan angka pertama (contoh: 1; 2.5; 1/2)'),
                    ),
                    TextField(
                      controller: angka2penjumlahan,
                      keyboardType: TextInputType.number,
                      decoration:
                          const InputDecoration(labelText: 'Masukkan angka kedua (contoh: 3; 4.5; 3/4)'),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        double num1 = parseInput(angka1penjumlahan.text);
                        double num2 = parseInput(angka2penjumlahan.text);
                        setState(() {
                          additionResult =
                              'Hasil Penjumlahan: $num1 + $num2 = ${num1 + num2}';
                        });
                      },
                      child: const Text(
                        'Hitung Penjumlahan',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      additionResult,
                      style: const TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.red[50],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.red, width: 2),
                ),
                child: Column(
                  children: [
                    const Text(
                      'Pengurangan',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                    TextField(
                      controller: angka1pengurangan,
                      keyboardType: TextInputType.number,
                      decoration:
                          const InputDecoration(labelText: 'Masukkan angka pertama (contoh: 1; 2.5; 1/2)'),
                    ),
                    TextField(
                      controller: angka2pengurangan,
                      keyboardType: TextInputType.number,
                      decoration:
                          const InputDecoration(labelText: 'Masukkan angka kedua (contoh: 3; 4.5; 3/4)'),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        double num1 = parseInput(angka1pengurangan.text);
                        double num2 = parseInput(angka2pengurangan.text);
                        setState(() {
                          subtractionResult =
                              'Hasil Pengurangan: $num1 - $num2 = ${num1 - num2}';
                        });
                      },
                      child: const Text(
                        'Hitung Pengurangan',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      subtractionResult,
                      style: const TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xFFE6F7FF),
    );
  }
}


class Halamanganjilgenap extends StatefulWidget {
  const Halamanganjilgenap({super.key});

  @override
  _HalamanganjilgenapState createState() => _HalamanganjilgenapState();
}

class _HalamanganjilgenapState extends State<Halamanganjilgenap> {
  final TextEditingController numberController = TextEditingController();
  String result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Penentuan Ganjil atau Genap',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Bilangan GENAP adalah bilangan asli yang bisa dibagi dua tanpa sisa, sedangkan bilangan GANJIL adalah bilangan asli yang tidak bisa dibagi dua. Ciri-ciri bilangan genap dan ganjil dapat dilihat dari angka satuannya. Bilangan genap memiliki angka satuan 0, 2, 4, 6, atau 8, sedangkan bilangan ganjil memiliki angka satuan 1, 3, 5, 7, atau 9.',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'arial',
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'YUK KITA CEK SAMA-SAMA !',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'arial',
                    color: Color(0xFF333333)),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.yellow[100],
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.yellow[700]!, width: 2),
              ),
              child: Column(
                children: [
                  TextField(
                    controller: numberController,
                    keyboardType: const TextInputType.numberWithOptions(decimal: true),
                    decoration:
                        const InputDecoration(labelText: 'Masukkan angka'),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      String input = numberController.text;
                      double? number = double.tryParse(input);

                      if (number == null) {
                        setState(() {
                          result = 'Input tidak valid, masukkan angka.';
                        });
                      } else if (number % 1 == 0) {
                        int intNumber = number.toInt();
                        setState(() {
                          result =
                              'Angka $intNumber merupakan bilangan ${(intNumber % 2 == 0) ? 'genap' : 'ganjil'}';
                        });
                      } else {
                        setState(() {
                          result =
                              'Angka $number adalah bilangan desimal dan tidak bisa dikategorikan sebagai ganjil atau genap.';
                        });
                      }
                    },
                    child: const Text('Cek Ganjil/Genap'),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Hasil: $result',
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xFFE6F7FF),
    );
  }
}
