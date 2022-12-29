import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:uifinanceiro/utils/extensions/context_extension.dart';
import 'package:uifinanceiro/utils/widgets/custom_text_form_field.dart';
import 'package:uifinanceiro/utils/widgets/password_form_field.dart';
import 'package:validatorless/validatorless.dart';

import '../../../utils/styles/colors_app.dart';
import '../../../utils/styles/text_styles.dart';
import '../../../utils/widgets/button.dart';
import '../../../utils/widgets/multi_text_buttom.dart';
import '../../../utils/widgets/uppercase_text_formatter.dart';

class SignInPage extends StatefulWidget {

  const SignInPage({ Key? key }) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

   final formKey = GlobalKey<FormState>();
   final emailEC = TextEditingController();
   final passwordEC = TextEditingController();
   
   @override
   void dispose() {
     emailEC.dispose();
     passwordEC.dispose();
     //controller.dispose();
     super.dispose();
   }
  
   @override
   Widget build(BuildContext context) {
       return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: context.mediaQuerySize.height
                ),
                child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,  
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 50,),
                  Text(
                    'Welcome Back!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                      color: ColorsApp.instance.green2,
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Image.asset(
                    'assets/images/welcome.png',
                  ),
                  const SizedBox(height: 10,),
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        CustomTextFormField(
                          controller: emailEC,
                          labelText: "Your email",
                          hintText: "name@email.com",
                          validator: Validatorless.multiple([
                            Validatorless.required('Mandatory'),  //Obrigatorio
                            Validatorless.email('Invalid email'),  //E-mail invalido
                          ]),
                        ),
                        PasswordFormField(
                          controller: passwordEC,
                          labelText: "Choose your password",
                          hintText: "*********",
                          validator: Validatorless.multiple([
                            Validatorless.required('Mandatory'), // Obrigatorio
                            Validatorless.min(6, 'Password must contain at least 6 characters'), //  Senha deve conter pelo menos 6 caracteres
                          ]),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 32.0, 
                      right: 32.0,
                      top:12.0,
                      bottom: 8.0,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                        begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                              ColorsApp.instance.greenlinear,
                              ColorsApp.instance.greenlinear2,
                          ],
                        ),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: ColorsApp.instance.greenlinear.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 3,
                            offset: const Offset(2, 3),
                          )
                        ]
                      ),
                      child: Button(
                        height: context.height * .066,
                        widht: context.width * .9,
                        onPressed: () {
                            final valid = formKey.currentState?.validate() ?? false;
                            if(valid) {
                              //controller.signUp(
                              //  name: nameEC.text;
                              //  email: emailEC.text;
                              //  password: passwordEC.text;
                              //)
                              context.pushReplacementNamed('homePage');
                            } else {
                              log('erro ao logar');                        
                            }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            disabledForegroundColor: Colors.transparent,
                            shadowColor: Colors.transparent
                        ),
                        labelStyle: context.textStyles.textStart,
                        label: 'Sign In',
                      ),
                    ),
                  ),
                  MultiTextButtom(
                    onPressed: () {
                      context.pushReplacementNamed('signup');
                    },
                    children: [
                        Text(
                          'Don\'t Have Accoont?  ',
                          style: TextStyles.instance.textSmall.copyWith(
                            color: ColorsApp.instance.greenlinear
                          ),  
                        ),
                        Text(
                          'Sign Up',
                          style: TextStyles.instance.textSmall.copyWith(
                            color: ColorsApp.instance.greenfundo
                          ),  
                        )   
                      ]
                  ),
                  const SizedBox(height: 24,)
                ]
                ),
              ),
            ),
          ),
       );
  }
}