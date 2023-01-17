// Importei todos os pacotes que irei usar nesta tela.
import './card.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:dotted_line/dotted_line.dart';

// Criei uma classe e algumas variáveis para alojar os estilos de titulos e icones de alguns cartões.
class CardItem {
  final String title2;
  final String icons;
  const CardItem({required this.title2, required this.icons});
}

// Por aqui foram declaradas as variáveis usadas.
class CardItem1 {
  final String title1;
  final IconData icons1;
  final String image;
  final String subtitle1;
  const CardItem1({
    required this.title1,
    required this.icons1,
    required this.image,
    required this.subtitle1,
  });
}

// Declarei a classe Home, que é conectada ao main.dart para que a primeira tela apareça ao usuário.
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

// Mais uma classe listando a fileira inferior de exercícios (o ''const'' foi sugestão do Visual Studio Code).
class _HomeState extends State<Home> {
  TextEditingController Username = TextEditingController();
  List<CardItem1> items1 = [
    const CardItem1(
      image: 'assets/image/aerobico.png',
      icons1: Icons.run_circle,
      title1: 'Aeróbico',
      subtitle1: 'Resistência',
    ),
    const CardItem1(
      image: 'assets/image/pernas.png',
      icons1: Icons.airline_seat_legroom_reduced_rounded,
      title1: 'Pernas',
      subtitle1: 'Fortalecimento',
    ),
  ];
  List<CardItem> items = [
    const CardItem(
      icons: 'assets/image/treinopeito.png',
      title2: 'Peito',
    ),
    const CardItem(
      icons: 'assets/image/treinoombro.png',
      title2: 'Ombro',
    ),
    const CardItem(
      icons: 'assets/image/treinoabdomen.png',
      title2: 'Abdominal',
    ),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

// Aqui eu defini alguns parâmetros da tela Home, através do build, com cores, orientação, espaçamento e também importação da responsividade para os dispositivos.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        home: Scaffold(
          body: Container(
            color: Colors.white54,
            child: SafeArea(
              child: SingleChildScrollView(
                  child: Column(children: [
                Container(
                  height: Adaptive.h(10),
                  width: 100.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        child: Icon(
                          Icons.menu_outlined,
                          color: Colors.deepPurple.shade900,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 20),
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.person_pin_circle_sharp,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: Adaptive.h(3),
                ),

// Por aqui comecei a usar textos na tela, elementos de icones, cartões, importei uma fonte customizada e a parte do corpo do app.
                Container(
                  child: RichText(
                    text: TextSpan(text: 'Qual o treino de hoje?', style: TextStyle(color: Colors.black87, fontSize: 24, fontWeight: FontWeight.bold, fontFamily: 'Heebo'), children: [
                      WidgetSpan(
                          child: SizedBox(
                        width: 5.w,
                      )),
                      TextSpan(
                        text: 'Seu peso atual',
                        style: TextStyle(color: Colors.grey.shade500, fontSize: 14),
                      )
                    ]),
                  ),
                ),
                SizedBox(
                  height: Adaptive.h(1),
                ),
                Container(
                  child: RichText(
                    text: TextSpan(
                        text: 'Bem-vindo de volta, Gabriel.',
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 16,
                        ),
                        children: [
                          WidgetSpan(
                              child: SizedBox(
                            width: 32.w,
                          )),
                          TextSpan(
                            text: '64kg',
                            style: TextStyle(
                              color: Colors.deepPurple.shade900,
                              fontWeight: FontWeight.w800,
                              fontSize: 14,
                            ),
                          ),
                        ]),
                  ),
                ),
                Container(
                    width: 100.w,
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: EdgeInsets.only(right: 12),
                      alignment: Alignment.topRight,
                      child: DottedLine(
                        dashLength: 10,
                        dashGapLength: 10,
                        dashColor: Colors.grey,
                      ),
                      width: 30.w,
                    )),
                Container(
                  alignment: Alignment.center,
                  height: Adaptive.h(10),
                  width: 90.w,
                  margin: EdgeInsets.all(12),
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                      border: new OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: "Buscar treino...",
                      hintStyle: TextStyle(fontSize: 20.sp, color: Colors.black54),
                      prefixIcon: Align(
                        alignment: Alignment.center,
                        widthFactor: 0.1,
                        heightFactor: 0.1,
                        child: Icon(
                          Icons.sports_gymnastics,
                          color: Colors.deepPurple.shade900,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 90.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          "Treinos recentes",
                          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                      ),
                      Container(
                        child: Text(
                          "Ver todos",
                          style: TextStyle(color: Colors.deepPurple.shade900, fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: Adaptive.h(1),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 130),
                    child: Text(
                      "Esses foram seus últimos treinos",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
                    ),
                  ),
                ),
                Row(children: [
                  Container(
                    height: Adaptive.h(27),
                    width: 100.w,
                    child: ListView.separated(
                        padding: EdgeInsets.all(16),
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        separatorBuilder: (context, _) => SizedBox(
                              width: 5.w,
                            ),
                        itemBuilder: (context, index) => buildCard(items[index], CardItem: null)),
                  ),
                ]),
                Container(
                  width: 90.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          "Recomendado para você",
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                      ),
                      Container(
                        child: Text(
                          "Ver todos",
                          style: TextStyle(color: Colors.deepPurple.shade900, fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: Adaptive.h(1),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 70),
                    child: Text(
                      "Aproveite estes novos treinos para a sua rotina",
                      style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
                    ),
                  ),
                ),
                Row(children: [
                  Container(
                    height: Adaptive.h(40),
                    width: 100.w,
                    child: ListView.separated(
                        padding: EdgeInsets.all(16),
                        scrollDirection: Axis.horizontal,
                        itemCount: 2,
                        separatorBuilder: (context, _) => SizedBox(
                              width: 5.w,
                            ),
                        itemBuilder: (context, index) => buildCard1(items1[index], CardItem1: null)),
                  ),
                ]),
              ])),
            ),
          ),

// Este botão flutuante serviria para o usuário criar um novo treino.
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(right: 70),
            child: FloatingActionButton.extended(
              onPressed: () {},
              label: const Text('Iniciar novo treino'),
              icon: const Icon(Icons.stacked_line_chart),
              backgroundColor: Colors.purple.shade900,
            ),
          ),

// Com o corpo da tela finalizado, aqui há a barra de navegação inferior, com alguns icones para navegar, lembrando que são todos estáticos.
          bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Treinar', backgroundColor: Colors.white),
            BottomNavigationBarItem(icon: Icon(Icons.recommend_rounded), label: 'Para você', backgroundColor: Colors.white),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_pin),
              label: 'Perfil',
              backgroundColor: Colors.deepPurple,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_fire_department_sharp),
              label: 'Evolução',
              backgroundColor: Colors.deepPurple,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Pesquisar',
              backgroundColor: Colors.deepPurple,
            ),
          ], type: BottomNavigationBarType.fixed, currentIndex: _selectedIndex, selectedItemColor: Colors.deepPurple.shade900, unselectedIconTheme: IconThemeData(color: Colors.black87), iconSize: 25, onTap: _onItemTapped, elevation: 0),
        ),
      );
    });
  }

