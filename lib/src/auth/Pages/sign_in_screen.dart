import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/auth/Pages/Base/base_screen.dart';
import 'package:flutter_application_1/src/auth/Pages/common_widgets/custom_text_field.dart';
import 'package:flutter_application_1/src/auth/config/custom_colors.dart';
import 'package:flutter_application_1/src/auth/Pages/sign_up_screen.dart';

class SignInScreen extends StatelessWidget {
  // ignore: use_super_parameters
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 231, 177),
      body: SingleChildScrollView(
        child: SizedBox(
          height: Size.height,
          width: Size.width,
          child: Stack(
            children: [
              Column(
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
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (c) {
                                    return BaseScreen();
                                  },
                                ),
                              );
                            },
                            child: const Text(
                              'Entrar',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 46, 46, 46)),
                            ),
                          ),
                        ),
                        //Esqueceu a senha
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              '',
                              style: TextStyle(
                                color: Color.fromARGB(255, 233, 30, 30),
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
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (C) {
                                  return SignUpScreen();
                                }),
                              );
                            },
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
              Positioned(
                top: 10,
                left: 10,
                child: SafeArea(
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
