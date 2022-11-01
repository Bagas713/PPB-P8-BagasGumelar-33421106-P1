import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}
class Home extends StatelessWidget {
  final String title = 'Air Terjun Riam Merasap';
  final String location = 'Kabupaten Bengkayang, Kalimantan Barat';
  final String description = 
    '''Air terjun ini memiliki julukan niagaranya Sambas. Mengapa? Karena air terjun ini sangat eksotis dan sangat mirip dengan air terjun Niagara di Amerika Serikat. Air terjun unu dikelilingi oleh pepohonan rindang yang menyejukkan udara serta memiliki kabut yang menyelimutinya. Sehingga karena ada semacam asap atau kabut yang menyelimuti air terjun ini, disebutlah air terjun ini air terjun 'Marasap', kabut ini sebenarnya merupakan pantulan air yang menghantam dasar kolam air terjun. Pada saat musim hujan, kita dapat menyaksikan buih-buih air yang akan terlihat semakin jelas karena volume air yang membesar membuat air terjun semakin lebar. Sekilas, terlihat seperti sebuah gerbang air raksasa. Air terjun ini juga dijadikan sebagai sumber pembangkit listrik tenaga air Kabupaten Sambas, karena memang aliran airnya yang sangat deras. ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: Text('Objek Wisata'),
      ),
      body : SafeArea(
        child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(margin: EdgeInsets.all(2),),
            Image.asset('images/marasap.jpg', 
            height : 250, width : 412,
            fit: BoxFit.fill,),

          Container(
            margin: EdgeInsets.symmetric(vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: const [
                    Icon(Icons.calendar_today),
                    Text('Open Everyday'),
                  ],
                ),
                Column(
                  children: const [
                    Icon(Icons.access_time),
                    Text('07.00 - 16.30'),
                  ],
                ),
                Column(
                  children: const [
                    Icon(Icons.monetization_on),
                    Text('Rp25.000'),
                  ],
                )
              ],
            ),
          ),

          Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(margin: EdgeInsets.all(5),),
                  Text(
                    this.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20,fontFamily: 'Staatliches', fontWeight: FontWeight.bold),
                  ),
                  
                  Text(
                    this.location,
                    textAlign: TextAlign.center, 
                    style: TextStyle(
                      color: Color.fromARGB(255, 149, 161, 171),
                      fontSize: 15, fontFamily: 'Staatliches'
                    ),
                  )
                ],
              ),
            ],
          ),
        ),

          Container(
            padding: EdgeInsets.all(15),
            child: Text(this.description,
            style: TextStyle(
              fontSize: 14, fontFamily: 'Oxygen'
            ),
            textAlign: TextAlign.justify,
            softWrap: true,
            ),
          ),

            SizedBox(height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(padding: EdgeInsets.all(4),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                child: 
                Image.network(
                  'http://backpackerjakarta.com/wp-content/uploads/2017/03/air-terjun-riam-merasap-3.jpg'),
                ),
                ),

                Padding(padding: EdgeInsets.all(4),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                  'https://th.bing.com/th/id/OIP.4tN57pkI67BWJiKtuUCKMQHaEG?w=335&h=184&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
                  ),
                ),

                Padding(padding: EdgeInsets.all(4),
                child: ClipRRect(borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  'https://th.bing.com/th/id/OIP.9xiRMmXx8v-2Ooouddyf4wHaD4?w=291&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
                  ),
                )
                
              ]),
            ),

          

        ],
      ),
    ),
    ),
    );
  }
}