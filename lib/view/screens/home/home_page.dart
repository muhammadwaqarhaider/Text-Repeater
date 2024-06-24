import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String userText = "";
  String repeatedValue = "";
  String result = "";
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.deepOrange, // Set your desired color here
        statusBarIconBrightness: Brightness.light,

        // Light or dark icons
      ),
    );
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(Icons.menu,color: Colors.white,size: 30,),
        backgroundColor: Colors.deepOrange,
        title: const Text("Text Repeater",style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,fontSize: 20),),
        actions: const [
          Padding(padding: EdgeInsets.only(right: 18),
          child: Icon(Icons.login,color: Colors.white,size: 30,))
        ],
        elevation: 0,
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(right: 12,left: 12,bottom: 25),
                width: double.infinity,
                decoration: BoxDecoration(
                  //image: DecorationImage(image: AssetImage("")),
                  color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    //shape: BoxShape.circle,
                    boxShadow:const [
                       BoxShadow(
                        color: Colors.black12,
                        blurRadius: 2,
                        spreadRadius: 1.0,
                        offset: Offset(0,0)
                       ),
                    ],
                ),
                child:   Column(
                  children: [
                    TextField(
                      onChanged: (val){userText=val;},
                      style: const TextStyle(color: Colors.black,),
                      cursorColor: Colors.black,
                      cursorWidth: 2,
                      decoration: const InputDecoration(
                        hintText: "type your text here",
                        hintStyle: TextStyle(color: Colors.black,fontStyle: FontStyle.italic,fontSize: 17),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black,width: 1)
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,width: 1)
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black,width: 8),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        const Text("How many time to Repeate text :",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.deepOrange),),
                        const Spacer(),
                        SizedBox(
                          height: 30,
                          width: 60,
                          child: TextField(
                            onChanged: (val){repeatedValue=val;},
                            decoration: const InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black,width: 1)
                              ),
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black,width: 8),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black,width: 1)
                              ),

                            ),
                            style: const TextStyle(color: Colors.black,),
                            keyboardType: TextInputType.number,
                            cursorColor: Colors.black,
                          ),
                        ),


                      ],
                    ),
                    const SizedBox(height: 20,),
                    InkWell(
                      onTap: (){
                        setState(() {});
                        if(userText==""){
                          showUserTextToast();
                        }else if(repeatedValue==""){
                          showRepeatedValueToast();
                        }
                        int irepeatedValue= int.parse(repeatedValue);
                        result=userText*irepeatedValue;
                      },
                      child: Container(
                        height: 30,
                        width: 150,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text("Repeat Text",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontStyle: FontStyle.italic),),
                      ),
                    ),

                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                padding: const EdgeInsets.only(top: 12,left: 12,right: 12,bottom: 200),
                width: double.infinity,
                decoration: BoxDecoration(
                  //image: DecorationImage(image: AssetImage("")),
                  color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    //shape: BoxShape.circle,
                    boxShadow:const [
                       BoxShadow(
                        color: Colors.black12,
                        blurRadius: 2,
                        spreadRadius: 1.0,
                        offset: Offset(0,0)
                       ),
                    ],
                ),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            const Text("Final Repeated Text",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.deepOrange,fontSize: 16,fontStyle: FontStyle.italic),),
                            const Spacer(),
                            ElevatedButton(onPressed: () {
                              showCopyToast();
                              _copyToClipboard(context,result);
                            },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white, // Change the background color here
                                  onPrimary: Colors.black,
                                  minimumSize: const Size(40, 30),
                                  elevation: 0,// Change the text color here
                                ),
                                child: const Icon(Icons.copy,size: 25,)),
                            ElevatedButton(onPressed: () {  },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white, // Change the background color here
                                  onPrimary: Colors.black,
                                  minimumSize: const Size(40, 30),

                                  elevation: 0,// Change the text color here
                                ),
                            child: const Icon(Icons.share,size: 25,)),
                          ],
                        ),
                        Text(result,style: TextStyle(color: Colors.deepOrange),),

                      ],
                    )
                  ],
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }

  void showCopyToast() {
    Fluttertoast.showToast(
      msg: 'Text Copied...!',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.white,
      textColor: Colors.deepOrange,
      fontSize: 16.0,
    );
  }
  void showUserTextToast() {
    Fluttertoast.showToast(
      msg: 'Please Enter Text...!',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.white,
      textColor: Colors.deepOrange,
      fontSize: 16.0,
    );
  }
  void showRepeatedValueToast() {
    Fluttertoast.showToast(
      msg: 'Please Enter Number want to Repeat...!',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.white,
      textColor: Colors.deepOrange,
      fontSize: 16.0,
    );
  }
  void _copyToClipboard(BuildContext context, String text) {
    Clipboard.setData(ClipboardData(text: text));
  }

}
