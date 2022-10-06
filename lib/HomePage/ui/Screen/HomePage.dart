import 'package:carousel_slider/carousel_slider.dart';
import 'package:caterme_v2/HomePage/model/MenuList.dart';
import 'package:caterme_v2/HomePage/ui/Widget/CaroselSlider.dart';
import 'package:caterme_v2/Settings/ui/screen/Settings.dart';
import 'package:caterme_v2/utils/Images/Images.dart';
import 'package:caterme_v2/utils/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../BottomSheet/ui/Screen/Bottomsheet.dart';
import '../../../Hive/Hive.dart';
import '../../model/AddonsList.dart';
import '../../model/CaroselList.dart';
import '../../model/Flowerslist.dart';
import '../Widget/Addons.dart';
import '../Widget/Flowers.dart';
import '../Widget/Menu.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        elevation: 0,
        backgroundColor:
            ThemeHelper().getisDark() ? Colors.black : Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Settings()),
                );
              },
              icon: ImageIcon(
                AssetImage(ImageAsset.user.toString()),
                color: ThemeHelper().getisDark() ? Colors.white : Colors.black,
              )),
        ),
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 0),
          child: Image.asset(
            ImageAsset.logo2,
            fit: BoxFit.contain,
            height: 65,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () => null,
              icon: ImageIcon(
                AssetImage(ImageAsset.search.toString()),
                color: ThemeHelper().getisDark() ? Colors.white : Colors.black,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                height: 250,
                width: MediaQuery.of(context).size.width,
                child: CarouselSlider.builder(
                  options: CarouselOptions(
                    viewportFraction: 1,
                    autoPlay: true,
                  ),
                  itemCount: List1.length,
                  itemBuilder: (context, itemIndex, realIndex) {
                    return List1widget(list1key: List1[itemIndex]);
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Text(
                '  Menus',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Text(
                '   Choose one of our special menus',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: SizedBox(
                height: 300,
                width: double.infinity,
                child: GridView.builder(
                  shrinkWrap: false,
                  scrollDirection: Axis.horizontal,
                  itemCount: List2.length,
                  itemBuilder: (context, index) {
                    return List2widget(
                        list2key: List2[index],
                        ontap: () {
                          List2.forEach((element) {
                            print(element);
                            element.check == !element.check! ;
                          });
                          List2[index].check == true;
                          print(List2.where((element) => element.check=false));
                        });
                  },
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3 / 4.7,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Text(
                '  Add-ons',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Text(
                '   Extra add-ons to your special menu',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: List3.length,
                  itemBuilder: (context, index) {
                    return List3widget(list3key: List3[index]);
                  },
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Text(
                '  Flowers',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Text(
                '   Roses are red,violets are blue',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: List4.length,
                  itemBuilder: (context, index) {
                    return List4widget(list4key: List4[index]);
                  },
                ),
              ),
            ),
            SizedBox(
              height: 130,
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: SizedBox(
          width: 400.0,
          height: 68.0,
          child: FloatingActionButton.extended(
            backgroundColor: PrimaryColor,
            onPressed: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                builder: (context) => Modelsheet(),
              );
            },
            label: Container(
              width: 315,
              child: Row(

                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.calendar_month),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'What s your event?',
                          style: TextStyle(fontSize: 11),
                        ),
                        Text(
                          'Date,Places,guests...',
                          style: TextStyle(fontSize: 11),
                        )
                      ],
                    ),
                    Spacer(),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),
                          color: Colors.white,
                        ),
                        height: 30,
                        width: 30,
                        child: Center(
                            child: Icon(
                          Icons.keyboard_arrow_up_outlined,
                          color: PrimaryColor,
                          size: 30,
                        ))),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
