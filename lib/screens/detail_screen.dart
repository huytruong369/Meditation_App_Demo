import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/constants.dart';
import 'package:meditation_app/widgets/bottom_nav_bar.dart';
import 'package:meditation_app/widgets/search_bar.dart';

import '../widgets/seassion_card.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Container(
              height: size.height * .45,
              decoration: const BoxDecoration(
                color: kBlueLightColor,
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage('assets/images/meditation_bg.png'),
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 19,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text(
                      'Meditation',
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 39,
                          ),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    const Text(
                      '3-10 MIN Course',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    SizedBox(
                      width: size.width * .6,
                      child: const Text(
                        'Live happier and healthier by learning the fundamentals of meditation and mindfulness',
                      ),
                    ),
                    SizedBox(
                      width: size.width * .5,
                      child: const SearchBar(),
                    ),
                    Wrap(
                      spacing: 19,
                      runSpacing: 19,
                      children: [
                        SeassionCard(
                          seasionNum: 01,
                          isDone: true,
                          press: () {},
                        ),
                        const SeassionCard(
                          seasionNum: 02,
                        ),
                        const SeassionCard(
                          seasionNum: 03,
                        ),
                        const SeassionCard(
                          seasionNum: 04,
                        ),
                        const SeassionCard(
                          seasionNum: 05,
                        ),
                        const SeassionCard(
                          seasionNum: 06,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 19,
                    ),
                    Text(
                      'Meditation',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 19),
                      padding: const EdgeInsets.all(9),
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 23,
                            spreadRadius: -13,
                            color: kShadowColor,
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/Meditation_women_small.svg',
                          ),
                          const SizedBox(
                            width: 19,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Basic 2',
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1!
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                const Text('Start your deepen you practice'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: SvgPicture.asset('assets/icons/Lock.svg'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
