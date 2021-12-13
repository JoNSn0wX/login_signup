import 'package:flutter/material.dart';
import 'package:login_signup/src/resource/food.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({
    Key? key,
  }) : super(key: key);
  @override
  State<ListViewScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ListViewScreen> {
  List<Food> food = [
    Food(
        name: 'name',
        image:
            'https://cdn.iconscout.com/icon/free/png-256/fast-food-1851561-1569286.png',
        subName: 'subname'),
    Food(
        name: 'name',
        image:
            'https://cdn.iconscout.com/icon/free/png-256/fast-food-1851561-1569286.png',
        subName: 'subname'),
    Food(
        name: 'name',
        image:
            'https://cdn.iconscout.com/icon/free/png-256/fast-food-1851561-1569286.png',
        subName: 'subname'),
    Food(
        name: 'name',
        image:
            'https://cdn.iconscout.com/icon/free/png-256/fast-food-1851561-1569286.png',
        subName: 'subname'),
    Food(
        name: 'name',
        image:
            'https://cdn.iconscout.com/icon/free/png-256/fast-food-1851561-1569286.png',
        subName: 'subname'),
    Food(
        name: 'name',
        image:
            'https://cdn.iconscout.com/icon/free/png-256/fast-food-1851561-1569286.png',
        subName: 'subname'),
    Food(
        name: 'name',
        image:
            'https://cdn.iconscout.com/icon/free/png-256/fast-food-1851561-1569286.png',
        subName: 'subname'),
    Food(
        name: 'name',
        image:
            'https://cdn.iconscout.com/icon/free/png-256/fast-food-1851561-1569286.png',
        subName: 'subname'),
    Food(
        name: 'name',
        image:
            'https://cdn.iconscout.com/icon/free/png-256/fast-food-1851561-1569286.png',
        subName: 'subname'),
    Food(
        name: 'name',
        image:
            'https://cdn.iconscout.com/icon/free/png-256/fast-food-1851561-1569286.png',
        subName: 'subname'),
    Food(
        name: 'name',
        image:
            'https://cdn.iconscout.com/icon/free/png-256/fast-food-1851561-1569286.png',
        subName: 'subname'),
    Food(
        name: 'name',
        image:
            'https://cdn.iconscout.com/icon/free/png-256/fast-food-1851561-1569286.png',
        subName: 'subname'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(12),
      child: _buildListViewBuilderFood(),
    ));
  }

  Widget _buildListViewBuilderFood() {
    return ListView.builder(
        itemCount: food.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 80,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Row(
                  children: [
                    Container(
                        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                        height: 90,
                        width: 90,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(10))),
                        child: Image.network('${food[index].image}')),
                    Column(
                      children: [
                        Row(children: [
                          const Padding(
                            padding: EdgeInsets.fromLTRB(13, 50, 0, 0),
                          ),
                          Text('${food[index].name}',
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20)),
                        ]),
                        Row(children: [
                          const Padding(
                            padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                          ),
                          Text('${food[index].subName}',
                              style: const TextStyle(
                                  fontStyle: FontStyle.normal, fontSize: 16)),
                        ])
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
        });
  }
}
