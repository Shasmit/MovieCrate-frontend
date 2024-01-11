import 'package:filmcrate/config/constants/app_color_theme.dart';
import 'package:flutter/material.dart';

class AboutUsView extends StatelessWidget {
  const AboutUsView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        shadowColor: Colors.transparent,
        toolbarHeight: 90.0,
        title: const Text(
          'ABOUT US',
          style: TextStyle(
            fontSize: 38,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: screenSize.height * 0.1,
              width: screenSize.width * 0.5,
              child: Image.asset(
                'images/backgrounds/filmcrate.png',
                fit: BoxFit.contain,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 12.0,
                right: 22,
              ),
              child: Text(
                'MovieCrate stands as a comprehensive movie review and recommendation application, meticulously designed to serve as an all-encompassing platform for movie enthusiasts. Its vision is to offer a seamless experience for discovering, reviewing, and recommending films, with a focus on user-friendliness, intuitiveness, and engagement. Developed utilizing the cutting-edge Flutter Framework and supported by MongoDB as its backend database, MovieCrate incorporates NodeJS to facilitate a RESTful API, ensuring smooth communication between the server and client sides.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Source Sans Pro',
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text(
                'Designed and Developed by :',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Source Sans Pro',
                  fontWeight: FontWeight.bold,
                  color: AppColors.navbarbodyColors,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage:
                        AssetImage('images/backgrounds/Shasmit.JPG'),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shasmit Basnet',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          color: AppColors.navbarbodyColors,
                          letterSpacing: 1.5,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.phone,
                            color: AppColors.navbarbodyColors,
                            size: 15,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            '984-1234567',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: AppColors.navbarbodyColors,
                              letterSpacing: 1.5,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.mail,
                            color: AppColors.navbarbodyColors,
                            size: 15,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'moviecrate@gmail.com',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: AppColors.navbarbodyColors,
                              letterSpacing: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
