import 'package:flutter/material.dart';
import '../constant/theme.dart';
import '../widgets/input_field.dart';
import '../widgets/custom_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController nameController = TextEditingController(text: '');
  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');

  bool passwordVisible = true;
  bool isChecked = false;
  void togglePasswordVisible() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: kWhiteColor,
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 40,
                  bottom: 48,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Register new\naccount',
                      style: blackTextStyle.copyWith(
                        fontWeight: bold,
                        fontSize: 24,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      width: 99,
                      height: 4,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/image_accent.png',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Form(
                child: Column(
                  children: [
                    InputField(
                        hintText: 'Name',
                        suffixIcon: const SizedBox(),
                        controller: nameController),
                    const SizedBox(
                      height: 32,
                    ),
                    InputField(
                        hintText: 'Email',
                        suffixIcon: const SizedBox(),
                        controller: emailController),
                    const SizedBox(
                      height: 32,
                    ),
                    InputField(
                      hintText: 'Password',
                      suffixIcon: IconButton(
                        splashRadius: 1,
                        color: kGreyColor,
                        onPressed: togglePasswordVisible,
                        icon: Icon(
                          passwordVisible
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                        ),
                      ),
                      obscureText: passwordVisible,
                      controller: passwordController,
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isChecked = !isChecked;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 12),
                            decoration: BoxDecoration(
                              color: isChecked
                                  ? kPrimaryColor
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(4.0),
                              border: isChecked
                                  ? null
                                  : Border.all(color: kGreyColor, width: 1.5),
                            ),
                            width: 20,
                            height: 20,
                            child: isChecked
                                ? const Icon(
                                    Icons.check,
                                    size: 20,
                                    color: Colors.white,
                                  )
                                : null,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'By creating an account, you agree to our',
                              style: greyTextStyle.copyWith(
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'Terms & Conditions',
                              style: primaryTextStyle.copyWith(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              CustomButton(
                text: 'Register',
                bgColor: kPrimaryColor,
                textStyle:
                    whiteTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
                onTap: () {},
              ),
              const SizedBox(
                height: 95,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/login', (route) => false);
                    },
                    child: Text(
                      'Login',
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
