import 'package:flutter/material.dart';
import 'package:resume_builder_app/ui/Screen/experience_screen.dart';
import 'package:resume_builder_app/ui/Screen/resume_form.dart';

import '../../style/resume_color.dart';
class Accademic extends StatefulWidget {
  const Accademic({Key? key}) : super(key: key);

  @override
  State<Accademic> createState() => _AccademicState();
}

class _AccademicState extends State<Accademic> {
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
           const SizedBox(
             height: 30,
           ),
           Column(
             children: const [
               Text(
                 "Academic",
                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
               ),
               SizedBox(
                 height: 10,
               ),
               Text(
                 "Please fill academic details",
                 style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
               )
             ],
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
                   labelText: 'Graduation',
                   hintText: 'fill Graduation type'),
             ),
           ),
           SizedBox(
             height: 10,
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
                   labelText: 'Passing Year',
                   hintText: 'Enter Passing year'),
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
                   labelText: '% In graduation',
                   hintText: 'fill Graduation %'),
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
                   labelText: '12th %',
                   hintText: ' Enter 12th %'),
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
                   labelText: '10th %',
                   hintText: 'Enter 10th %'),
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
                         builder: (context) =>WorkExperience ()));
                   },
                   child: const Text("Next")),
             ),
           )
         ],
       ),
     ),
    );
  }
}
