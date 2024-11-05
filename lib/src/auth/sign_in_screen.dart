import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/auth/components/custom_text_field.dart';
import 'package:flutter_application_1/src/auth/config/custom_colors.dart';

class SignInScreen extends StatelessWidget {
  // ignore: use_super_parameters
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 231, 177),
      body: Column(
        children: [
          // ignore: prefer_const_constructors
          Expanded(
            // ignore: prefer_const_constructors
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Nome do app
                const Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 40,
                    ),
                    children: [
                      TextSpan(
                        text: 'Quitanda',
                        style: TextStyle(
                          color: Color.fromARGB(255, 46, 92, 50),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'Virtual',
                        style: TextStyle(
                          color: Color.fromARGB(255, 145, 10, 0),
                        ),
                      ),
                    ],
                  ),
                ),

                //Categorias
                SizedBox(
                  height: 30,
                  child: DefaultTextStyle(
                    style: TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    child: AnimatedTextKit(
                      pause: Duration.zero,
                      repeatForever: true,
                      animatedTexts: [
                        FadeAnimatedText('Frutas'),
                        FadeAnimatedText('Verduras'),
                        FadeAnimatedText('Legumes'),
                        FadeAnimatedText('Carnes'),
                        FadeAnimatedText('Cereais'),
                        FadeAnimatedText('Laticíneos'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          //Formulario
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 40,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(45),
              ),
            ),
            // ignore: prefer_const_constructors
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,

              // ignore: prefer_const_literals_to_create_immutables
              children: [
                //email
                // ignore: prefer_const_constructors
                const CustomTextField(
                  icon: Icons.email,
                  label: 'Email',
                ),

                //senha
                // ignore: prefer_const_constructors
                const CustomTextField(
                  icon: Icons.lock,
                  label: 'Senha',
                  isSecret: true,
                ),
                //Botao de entrar
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        side: const BorderSide(
                            color: Color.fromARGB(255, 117, 107, 107))),
                    onPressed: () {},
                    child: const Text(
                      'Entrar',
                      style: TextStyle(
                          fontSize: 18, color: Color.fromARGB(255, 46, 46, 46)),
                    ),
                  ),
                ),
                //Esqueceu a senha
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Esqueceu a senha?',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                //Divisor
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey.withAlpha(90),
                          thickness: 2,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text('Ou'),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey.withAlpha(90),
                          thickness: 2,
                        ),
                      ),
                    ],
                  ),
                ),

                //Botao de novo usuario
                SizedBox(
                  height: 50,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      side: const BorderSide(
                        width: 2,
                        color: Color.fromARGB(255, 145, 119, 119),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Criar Conta',
                      style: TextStyle(
                        color: Color.fromARGB(255, 46, 46, 46),
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
