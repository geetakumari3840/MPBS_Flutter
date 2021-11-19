import 'package:flutter/material.dart';
import 'package:mpbsindia/mainpages/about_us_list.dart';
import 'package:mpbsindia/mainpages/appbar_page.dart';
import 'package:mpbsindia/mainpages/content_us_list.dart';
import 'package:mpbsindia/mainpages/donation_list.dart';
import 'package:mpbsindia/mainpages/drawer_mpbs.dart';
// import 'package:mpbsindia/mainpages/list_view_item.dart';
import 'package:mpbsindia/mainpages/our_institute_list.dart';
import 'package:mpbsindia/mainpages/our_work_list.dart';
import 'package:mpbsindia/mainpages/photo_media_list.dart';
import 'package:mpbsindia/mainpages/responsive_help.dart';
import 'package:mpbsindia/sitepages/ao_four.dart';
import 'package:mpbsindia/sitepages/ao_one.dart';
import 'package:mpbsindia/sitepages/ao_three.dart';
import 'package:mpbsindia/sitepages/ao_two.dart';
import 'package:mpbsindia/sitepages/contact_one.dart';
import 'package:mpbsindia/sitepages/contact_three.dart';
import 'package:mpbsindia/sitepages/contact_two.dart';
import 'package:mpbsindia/sitepages/footer_page.dart';
import 'package:mpbsindia/sitepages/information_page.dart';
import 'package:mpbsindia/sitepages/mpbs_donation.dart';
import 'package:mpbsindia/sitepages/our_work.dart';
import 'package:mpbsindia/sitepages/vision_one.dart';
import 'package:mpbsindia/sitepages/vision_two.dart';
import 'package:mpbsindia/sitepages/wwa_page.dart';
import 'package:mpbsindia/sitepages/importnt_news.dart';
import 'package:mpbsindia/sitepages/picture_show.dart';
import 'package:mpbsindia/sitepages/quate_page.dart';
import 'package:mpbsindia/subpages/sub_donation_one.dart';
import 'package:mpbsindia/subpages/sub_donation_two.dart';
import 'package:mpbsindia/subpages/sub_vision_one.dart';

class HomePage extends StatefulWidget {
  // const HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ApparPage(),
      ),
      endDrawer: DrawerMpbs(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                  color: Colors.white,
                  child: ResponsiveWidget(
//Mobile
                    mobile: Column(
                      children: [
                        PicShow(),
                        // InfoPage(),
                        AboutUsList(),
                        SubDonationOne(),
                        DonationList(),
                        SubVisionOne(),
                        OurInstituteList(),
                        SubDonationTwo(),
                        PhotoMediaList(),
                        OurWorkList(),
                        ContentUsList(),
                        FooterPage(),
                      ],
                    ),
//desktop
                    desktop: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          InfoPage(),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: ImpNews(),
                              ),
                              Expanded(
                                flex: 2,
                                child: PicShow(),
                              ),
                              Expanded(
                                flex: 1,
                                child: Quate(),
                              ),
                            ],
                          ),
                          WwaPage(),
                          // Text('About Us'),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: VisionOne(),
                              ),
                              Expanded(
                                flex: 1,
                                child: VisionTwo(),
                              ),
                            ],
                          ),
                          MpbsDonate(),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: AoOne(),
                              ),
                              Expanded(
                                flex: 1,
                                child: AoTwo(),
                              ),
                              Expanded(
                                flex: 1,
                                child: AoThree(),
                              ),
                              Expanded(
                                flex: 1,
                                child: AoFour(),
                              ),
                            ],
                          ),
                          OurWork(),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: ContactOne(),
                              ),
                              Expanded(
                                flex: 1,
                                child: ContactTwo(),
                              ),
                              Expanded(
                                flex: 1,
                                child: ContactThree(),
                              ),
                            ],
                          ),
                          FooterPage(),
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
