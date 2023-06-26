import 'package:agrigenie/component/RoundedBox.dart';
import 'package:agrigenie/pages/cropinfopage.dart';
import 'package:agrigenie/pages/loginpage.dart';
import 'package:agrigenie/pages/privacypolicy.dart';
import 'package:agrigenie/pages/termsandcondition.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        backgroundColor: const Color(0xffffffff),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        centerTitle: true,
        title: Image.asset(
          'assets/appbarlogo.png', // Replace with your logo image path
          height: 30,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Handle notification button press
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: VStack(
          [
            RoundedBox(
              child: VStack([
                Center(
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff14FF00),
                    ),
                  ),
                ).px20().py20(),
                const ProfilePageTexts(),
                ListTile(
                    title: const Text(
                      'Email',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    subtitle: Container(
                      height: 40,
                      width: double.infinity,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: const Color(0xffC4FFBA),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text(
                        'pawanbhayde721@gmal.com',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    )),
                ListTile(
                    title: const Text(
                      'Mobile no.',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    subtitle: Container(
                      height: 40,
                      width: double.infinity,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: const Color(0xffC4FFBA),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text(
                        '9146618971',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    )),
              ]),
            ),
            const SizedBox(height: 20),
            RoundedBox(
              child: VStack(
                [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CropInfoPage(),
                        ),
                      );
                    },
                    child: const ListTile(
                      leading: Icon(Iconsax.setting),
                      title: Text(
                        "Setting",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PrivacyPolicyPage(),
                        ),
                      );
                    },
                    child: const ListTile(
                      leading: Icon(Iconsax.shield),
                      title: Text(
                        "Privacy Policy",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TermsAndConditionsPage(),
                        ),
                      );
                    },
                    child: const ListTile(
                      leading: Icon(Iconsax.security_user),
                      title: Text(
                        "Terms and conditions",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AgricultureLoginPage(),
                        ),
                      );
                    },
                    child: const ListTile(
                      leading: Icon(Iconsax.logout),
                      title: Text(
                        "Sign out",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ).p16(),
      ),
    );
  }
}

class SignOutAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AlertDialog(
        title: const Text('Sign Out'),
        content: const Text('Are you sure you want to sign out?'),
        actions: [
          ElevatedButton(
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop(); // Close the alert dialog
            },
          ),
          ElevatedButton(
            child: const Text('Sign Out'),
            onPressed: () {
              Future<void> _signOut() async {
                await FirebaseAuth.instance.signOut();
              }
            },
          ),
        ],
      ),
    );
  }
}

class ProfilePageTexts extends StatelessWidget {
  const ProfilePageTexts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: const Text(
          'Full Name',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        subtitle: Container(
          height: 40,
          width: double.infinity,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: const Color(0xffC4FFBA),
              borderRadius: BorderRadius.circular(10)),
          child: const Text(
            'Pawan Bhayde',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ));
  }
}
