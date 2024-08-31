import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:movo/core/theme/extension.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/bg_2.jpg"),
            ),
          ),
          child: Container(
            color: const Color.fromRGBO(64, 71, 86, 0.3),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.5.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const OnBoardingAppBar(),
                    const Spacer(flex: 1),
                    OnBoardingCarousel(
                      onPageChanged: (index) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                    ),
                    const Spacer(flex: 1),
                    CarouselDot(currentIndex: _currentIndex),
                    const Spacer(flex: 2),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {},
                          iconSize: 11.w,
                          style: ButtonStyle(
                            side: WidgetStateBorderSide.resolveWith(
                              (states) => BorderSide(
                                width: 0.5.w,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          icon: const Icon(Icons.arrow_right_outlined),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 3.h, bottom: 1.h),
                          child: Text(
                            "See what's next.",
                            style: context.textTheme.headlineMedium,
                          ),
                        ),
                        Text(
                          "Hello every one hope you are well.",
                          style: context.textTheme.labelMedium,
                        )
                      ],
                    ),
                    const Spacer(flex: 2),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class OnBoardingAppBar extends StatelessWidget {
  const OnBoardingAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(width: 35.w, "assets/images/netflix.png"),
        const Spacer(),
        GestureDetector(
          onTap: () {},
          child: Text(
            "PRIVACY",
            style: context.textTheme.titleMedium,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_vert_rounded),
        ),
      ],
    );
  }
}

class OnBoardingCarousel extends StatefulWidget {
  const OnBoardingCarousel({required this.onPageChanged, super.key});
  static const List<String> imgs = [
    "assets/images/onboarding_1.jpg",
    "assets/images/onboarding_2.jpg",
    "assets/images/onboarding_3.jpg",
  ];
  final ValueChanged<int> onPageChanged;

  @override
  State<OnBoardingCarousel> createState() => _OnBoardingCarouselState();
}

class _OnBoardingCarouselState extends State<OnBoardingCarousel> {
  Card _carouselItem(String image) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: Image.asset(image, fit: BoxFit.fill, width: 50.w),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: OnBoardingCarousel.imgs.length,
      itemBuilder: (_, index, __) => _carouselItem(
        OnBoardingCarousel.imgs[index],
      ),
      options: CarouselOptions(
        height: 35.h,
        enlargeFactor: 0.25,
        viewportFraction: 0.5,
        enlargeCenterPage: true,
        autoPlayInterval: const Duration(seconds: 5),
        onPageChanged: (index, _) => setState(() => widget.onPageChanged),
      ),
    );
  }
}

class CarouselDot extends StatefulWidget {
  const CarouselDot({required this.currentIndex, super.key});
  final int currentIndex;

  @override
  State<CarouselDot> createState() => _CarouselDotState();
}

class _CarouselDotState extends State<CarouselDot> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 1.h,
        child: ListView.separated(
          itemCount: 3,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return AnimatedContainer(
              width: index == widget.currentIndex ? 5.w : 2.w,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1.sp,
                  color: Colors.red,
                ),
                color: Colors.red,
                borderRadius: BorderRadius.circular(20.h),
              ),
              duration: const Duration(milliseconds: 300),
            );
          },
          separatorBuilder: (_, index) => SizedBox(width: 1.5.w),
        ),
      ),
    );
  }
}
