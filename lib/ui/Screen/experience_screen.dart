import 'package:flutter/material.dart';
import 'package:resume_builder_app/model.dart';
import 'package:resume_builder_app/ui/Screen/resume_form.dart';

import '../../style/resume_color.dart';
class WorkExperience extends StatefulWidget {
  const WorkExperience({Key? key}) : super(key: key);

  @override
  State<WorkExperience> createState() => _WorkExperienceState();
}

class _WorkExperienceState extends State<WorkExperience> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SingleChildScrollView(
  child:   Column(

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

        children:  [

          Text(

            "Work Experience",

            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),

          ),

          SizedBox(

            height: 20,

          ),

          Padding(

            padding:  EdgeInsets.only(left: 20.0, right: 20),

            child: TextFormField(

              //obscureText: true,

              decoration: InputDecoration(

                  focusedBorder: OutlineInputBorder(

                      borderSide: BorderSide(color: AppColors.primaryColor)),

                  enabledBorder: OutlineInputBorder(

                      borderSide: BorderSide(color: AppColors.primaryColor)),

                  labelText: 'Work Experience  ',

                 // hintText: 'Enter your mobile number'

              ),

            ),

          ),

          SizedBox(

            height: 10,

          ),

          Padding(

            padding:  EdgeInsets.only(left: 20.0, right: 20),

            child: TextFormField(

              //obscureText: true,

              decoration: InputDecoration(

                focusedBorder: OutlineInputBorder(

                    borderSide: BorderSide(color: AppColors.primaryColor)),

                enabledBorder: OutlineInputBorder(

                    borderSide: BorderSide(color: AppColors.primaryColor)),

                labelText: 'Current Company  ',

                // hintText: 'Enter your mobile number'

              ),

            ),

          ),



          SizedBox(

            height: 10,

          ),

          Padding(

            padding:  EdgeInsets.only(left: 20.0, right: 20),

            child: TextFormField(

              //obscureText: true,

              decoration: InputDecoration(

                focusedBorder: OutlineInputBorder(

                    borderSide: BorderSide(color: AppColors.primaryColor)),

                enabledBorder: OutlineInputBorder(

                    borderSide: BorderSide(color: AppColors.primaryColor)),

                labelText: 'Current Position ',

                // hintText: 'Enter your mobile number'

              ),

            ),

          ),

          SizedBox(

            height: 10,

          ),

          Padding(

            padding:  EdgeInsets.only(left: 20.0, right: 20),

            child: TextFormField(

              //obscureText: true,

              decoration: InputDecoration(

                focusedBorder: OutlineInputBorder(

                    borderSide: BorderSide(color: AppColors.primaryColor)),

                enabledBorder: OutlineInputBorder(

                    borderSide: BorderSide(color: AppColors.primaryColor)),

                labelText: 'Relevent Skills  ',

                // hintText: 'Enter your mobile number'

              ),

            ),

          ),

          SizedBox(

            height: 10,

          ),

          Padding(

            padding:  EdgeInsets.only(left: 20.0, right: 20),

            child: TextFormField(

              //obscureText: true,

              decoration: InputDecoration(

                focusedBorder: OutlineInputBorder(

                    borderSide: BorderSide(color: AppColors.primaryColor)),

                enabledBorder: OutlineInputBorder(

                    borderSide: BorderSide(color: AppColors.primaryColor)),

                labelText: 'Achievment  ',

                // hintText: 'Enter your mobile number'

              ),

            ),

          ),

          SizedBox(

            height: 10,

          ),

          Padding(

            padding:  EdgeInsets.only(left: 20.0, right: 20),

            child: TextFormField(

              //obscureText: true,

              decoration: InputDecoration(

                focusedBorder: OutlineInputBorder(

                    borderSide: BorderSide(color: AppColors.primaryColor)),

                enabledBorder: OutlineInputBorder(

                    borderSide: BorderSide(color: AppColors.primaryColor)),

                labelText: 'Extra Curricular Activity ',

                // hintText: 'Enter your mobile number'

              ),

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
                  child: const Text("Submit")),
            ),
          )

        ],

      ),

    ],

  ),
),
    );
  }
}
