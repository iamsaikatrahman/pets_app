import 'package:flutter/material.dart';

import '../data/data.dart';

class CustomCard extends StatelessWidget {
  // final String imgUrl;
  // final String title;
  // final String location;
  // final String author;
  final List itemList;
  final bool isGroup;
  // int? members;
  // int? stock;
  // double? price;
  CustomCard({
    Key? key,
    // required this.imgUrl,
    // required this.title,
    // required this.location,
    // required this.author,
    required this.itemList,
    required this.isGroup,
    // this.members,
    // this.stock,
    // this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 380,
      padding: const EdgeInsets.only(bottom: 20),
      child: ListView.builder(
        padding: const EdgeInsets.all(8),
        scrollDirection: Axis.horizontal,
        itemCount: itemList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 280,
            margin: const EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                    ),
                    child: Image.asset(
                      itemList[index].thumbnail,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          isGroup
                              ? itemList[index].groupName
                              : itemList[index].name,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 30),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(isGroup
                                ? Icons.location_on
                                : Icons.attach_money),
                            const SizedBox(width: 5),
                            Text(
                              isGroup
                                  ? itemList[index].location
                                  : itemList[index].price.toString(),
                              style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(isGroup
                                ? Icons.people
                                : Icons.production_quantity_limits),
                            const SizedBox(width: 5),
                            Text(
                              isGroup
                                  ? itemList[index].members.toString() +
                                      " members"
                                  : itemList[index].stock.toString() +
                                      " stocks",
                              style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(Icons.person),
                            const SizedBox(width: 5),
                            RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                text: isGroup ? "Organized by " : "Shop owner ",
                                style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: isGroup
                                    ? itemList[index].organizedBy
                                    : itemList[index].sellby,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Color(0xFF00B7B7),
                                ),
                              )
                            ])),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
