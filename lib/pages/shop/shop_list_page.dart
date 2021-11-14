import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food/models/shop_item.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/shop_details.dart';

class ShopListPage extends StatefulWidget {
  const ShopListPage({Key? key}) : super(key: key);

  @override
  _ShopListPageState createState() => _ShopListPageState();
}

class _ShopListPageState extends State<ShopListPage> {
  var items = [
    ShopItem(
        id: 1,
        name: 'keyboard',
        price: '2,490',
        image: 'keybroad.jpg',
        detell: '\nInteface : USB port\nBacklit : lighting Rainbow Color\nConnector : 1.45m\nGaming Win lock hot key to prevent interference\nAnti-ghosting\nWeight : 485G\nCompatibility : Win10/Win8/Win7, etc'

    ),
    ShopItem(
        id: 2,
        name: 'PC Set',
        price: '49,690',
        image: 'pcset.jpg',
        detell: '\nCPU : intel i7 10700k\nGPU : Nvidia Geforce GTX 2070\nMainbroad : Asus Rog z390 strix\nRam : 32 gb buss3200\nPSU : cosair 700w\nCase : Montech'

    ),
    ShopItem(
        id: 3,
        name: 'Headset',
        price: '2,990',
        image: 'headset.jpg',
        detell: '\nConductor: 50mm\nFrequency response: 20Hz-20KHz\nImpedance: 39 ohms (passive), 5 k ohms (active)\nSensitivity: 107 ± 3dB'
    ),
    ShopItem(
        id: 4,
        name: 'Microphone',
        price: '5,690',
        image: 'mic.jpg',
        detell: 'Diaphragm	0.55″ / 14 mm\nPolar Pattern	Cardioid, Figure-8, Omnidirectional, Stereo Mode\nPattern Selection	Switched\nFrequency Range	20 Hz to 20 kHz\nMaximum SPL	120 dB SPLn\nTHD	0.5%\nDigital Performance\nBit Depth	16-Bit\nSample Rate	48 kHz\nPlatform Support	Windows, macOS/OS X'
    ),
    ShopItem(
        id: 5,
        name: 'Mouse',
        price: '1,299',
        image: 'mouse.jpg',
        detell: '\nLength:11.66cm\nProduct Name: Logitech(G)\nGross weight: 0.73kg Product\nProduct No.: G304\nFeatures: Skin like material\nHighest DPI: 8001-12000 '
    ),
    ShopItem(
        id: 6,
        name: 'Speaker',
        price: '1,890',
        image: 'speaker.jpg',
        detell: '\nDesktop or stands\n5” woofers\nAnalog inputs\nConnect a subwoofer\nWireless options\nRemote control'
    ),
    ShopItem(
        id: 7,
        name: 'Gaming chair',
        price: '12,900',
        image: 'chair.jpg',
        detell: '\nRECOMMENDED SIZE\nHeight : 170-200cm\nWeight : <150\n'
    ),
    ShopItem(
        id: 8,
        name: 'Robot',
        price: '5,490',
        image: 'robot.jpg',
        detell: '\nModel : MJSTGT\nVoltage : 100 - 240V\nPower : 25W\nsuction power : 2200Pa\nClean : dusting , vacuum\nMode : 4 Level Silence , Normal , Power , Max power'
    ),
    ShopItem(
        id: 9,
        name: 'Table',
        price: '990',
        image: 'table.jpg',
        detell: '\nColor : Black\nSize(cm) : 120x60x75 \nWeight(kg) : 15'
    ),
    ShopItem(
        id: 10,
        name: 'Mousepad',
        price: '790',
        image: 'mousepad.jpg',
        detell: '\nSize : 450x400x3 mm\nType : speed\nstitched edges'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end:
          Alignment(0.8, 0.0), // 10% of the width, so there are ten blinds.
          colors: <Color>[
            Color(0xff34ee00),
            Color(0xff00f8a4)
          ],
        ),
      ),
      child: SafeArea(
        child: Center(
          child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                var item = items[index];
                return Card(
                    margin: const EdgeInsets.all(8.0),
                    child:
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context,
                            ShopDetails.routeName,
                        arguments: item);
                      },

                      child: Padding(
                        padding: const EdgeInsets.all(8.0),

                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/${item.image}',
                              width: 100.0,
                              height: 100.0,),
                            SizedBox(width: 8.0,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(item.name,
                                    style: GoogleFonts.kanit(fontSize: 25.0)),
                                Text('${item.price} ''บาท',
                                  style: GoogleFonts.kanit(fontSize: 20.0)),
                            ]
                          )
                          ]
                            ),

                        ),
                      ),
                    );
              }),
        ),
      ),
    );
  }
}

