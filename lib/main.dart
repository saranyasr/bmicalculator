import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController height=TextEditingController();
  TextEditingController weight=TextEditingController();
  double result=0;

  void bmi() {

  double h=double.parse(height.text)/100;
  double w=double.parse(weight.text);
  double ans=w/(h*h);
  result=ans;
  setState(() {

  });



}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('BMI CALCULATOR') ,
          backgroundColor: Colors.pink,
        ),



        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextField(
                controller: height,

                decoration: InputDecoration(
                    // hintText: 'HEIGHT',
                  labelText: 'HEIGHT',
                  border: OutlineInputBorder()
                ),
              ),
            ),




            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextField(
                controller: weight,
                decoration: InputDecoration(
                  // hintText: 'weight',
                    labelText: 'WEIGHT',
                  border: OutlineInputBorder()
                ),
              ),
            ),
            SizedBox(height: 20,),




          ElevatedButton(onPressed: (){bmi();},style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.pink)), child: Text('CLICK'))
            ,
            SizedBox(height: 30),

            Container(
                alignment: Alignment.center,
              height: 40,
              width: 100,
              color: Colors.blueGrey,
                child: Text('${result.toStringAsFixed(2)}'


            ),
            ),





          ],),

        ),
      ),

    );


  }
}
