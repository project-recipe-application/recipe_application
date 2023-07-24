import 'package:flutter/material.dart';
import 'package:recipe_application/recipe_select/Recipe_Select.dart';
import 'package:recipe_application/ingredient_chooser/ingredient_chooser.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeScreen();
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          title: const Text(
            '『루루카의 비밀 레시피★』',
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w800,
                color: Color.fromARGB(255, 2, 155, 51)),
          ),
          toolbarHeight: 60,
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/kerby.gif'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const IngredientChooser(),
                        fullscreenDialog: true,
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: const Color.fromARGB(255, 187, 196, 187),
                            width: 2,
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10,
                              offset: const Offset(10, 10),
                              color: Colors.black.withOpacity(0.2),
                            ),
                          ],
                          image: const DecorationImage(
                              image: AssetImage('assets/images/jump.gif')),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 65,
                          horizontal: 84,
                        ),
                        child: const Text(
                          '루루카의 냉장고 안 \n 지금 바로 확인',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 2, 155, 51),
                              fontSize: 22,
                              fontWeight: FontWeight.w800),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Recipe_Select(),
                        fullscreenDialog: true,
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: const Color.fromARGB(255, 187, 196, 187),
                            width: 2,
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10,
                              offset: const Offset(10, 10),
                              color: Colors.black.withOpacity(0.2),
                            ),
                          ],
                          image: const DecorationImage(
                              image: AssetImage('assets/images/jump.gif')),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 65,
                          horizontal: 50,
                        ),
                        child: const Text(
                          '루루카의 비밀 요리 레시피 \n 지금 바로 확인',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 2, 155, 51),
                              fontSize: 22,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