// Aqui estão embrulhadas as configurações e padrões de um modelo de cartão.
  Widget buildCard(
    CardItem item, {
    required CardItem,
  }) =>
      Container(
        width: 30.w,
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: Adaptive.h(3),
            ),
            Container(
              height: Adaptive.h(10),
              width: 60.w,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                shape: BoxShape.circle,
                color: Colors.deepPurple.shade600,
              ),
              child: Image.asset(
                item.icons,
              ),
            ),
            SizedBox(
              height: Adaptive.h(2),
            ),
            Text(
              item.title2,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(
              height: Adaptive.h(1),
            ),
          ],
        ),
      );

// Aqui estão embrulhadas as configurações e padrões de um outro modelo de cartão.
  Widget buildCard1(
    CardItem1 item1, {
    required CardItem1,
  }) =>
      Container(
        width: 60.w,
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: Adaptive.h(3),
            ),
            Row(
              children: [
                Container(
                  height: Adaptive.h(7),
                  width: 20.w,
                  decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Colors.black)),
                  child: Icon(
                    item1.icons1,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        item1.title1,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade800,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        item1.subtitle1,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.deepPurple.shade800,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: Adaptive.h(2),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              height: Adaptive.h(20),
              width: 70.w,
              child: Material(
                child: Ink.image(
                  image: AssetImage(item1.image),
                  fit: BoxFit.cover,
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => card2go()),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
