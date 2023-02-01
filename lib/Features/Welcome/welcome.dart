import 'package:expense_manager/Core/app_colors.dart';
import 'package:expense_manager/Core/responsive_button.dart';
import 'package:expense_manager/Core/router.dart';
import 'package:expense_manager/Features/Welcome/app_large_text.dart';
import 'package:expense_manager/Features/Welcome/app_text.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}

class SplashScreen extends StatelessWidget {
  List images = ['01.jpg', '02.jpg'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: images.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (ctx, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,

              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/${images[index]}'),
                    fit: BoxFit.cover),
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 120, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        const AppLargeText(text: 'Trips'),
                        const AppText(text: 'Mountain'),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 250,
                            child: const AppText(text: 'This is a dummy text fow now, to test the space it will take on content increase. Thank you', color: Colors.black54,fontSize: 16,)),
                        const SizedBox(
                          height: 20,
                        ),
                        GestureDetector(child: ResponsiveButton(),
                        onTap: (){
                          Navigator.of(context).pushNamed(Navigation.mainView);
                        },)
                      ],
                    ),
                    Column(
                      children: List.generate(2, (indexDot){
                        return Container(
                          margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                          width: 8,
                          height: index == indexDot ? 25 : 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: index == indexDot ? AppColors.buttonBackground : AppColors.background
                          ),
                        );
                      }),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
