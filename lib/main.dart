import "package:flutter/foundation.dart";
import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      home: PageOne(),
    ),
  );
}

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Wybór zadania",
          textAlign: TextAlign.center,
          style: TextStyle(),
        ),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: Text("Visibility/Opacity",
                  style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageTwo(),
                  ),
                );
              },
            ),
            TextButton(
              child:
                  Text("Card ListTile", style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageThree(),
                  ),
                );
              },
            ),
            TextButton(
              child: Text("ListView.builder",
                  style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageFive(),
                  ),
                );
              },
            ),
            TextButton(
              child: Text("TextField", style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageSix(),
                  ),
                );
              },
            ),
            TextButton(
              child: Text("TextEditingController",
                  style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageSeven(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class PageTwo extends StatefulWidget {
  PageTwo();
  @override
  _PageTwoState createState() => _PageTwoState();
}

double _myOpacity = 1.0;

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Invisible/Opacity", textAlign: TextAlign.center),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              child: Text(
                "To jest niewidoczny Tekst",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25,
                ),
              ),
              visible: false,
            ),
            SizedBox(
              height: 10,
            ),
            Visibility(
              child: Text(
                "To jest widoczny Tekst",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25,
                ),
              ),
              visible: true,
            ),
            SizedBox(
              height: 10,
            ),
            Opacity(
              opacity: 0.5,
              child: Text(
                "To jest  przeźroczysty  Tekst",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Opacity(
                opacity: _myOpacity,
                child: Text(
                  "Swemi stali swoim ukazy opoka."
                  " Wojska życiu drukarskich żołnierzy jedwab Ciocia Błysnęło wolnym bratni jakże."
                  " Kozy cugi Obok żołniersczyzny Kościuszkowskie sine nierostrzygniony tace Niesiołowskiemu rury rodu najpiękniejszym żem."
                  " Kotną Podniesionemi zapowiedział sługi Mniéj kręci wonnie Pośliznęła Żaden dzieci Przyjechawszy Podkomorzynie ciżby skrzydełkami. "
                  "Dworu kulę Turka głos ustaw nieco Stał darmo. Źwierząt pierwszéj Wiwat wszystkich kryć woły owiec Wilna Honor wiejskiego miecz znajdziesz tajne. Rury szli rany zbyt czas rodu."
                  " Szły taił Najpiękniejszego Rzeczypospolitéj mało Dworu najpiękniejszéj."
                  " Dziwi miły zajeżdżali Robak dajem pociągnął ręki pytaj dwory prace zuchwalstwem."
                  " Kukuruza Panów stronami barwie biegł tamuje Skinął dowodów tureckie łące osobnéj Dawano dowcip. ",
                  style: TextStyle(
                    fontFamily: "Roboto",
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                )),
            SizedBox(
              height: 10,
            ),
            TextButton(
              child: Text("Zmień widoczność",
                  style: TextStyle(color: Colors.black)),
              onPressed: () {
                setState(() {
                  _myOpacity = _myOpacity - 0.1;
                  if (_myOpacity == 0.1) {
                    _myOpacity + 0.9;
                  }
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              child: Text("Wróć", style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.pop(context, 6);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card and ListTile"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: ListTile(
                  dense: true,
                  title: Text("Nawigacja"),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.map),
                  title: Text("Mapa"),
                  subtitle: Text("Pokaż mapę"),
                  trailing: Icon(Icons.settings),
                ),
              ),
              Card(
                child: ListTile(
                  dense: true,
                  title: Text("Opcje pojazdu"),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.car_rental),
                  title: Text("Jedź samochodem"),
                  subtitle: Text("Podóżój gdzie chcesz !"),
                  trailing: Icon(Icons.settings),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.car_repair),
                  title: Text("Napraw samochoód"),
                  subtitle: Text("Sporo kosztuje ;_;"),
                  trailing: Icon(Icons.settings),
                ),
              ),
              TextButton(
                child: Text("Wróć", style: TextStyle(color: Colors.black)),
                onPressed: () {
                  Navigator.pop(context, 6);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PageFive extends StatelessWidget {
  final List<String> items;

  PageFive({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var items = List<String>.generate(200000, (i) => "Item $i");
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView.builder", textAlign: TextAlign.center),
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${items[index]}'),
          );
        },
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableProperty<String>('items', items));
  }
}

class PageSix extends StatelessWidget {
  PageSix();

  TextEditingController _ImieControler = TextEditingController();
  TextEditingController _NazwiskoControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField", textAlign: TextAlign.center),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                  controller: _ImieControler,
                  decoration: InputDecoration(
                      hintText: "Podaj swoje imie",
                      labelText: "Imie",
                      labelStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontFamily: "Roboto",
                      ),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.face_outlined)),
                  obscureText: false,
                  maxLength: 20,
                  maxLines: 1,
                  onChanged: (text) {}),
              TextField(
                  controller: _NazwiskoControler,
                  decoration: InputDecoration(
                      hintText: "Podaj swoje nazwisko",
                      labelText: "Nazwisko",
                      labelStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontFamily: "Roboto",
                      ),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.tag_faces)),
                  obscureText: false,
                  maxLength: 20,
                  maxLines: 1,
                  onChanged: (text) {}),
              TextField(
                  decoration: InputDecoration(
                    hintText: "Podaj swoje hasło",
                    labelText: "Hasło",
                    labelStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontFamily: "Roboto",
                    ),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.shield),
                  ),
                  obscureText: true,
                  maxLength: 8,
                  maxLines: 1,
                  onChanged: (text) {
                    if (text == "Haslo123") {
                      print("Hasło jest poprawne");
                    } else {
                      print("Hasło niepoprawne");
                    }
                  }),
              RaisedButton(onPressed: () {
                print("Witaj ponownie " +
                    _ImieControler.text +
                    " " +
                    _NazwiskoControler.text);
              }),
              TextButton(
                child: Text(
                  "Wróć",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  Navigator.pop(context, 6);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PageSeven extends StatefulWidget {
  @override
  _PageSeven createState() => _PageSeven();
}

class _PageSeven extends State<PageSeven> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextEditingController", textAlign: TextAlign.center),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: myController,
              decoration: InputDecoration(
                hintText: "Wpisz jakiś tekst",
                labelText: "Miejsce do zapełnienia",
                labelStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.green,
                  fontFamily: "Roboto",
                ),
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.phone),
              ),
              maxLength: 30,
              maxLines: 1,
            ),
            RaisedButton(
                color: Colors.green,
                onPressed: () {
                  print("Napisałeś: ${myController.text}");
                }),
            TextButton(
              child: Text(
                "Wróć",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Navigator.pop(context, 6);
              },
            ),
          ],
        ),
      ),
    );
  }
}
