import 'package:cached_network_image/cached_network_image.dart';
import 'package:climate/Pages/DetailScreenTow.dart';
import 'package:climate/model/Models.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Models> mode = Models.mode; // We've imported a model class. This is where all of our data is stored. It is stored as a List and we've named this list "mode".
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(elevation: 2,automaticallyImplyLeading: false, actions: const [ Icon(FontAwesomeIcons.cloudBolt,color: Colors.orangeAccent,),Text("    ")],
          backgroundColor: Colors.white, title: Text("Climate Change Awareness App", style: GoogleFonts.bebasNeue(color: Colors.orangeAccent, fontSize: 25),),),

        body: Column(
          //The body of the application. It will be displayed as a Column. And a Column may have multiple children.
          //We used the word "Expanded" because we wanted  to create a List View which is dynamic, meaning it can change when we tamper with our data model
          //Since we cant use a List in a Column, we've wrapped the List with a Expanded.
          //Item count just controls the number of items we have in our data model [The one we named mode].
          //Returned a Padding to make space around the items we are going to put inside it.
          //Inkwell is used to make items clickable. And we navigating to the details page where we are receiving the title, and the model class.
          //Card widget to make our UI be viewed as cards.
          //Then have another Column widget to display our image and title
          //ClipRRect is used to round corners.
          //we created a variable called index, also to help our list change dynamically.
          children: [
            Expanded(child:
            ListView.builder(itemCount: mode.length,itemBuilder: (context, int index)
        {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell( onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreenTwo(title: mode[index].title, models: mode[index]))); },
              child: Card(elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Column(

                  children: [
                    ClipRRect(borderRadius: BorderRadius.circular(12),child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(borderRadius: BorderRadius.circular(12),child: CachedNetworkImage(imageUrl: mode[index].img,fit: BoxFit.fill,placeholder: (context, url) => Center(child: CircularProgressIndicator()))),
                    )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(mode[index].title, style: GoogleFonts.abel(fontSize: 25,
                           color: Colors.black),),
                    )
                  ],
                ),
              ),
            ),
          );
        }))
          ],
        )
    );
  }
}
/*
* The welcome page of the app. Everything in flutter is a widget
* */