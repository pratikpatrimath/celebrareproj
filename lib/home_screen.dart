
import 'dart:io';
import 'package:celebrare/circle.dart';
import 'package:celebrare/heart1.dart';
import 'package:celebrare/original.dart';
import 'package:celebrare/rectangle.dart';
import 'package:celebrare/spuare.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({super.key});

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  File? image;
  Future pickImage() async{
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
   if(image==null) return;
   final imageTemp=File(image.path);
   setState(()=>
   this.image=imageTemp
   );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => exit(0),
        ),
        elevation: 1,
        title: Text(
          'Add Image/ Icon',
          style: TextStyle(fontSize: 15),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
        child: Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black26, width: 1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Upload Image',
                    style: TextStyle(fontSize: 20, color: Colors.black38),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 50,
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        pickImage();
                        showDialog(context: context, builder: (context){
                          return Center(
                            child: Container(
                              padding: EdgeInsets.only(left: 18,right: 18),
                              height: 350,
                              width: 250,
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.end,
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          icon:
                                          Icon(Icons.close_outlined))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 140,
                                    width: 180,
                                    color: Colors.black12,
                                    child:image!=null?Image.file(image!,fit: BoxFit.cover,):FlutterLogo(),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                       GestureDetector(
                                         onTap:(){Navigator.push(context, MaterialPageRoute(builder: (index)=>Original()));},
                                         child: Container(
                                           height: 50,
                                           width: 70,

                                           decoration: BoxDecoration(
                                               border: Border.all(
                                                   color: Colors
                                                       .black38),
                                               borderRadius: BorderRadius
                                                   .circular(7)
                                           ),
                                           child: Center(
                                             child: Text(

                                               'Original',
                                               style:
                                               TextStyle(fontSize: 13,
                                                   color: Colors.black),
                                             ),
                                           ),
                                         ),
                                       ),
                                        SizedBox(width: 5,),
                                        GestureDetector(
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (index)=>Heart1()));
                                          },
                                          child: Container(
                                            height: 50,
                                            width: 70,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors
                                                        .black38),
                                                borderRadius: BorderRadius
                                                    .circular(7)
                                            ),
                                            child: Image.asset(
                                              'assets/user_image_frame_1.png',
                                              height: 40, width: 60,),
                                          ),
                                        ),
                                        SizedBox(width: 5,),
                                        GestureDetector(
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (index)=>Square()));
                                          },
                                          child: Container(
                                            height: 50,
                                            width: 70,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors
                                                        .black38),
                                                borderRadius: BorderRadius
                                                    .circular(7)
                                            ),
                                            child: Image.asset(
                                              'assets/user_image_frame_2.png',
                                              height: 40, width: 60,),
                                          ),
                                        ),
                                        SizedBox(width: 5,),
                                        GestureDetector(
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (index)=>Circle1()));
                                          },
                                          child: Container(
                                            height: 50,
                                            width: 70,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors
                                                        .black38),
                                                borderRadius: BorderRadius
                                                    .circular(7)
                                            ),
                                            child: Image.asset(
                                              'assets/user_image_frame_3.png',
                                              height: 40, width: 60,),
                                          ),
                                        ),
                                        SizedBox(width: 5,),
                                        GestureDetector(
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (index)=>Rectangle1()));
                                          },
                                          child: Container(
                                            height: 50,
                                            width: 70,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors
                                                        .black38),
                                                borderRadius: BorderRadius
                                                    .circular(7)
                                            ),
                                            child: Image.asset(
                                              'assets/user_image_frame_4.png',
                                              height: 40, width: 60,),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  ElevatedButton(onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (index)=>Home_screen()));
                                  }, child: Text('Use this image'),style: ElevatedButton.styleFrom(primary: Colors.green),)

                                ],
                              ),
                            ),
                          );
                        });
                      },
                      child: Text(
                        'Choose from Device',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      style: ElevatedButton.styleFrom(primary: Colors.green),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Hello I am Pratik Patrimath I have started learning flutter two months ago,I tried my best completing this assignment I am learning flutter'),
            SizedBox(height: 2,),
            Text('it will not show image first time but when we select image next time it display image which we have seleted prevoiusly'),
            SizedBox(height: 2,),
            Text('And here I have creted seprate apages for showing masked image when you click on original it will show original image'),
            SizedBox(height: 2,),
            Text('When you click on heart,square,circle and rectangle it will redirect you to new page and there it will masked image'),
            SizedBox(height: 2,),
          Text('Thank you '),


          ],
        ),
      ),
    );
  }
  

  /*getgall() async {
    var img = await image1.pickImage(source: ImageSource.gallery);
    setState(() {
      file = File(img!.path);
    });*/
  }


  

