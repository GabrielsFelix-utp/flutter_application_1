import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/auth/Pages/common_widgets/custom_text_field.dart';
import 'package:flutter_application_1/src/auth/config/app_data.dart' as appData;
import 'package:flutter_application_1/src/auth/Pages/sign_in_screen.dart'
    as screens;

class ProfileTab extends StatefulWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil do usúario'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => screens.SignInScreen()),
              );
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
        children: [
          //Email
          CustomTextField(
            readyOnly: true,
            initialValue: appData.user.email,
            icon: Icons.email,
            label: 'Email',
          ),

          // Nome
          CustomTextField(
            readyOnly: true,
            initialValue: appData.user.name,
            icon: Icons.person,
            label: 'Nome',
          ),
          //Celular
          CustomTextField(
            readyOnly: true,
            initialValue: appData.user.phone,
            icon: Icons.phone,
            label: 'Celular',
          ),
          //CPF
          CustomTextField(
            readyOnly: true,
            initialValue: appData.user.cpf,
            icon: Icons.file_copy,
            label: 'CPF',
            isSecret: true,
          ),
          //Botão para atualizar a senha
          SizedBox(
            height: 50,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.green,
                side: const BorderSide(
                  color: Colors.green,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                updatePassword();
              },
              child: const Text(
                'Atualizar senha',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<bool?> updatePassword() {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //Titulo
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: Text(
                        'Atualização de senha',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    //Senha atual
                    const CustomTextField(
                      isSecret: true,
                      icon: Icons.lock,
                      label: 'Senha Atual',
                    ),

                    //Nova senha
                    const CustomTextField(
                      isSecret: true,
                      icon: Icons.lock_outline,
                      label: 'Nova senha',
                    ),

                    //Confirmação de nova senha
                    const CustomTextField(
                      isSecret: true,
                      icon: Icons.lock_outline,
                      label: 'Confirmar nova senha',
                    ),

                    //Botão de confirmação
                    SizedBox(
                      height: 45,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Atualizar',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 5,
                right: 5,
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.close),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
