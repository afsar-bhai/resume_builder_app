
import 'package:flutter/material.dart';
import 'package:resume_builder_app/model.dart';
import 'package:resume_builder_app/ui/Screen/acadimic.dart';

import '../../style/resume_color.dart';
class ResumeForm extends StatefulWidget {
  const ResumeForm({Key? key}) : super(key: key);

  @override
  State<ResumeForm> createState() => _ResumeFormState();
}

class _ResumeFormState extends State<ResumeForm> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  late String email = '', password = '';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              ClipPath(
                clipper: ContainerCliper(),
                child: Container(
                  color: Colors.green,
                  height: 180,
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 20),
              //   child: Center(
              //     child: SizedBox(
              //         width: 200,
              //         height: 150,
              //         child: Image.asset(
              //           "assets/imagelogo.png",
              //           // "assets/backimg.jpg",
              //         )),
              //   ),
              // ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: const [
                  Text(
                    "Resume",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Please Build Resume",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: TextFormField(
                  controller: emailController,
                  onChanged: (value) {
                    email = value;
                  },
                  //obscureText: true,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.primaryColor)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.primaryColor)),
                      labelText: 'Enter Full Name',
                      hintText: 'please Enter your name'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: TextFormField(
                  onChanged: (value) {
                    password = value;
                  },
                  // obscureText: true,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.primaryColor)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.primaryColor)),
                      labelText: ' Email Id',
                    hintText: 'please enter email id'
                    //  hintText: 'Enter your secure password'),
                ),
              )),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: TextFormField(
                  //obscureText: true,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.primaryColor)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.primaryColor)),
                      labelText: 'Details',
                      hintText: 'Enter basic details'),
                ),
              ),

              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: TextFormField(
                  //obscureText: true,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.primaryColor)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.primaryColor)),
                      labelText: 'mobile ',
                      hintText: 'Enter your mobile number'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,

                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryColor,
                      ),
                      onPressed: () {

                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>Accademic ()));
                      },
                      child: const Text("Next")),
                ),
              )

              // Padding(
              //   padding: const EdgeInsets.only(left: 20.0, right: 20),
              //   child: TextFormField(
              //     //obscureText: true,
              //     decoration: InputDecoration(
              //         focusedBorder: OutlineInputBorder(
              //             borderSide: BorderSide(color: AppColors.primaryColor)),
              //         enabledBorder: OutlineInputBorder(
              //             borderSide: BorderSide(color: AppColors.primaryColor)),
              //         labelText: '',
              //         hintText: ''),
              //   ),
              // ),

              // SizedBox(
              //   width: double.infinity,
              //   height: 50,
              //   child: ElevatedButton(
              //       style: ElevatedButton.styleFrom(
              //         backgroundColor: AppColors.primaryColor,
              //       ),
              //       onPressed: () {
              //          Navigator.of(context).push(MaterialPageRoute(
              //            builder: (context) => const LoginScreen()));
              //       },
              //       child: const Text("SignUp")),
              // )
            ],
          ),
        ));

  }
}
class ContainerCliper extends CustomClipper<Path> {
  var path = Path();
  @override
  Path getClip(Size size) {
    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width * 0.25, size.height - 100,
        size.width * 0.5, size.height - 50);
    path.quadraticBezierTo(
        size.width * 0.8, size.height, size.width, size.height - 50);
    path.lineTo(size.width, 0);
    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
