import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:climate/model/Models.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class DetailScreenTwo extends StatelessWidget {
   DetailScreenTwo({Key? key, required this.title, required this.models, }) : super(key: key);
 final String title;
 final Models models;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //This takes the size of your device

    return Scaffold( appBar: AppBar(backgroundColor: Colors.white,leading: IconButton(onPressed: (){Navigator.pop(context);}, icon:const Icon(FontAwesomeIcons.angleLeft,color: Colors.orangeAccent,)),title: Text(title,style: GoogleFonts.bebasNeue(color: Colors.orangeAccent,fontSize: 22,fontWeight:FontWeight.bold),),centerTitle: true,),
      body:   ListView(
        //Instead of Column, we've used a list view because we want this widget to be scrollable, a Column is not scrollable while a list view is
        //A sized box is used to control the size of whatever you want to put inside it, we've used the entire height of the screen.
        //A stack is used to put items on top of each other as we have a blurred image as the background and the full image as the foreground.
        //We'll use a Cached Network Image because we don't want the images reloading everytime we launch the app, they're stored as cache
        children: [
          SizedBox(height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  Image(image: NetworkImage(models.img), fit: BoxFit.cover,width: double.infinity,),

                  Positioned.fill(child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),child: Container(color: Colors.transparent,),)),
                //The code above is for blurring the background image
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: CachedNetworkImage(imageUrl: models.img,fit: BoxFit.fill,placeholder: (context, url) => Center(child: CircularProgressIndicator())),
                  ),

                  Column(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height /3),
                          padding: const EdgeInsets.all(40),
                          //  height: MediaQuery.of(context).size.height,
                          decoration: const BoxDecoration(color: Colors.black12,
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(24),topRight: Radius.circular(24))),
                          child: Column(
                            children: [


                              Padding( padding: EdgeInsets.only(top: size.height * 0.01),child: SizedBox(height: size.height/2,child: Text(models.desc,style:  GoogleFonts.abel(fontSize: 32)))),

                            ],
                          ),
                        ),
                      ),

                    ],

                  ),

                ],
              )

          ),
        ],
      ),
    );
  }
}
