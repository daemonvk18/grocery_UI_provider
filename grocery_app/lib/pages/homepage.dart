import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/model/shopping_cart.dart';
import 'package:provider/provider.dart';
import '../components/groceryitemtile.dart';
import 'cart_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => CartPage())),
        child: Icon(
          Icons.shopping_bag,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 25.0,
            ),

            //good morning
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Good Morning",
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            //lets order fresh items for you
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Let's Order Some Fresh Items For You",
                style: GoogleFonts.notoSerif(
                    color: Colors.black,
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),

            //divider
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Divider(
                height: 40.0,
                color: Colors.grey.shade500,
                thickness: 2.0,
              ),
            ),

            const SizedBox(
              height: 20.0,
            ),

            //fresh items
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Fresh Items",
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400),
              ),
            ),

            //grid of shop items
            Expanded(child:
                Consumer<ShoppingCart>(builder: ((context, value, child) {
              return GridView.builder(
                  itemCount: value.items.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 1 / 1.3),
                  itemBuilder: (context, index) {
                    return GroceryItemTile(
                      //now we can access the data from the class shopping cart
                      itemname: value.items[index][0],
                      itemprice: value.items[index][1],
                      imagepath: value.items[index][2],
                      bgcolor: value.items[index][3],
                      onPressed: () {
                        Provider.of<ShoppingCart>(context, listen: false)
                            .additemtoCart(index);
                      },
                    );
                  });
            }))),
          ],
        ),
      ),
    );
  }
}
