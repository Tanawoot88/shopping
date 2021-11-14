import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food/models/shop_item.dart';
import 'package:google_fonts/google_fonts.dart';



class ShopDetails extends StatelessWidget{
  const ShopDetails({Key? key}) : super(key: key);
  static const routeName = '/foodDetails';
  
  @override
  Widget build(BuildContext context) {
    final Item = ModalRoute.of(context)!.settings.arguments as ShopItem;
    return Scaffold(
      appBar: AppBar(
        title: Text('${Item.name}',style:TextStyle(fontSize: 20.0),),
      ),
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end:
              Alignment(0.8, 0.0), // 10% of the width, so there are ten blinds.
              colors: <Color>[
                Color(0xffc7e8aa),
                Color(0xffd7f5d5)
              ],
            ),
          ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                  width: 300.0,
                  height: 150.0,
                  child: Image.asset('assets/images/${Item.image}',)
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('สินค้า:  ''${Item.name}' ,style: GoogleFonts.kanit(fontSize: 20.0)),
                  Text('ราคา: '   '${Item.price} ''บาท',style:GoogleFonts.kanit(fontSize: 20.0)),
                  Text('รายละเอียด:'   '${Item.detell} ',style:GoogleFonts.kanit(fontSize: 20.0)),
                ],
              ),
            ),
            Expanded( child: SizedBox.shrink(),),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:0.0,horizontal: 50.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);

                  },
                  child: Icon(
                    Icons.shopping_basket,
                    size: 30.0, // ขนาดไอคอน
                    color: Colors.white,
                  )
              ),
            ),
          ]


        )
      ),
      );
  }
}


