import 'package:flutter/material.dart';
import 'package:ulearning_app/page/profile/widgets/widgets.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildProfileAppBar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Center(child: profileAvatar()),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'hungthe4869',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                bigButton('assets/icons/camera.png', 'My Courses'),
                bigButton('assets/icons/book.png', 'Buy Courses'),
                bigButton('assets/icons/star.png', '4.5')
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                rowIcon('assets/icons/settings.png', 'Settings'),
                SizedBox(
                  height: 15,
                ),
                rowIcon('assets/icons/credit_card.png', 'Payment Details'),
                SizedBox(
                  height: 15,
                ),
                rowIcon('assets/icons/trophy.png', 'Achievements'),
                SizedBox(
                  height: 15,
                ),
                rowIcon('assets/icons/love.png', 'Love'),
                SizedBox(
                  height: 15,
                ),
                rowIcon('assets/icons/notebook.png', 'Learning Reminders')
              ],
            )
          ],
        ),
      ),
    );
  }
}
