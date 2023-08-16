import 'package:august/src/view/utilis/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

TextEditingController inputController = TextEditingController();
Color currentColor = kRedColor;
void colorChanger(){

  switch(inputController.text.toLowerCase().trim()){
    case"red":
    currentColor = kRedColor;
    break;
    case"blue":
    currentColor = kBlueColor;
    break;
    default:
    break;
  }
   setState(() {});
}

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Color Changer"),
          centerTitle: true,
          backgroundColor: Colors.black,
          elevation: 0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: inputController,
                  decoration: InputDecoration(
                    labelText: "Color Name",
                    suffixIcon: IconButton(
                      onPressed: (){
                        colorChanger();
                        print(inputController.text);
                      }, 
                      icon: Icon(Icons.arrow_forward)),
                    border :OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(color: currentColor, shape: BoxShape.circle),
                height: 200,
                width: 200,
              )
            ],
          ),
        ),
      ),
    );
  }
}