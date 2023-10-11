import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GroceryItemTile extends StatelessWidget {
  final String itemname;
  final String itemprice;
  final String imagepath;
  final bgcolor;
  final void Function()? onPressed;
  const GroceryItemTile(
      {super.key,
      required this.itemname,
      required this.itemprice,
      required this.imagepath,
      required this.bgcolor,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: bgcolor[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //image
            Image.asset(
              imagepath,
              height: 70.0,
            ),

            //itemname
            Text(
              itemname,
              style: GoogleFonts.nunito(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w800),
            ),
            //itemprice+button
            MaterialButton(
              color: bgcolor[800],
              onPressed: onPressed,
              child: Text(
                itemprice,
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 19.0,
                    fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      ),
    );
  }
}
