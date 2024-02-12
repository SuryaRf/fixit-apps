import 'package:carousel_slider/carousel_slider.dart';
import 'package:fixit/constant.dart';
import 'package:fixit/models/reparation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widget/buildImage.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.8, 0.2),
              colors: <Color>[
            Color(0xff0941D1),
            Colors.white,
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: Icon(
                          Icons.person,
                          color: Colors.blue[600],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Selamat datang\nJiha Ramadhan',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 140),
                        child: Icon(
                          Icons.notifications_none,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    height: 45,
                    width: 400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: TextField(
                      controller: controller.search,
                      onSubmitted: (value) {},
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Cari Layanan Jasa',
                          fillColor: Colors.white,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                          errorBorder: InputBorder.none),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  height: 800,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: CarouselSlider.builder(
                            itemCount: reparations.length,
                            itemBuilder: (context, index, realIndex) {
                              final image = reparations[index].img;
                              return buildImage(image, index);
                            },
                            options: CarouselOptions(
                              autoPlay: true,
                              height: 200,
                              onPageChanged: (index, reason) {},
                            )),
                      ),
                      const SizedBox(height: 15,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 11),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Kategori', style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),),
                            TextButton(onPressed: (){}, child: Text('Selengkapnya >>', style: TextStyle(color: Colors.blue, fontSize: 12),))
                          ],
                        ),
                      ),
                      const SizedBox(height: 10,),
                      SizedBox(
                        height: 100,
                        width: 600,
                        child: ListView.builder(
                          itemCount: reparations.length,
                           scrollDirection: Axis.horizontal,
                        
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 10, right: 5),
                              child: Container(
                                padding: EdgeInsets.all(5),
                                height: 80,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.5),
                                 
                                  borderRadius: BorderRadius.circular(15)
                                ),
                                child: Image.asset(reparations[index].img, fit: BoxFit.cover,),
                              ),
                            );
                          }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
