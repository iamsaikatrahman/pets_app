import 'package:flutter/material.dart';
import 'package:pets_app/data/data.dart';

import '../../widgets/custom_card.dart';
import 'home_widgets.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFEFF5F4),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTitle(
                title: "Hi, Ferran",
                subtitle:
                    "Check out the new products, groups, events, places and more!",
              ),
              Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color(0xFF00B7B7),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(172, 0, 183, 183)
                              .withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset:
                              const Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 70),
                      child: Text(
                        "Lola is lost in your neighborhood! Help us find her!",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image.asset(
                      "assets/pet1.png",
                      height: 120,
                    ),
                  ),
                ],
              ),
              const SectionTitle(
                title: "Walk Groups",
                seeall: "See all",
              ),
              const SizedBox(height: 10),
              CustomCard(
                itemList: allgroups,
                isGroup: true,
              ),
              const SectionTitle(
                title: "New Products",
                seeall: "See all",
              ),
              const SizedBox(height: 20),
              CustomCard(
                itemList: allProducts,
                isGroup: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
