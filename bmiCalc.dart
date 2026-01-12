import 'package:demo/constPacks.dart';
import 'package:flutter/material.dart';

class Bmicalc extends StatefulWidget {
  const Bmicalc({super.key});

  @override
  State<Bmicalc> createState() => _BmicalcState();
}

class _BmicalcState extends State<Bmicalc> {

  bool isMale = true;
  double height = 183;
  int weight = 74;
  int age = 18;


  double bmiCalc () {
    double heightInMeter = height / 100;
    double bmi = weight / (heightInMeter * heightInMeter);
    return bmi;
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor ,
      appBar: AppBar(
        title: const Text(
          "BMI Calculator",
          style: TextStyle(
            color: kActivetextcolour,
            fontSize: 27,
          ),),
        backgroundColor: bgColor,
      ),

      body: Container(
        padding: EdgeInsets.all(25),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
        
          children:[
            //first column
            Column(
              children: [
                //Rows
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [

                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                        
                          decoration: isMale
                            ? selectedGender
                            : boxdecor,
                                                                
                          child: Column(
                        
                            children: [
                        
                              Icon(
                                Icons.male,
                                size: 100,
                                color: kActivetextcolour),
                        
                              Text(
                                "Male",style: TextStyle(
                                  fontSize: 34,
                                  fontWeight: FontWeight.bold, 
                                  fontFamily: "america",
                                  color: kActivetextcolour,
                                  ),
                                ),
                        
                            ],
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 5),

                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: !isMale
                            ? selectedGender
                            : boxdecor,
                        
                          child: Column(
                          
                            children: [
                          
                              Icon(
                                Icons.female, 
                                size: 100,
                                color: kActivetextcolour
                              ),
                          
                              Text(
                                "Female",
                                style: TextStyle(
                                  fontSize: 34,
                                  fontWeight: FontWeight.bold, 
                                  fontFamily: "america",
                                  color: kActivetextcolour
                                ),
                              ),
                          
                            ]
                          
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 40),

                // second column

                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kTilecolour,
                  ),

                  child: Column(
                    children: [
                      Text(
                        "Height",
                        style: TextStyle(
                          fontSize: 20,
                          color: kActivetextcolour
                        )
                      ),
                  
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                  
                        children: [
                  
                          Text(
                            height.toStringAsFixed(1),
                            style: TextStyle(
                              fontSize: 50 , 
                              fontWeight : FontWeight.bold,
                              color: kActivetextcolour
                            )
                          ),
                  
                          Text("cm",
                            style: TextStyle(
                              fontSize: 20,
                              color: kActivetextcolour
                            )
                          ),
                        ],
                      ),
                      
                      Slider(
                        inactiveColor: kInactiveTilecolour,
                        activeColor: const Color.fromARGB(255, 220, 9, 76),
                        max: 200, 
                        min: 80,
                        value: height, 
                        onChanged: (value){
                          setState(() {
                            height = value.toDouble();
                          });
                        }
                      )
                    ],
                  ),
                ),
                SizedBox(height: 40),
                // third column

                Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kTilecolour,
                        ) ,
                        child: Column(
                          children: [
                        
                            Text(
                              "WEIGHT",
                              style: TextStyle(
                                fontSize: 20,
                                color: kActivetextcolour
                              ),
                            ),
                            Text(
                              "$weight",
                              style: TextStyle(
                                fontSize: 50,
                                color: kActivetextcolour
                              )
                            ),
                        
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                        
                                FloatingActionButton(
                                  backgroundColor: const Color.fromARGB(255, 48, 53, 118),
                                  elevation: 0,
                                  shape: ShapeBorder.lerp(
                                    CircleBorder(),
                                    CircleBorder(),
                                    0.5
                                  ),
                                  onPressed: (){
                                    setState(() {
                                      if (weight > 25){
                                        weight--;
                                      }
                                      
                                    });
                                  },
                                  child: Icon(
                                    color: const Color.fromARGB(255, 255, 255, 255),
                                    Icons.remove
                                  )
                                ),
                        
                                SizedBox(width: 10),
                        
                                FloatingActionButton(
                                  backgroundColor: const Color.fromARGB(255, 48, 53, 118),
                                  elevation: 0,
                                  shape: ShapeBorder.lerp(
                                    CircleBorder(), 
                                    CircleBorder(), 
                                    0.5
                                  ),
                                  onPressed: (){
                                    setState(() {
                                      if (weight < 200){
                                        weight++;
                                      }
                                    });
                                  }, 
                                  child: Icon(
                                    Icons.add,
                                    color: const Color.fromARGB(255, 255, 255, 255),
                                  )
                                ),
                                
                                //-
                              ],
                            )
                          ],
                            
                        ),
                      ),
                    ),

                    SizedBox(width: 5),

                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kTilecolour,
                        ),
                      
                        child: Column(
                          children: [
                      
                            Text(
                              "AGE",
                              style: TextStyle(
                                fontSize: 20,
                                color: kActivetextcolour
                              )
                          ),
                            Text(
                              "$age",
                              style: TextStyle(
                                fontSize: 50,
                                color: kActivetextcolour
                              )
                            ),
                        
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                        
                                FloatingActionButton(
                                  backgroundColor: const Color.fromARGB(255, 48, 53, 118),
                                  elevation: 0,
                                  shape: ShapeBorder.lerp(
                                    CircleBorder(), 
                                    CircleBorder(), 
                                    0.5
                                  ),
                                  onPressed: (){
                                    setState(() {
                                      if (age > 1){
                                        age--;
                                      }
                                    });
                                  }, 
                                  child: Icon(
                                    Icons.remove,
                                    color: const Color.fromARGB(255, 255, 255, 255),
                                  )
                                ),
                        
                                SizedBox(width: 10),
                        
                                FloatingActionButton(
                                  backgroundColor: const Color.fromARGB(255, 48, 53, 118),
                                  elevation: 0,
                                  shape: ShapeBorder.lerp(
                                    CircleBorder(), 
                                    CircleBorder(), 
                                    0.5
                                  ),
                                  onPressed: (){
                                    setState(() {
                                      if (age < 120){
                                        age++;
                                      }
                                    });
                                  }, 
                                  child: Icon(
                                    Icons.add,
                                    color: const Color.fromARGB(255, 255, 255, 255),
                                  )
                                ),
                                
                                //-
                              ],
                            )
                          ],
                            
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 40),

            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 220, 9, 76),
                padding: EdgeInsets.symmetric(
                  horizontal: 100,
                  vertical: 20
                ),
                foregroundColor: kActivetextcolour,
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                )
              ),
              onPressed: () {
                double bmiResult = bmiCalc();
                showDialog(
                  context: context,
                  builder: (BuildContext context){
                    return AlertDialog(
                      backgroundColor: kTilecolour,
                      
                      title: Text(
                        "Your BMI Result",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: kActivetextcolour
                        ),
                      ),
                      content: Text( 
                        bmiResult.toStringAsFixed(2),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: getBmiColor(bmiResult),
                        ),
                      ),


                      actions: [
                        TextButton(
                          onPressed: (){
                            Navigator.of(context).pop();
                          }, 
                          child: Text(
                            "OK",
                            style: TextStyle(
                              color: kActivetextcolour
                            ),
                          )
                        )
                      ],
                    );
                  }
                );
              }, 
              child: Text(
                "Calculate BMI"
              )
            )
          ],
        ),
      ),
    );
      
  }
}