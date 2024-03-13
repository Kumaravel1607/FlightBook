import 'package:flutter/material.dart';
import 'package:mytrip/Constant/color.dart';
import 'package:mytrip/Navigation.dart';

class Login_screen extends StatefulWidget {
  Login_screen({Key? key}) : super(key: key);

  @override
  State<Login_screen> createState() => _Login_screenState();
}

class _Login_screenState extends State<Login_screen> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  bool _passVisibility = true;
  bool? _checkbox = false;
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: yellow,
        body: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                Container(
                  height: 300,
                  child: Center(
                    child: Image.asset(
                      'assets/images/misa.png',
                      width: 200,
                    ),
                  ),
                ),
                Container(
                  // margin: EdgeInsets.all(10),
                  height: 670,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 40, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Login to your account',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: black,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        // Text(
                        //   'Login to your account - enjoy exclusive \nfeatures and many more...',
                        //   style: TextStyle(
                        //     fontSize: 16,
                        //     fontWeight: FontWeight.w400,
                        //     color: black,
                        //   ),
                        // ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Email',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: black,
                          ),
                        ),
                        TextFormField(
                          // onChanged: (value) {
                          //   context
                          //       .read<LoginBloc>()
                          //       .add(EmailEvent(value));
                          // },

                          keyboardType: TextInputType.text,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return "Please enter email";
                            }

                            return null;
                          },
                          controller: email,
                          autocorrect: true,
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: grey),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: yellow),
                              ),
                              // border: OutlineInputBorder(
                              //     borderRadius: BorderRadius.circular(10),
                              //     borderSide: BorderSide(color: Blue, width: 2)),
                              // enabledBorder: OutlineInputBorder(
                              //   borderRadius: BorderRadius.circular(10),
                              //   borderSide: const BorderSide(color: box),
                              // ),
                              // focusedBorder: OutlineInputBorder(
                              //   borderRadius: BorderRadius.circular(10),
                              //   borderSide: const BorderSide(color: Blue, width: 2),
                              // ),
                              contentPadding: const EdgeInsets.only(
                                  left: 24, top: 14, bottom: 13),
                              filled: true,
                              fillColor: Colors.transparent,
                              hintText: "Enter your email",
                              hintStyle:
                                  const TextStyle(color: dash, fontSize: 14),
                              prefixIcon: Icon(
                                Icons.account_circle,
                                color: yellow,
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Password',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: black),
                        ),
                        TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          // onChanged: (value) {
                          //   context
                          //       .read<LoginBloc>()
                          //       .add(PasswordEvent(value));
                          // },

                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return "Please enter password";
                            }

                            return null;
                          },
                          controller: pass,
                          autocorrect: true,
                          obscureText: _passVisibility,
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: grey),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: yellow),
                            ),
                            // border: OutlineInputBorder(
                            //     borderRadius: BorderRadius.circular(10),
                            //     borderSide: BorderSide(color: red, width: 2)),
                            // enabledBorder: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(10),
                            //   borderSide: const BorderSide(color: box),
                            // ),
                            // focusedBorder: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(10),
                            //   borderSide:
                            //       const BorderSide(color: Blue, width: 2),
                            // ),
                            contentPadding: const EdgeInsets.only(
                                left: 24, top: 14, bottom: 13),
                            filled: true,
                            fillColor: Colors.transparent,
                            focusColor: yellow,
                            hoverColor: yellow,
                            //suffixIconColor: yellow,
                            hintText: 'Enter your password',
                            hintStyle:
                                const TextStyle(color: dash, fontSize: 14),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: yellow,
                            ),
                            suffixIcon: IconButton(
                              color: grey,
                              icon: _passVisibility
                                  ? Icon(
                                      Icons.visibility_off,
                                      color: greytext,
                                    )
                                  : Icon(
                                      Icons.visibility,
                                      color: greytext,
                                    ),
                              onPressed: () {
                                _passVisibility = !_passVisibility;
                                setState(() {});
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                                fillColor: MaterialStateProperty.all(
                                    _checkbox == true ? yellow : black),
                                activeColor: green,
                                value: _checkbox,
                                onChanged: (val) {
                                  setState(() {
                                    _checkbox = val;
                                  });
                                }),
                            const Text(
                              'I agree to the terms & conditions, policy',
                              style: TextStyle(
                                  color: black,
                                  fontSize: 14,
                                  fontFamily: 'Rubik',
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            backgroundColor: yellow,
                            minimumSize: const Size.fromHeight(44),
                          ),
                          onPressed: () {
                            // if (formkey.currentState!.validate()) {
                            //   // user();
                            // }
                            // if (formkey.currentState!.validate()) {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Navigation()));
                            // } else {}
                          },
                          child: const Text(
                            'Login account',
                            style: TextStyle(
                              color: white,
                              fontSize: 18,
                              
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
