import 'dart:ui';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:suplipar/pages/setting_page.dart';
import 'package:suplipar/widgets/dark_button.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController fullNameController = TextEditingController();

  TextEditingController dateOfBirthController = TextEditingController();

  TextEditingController genderController = TextEditingController();

  TextEditingController emailcontroller = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController locationController = TextEditingController();

  String? selectedGender;

  Country country = CountryParser.parseCountryCode('IN');

  void showPicker() {
    showCountryPicker(
        context: context,
        favorite: ['IN', 'US', 'CA'],
        countryListTheme: CountryListThemeData(
            bottomSheetHeight: 600,
            backgroundColor: Colors.grey[400],
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            inputDecoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey[400],
                ),
                hintText: 'serach your country',
                border: InputBorder.none)),
        onSelect: (country) {
          setState(() {
            this.country = country;
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/background.png'), // Replace 'background_image.jpg' with your actual image path
                      fit: BoxFit.cover, // Adjust the fit as needed
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20, top: 30),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SettingPage()),
                                );
                              },
                              style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Colors.black.withOpacity(0.01)),
                                  elevation: MaterialStatePropertyAll(0)),
                              child: SvgPicture.asset('assets/svg/setting.svg',
                                width: 35),
                            ),
                            const SizedBox(width: 8),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SettingPage()),
                                );
                              },
                              style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Colors.black.withOpacity(0.01)),
                                  elevation: MaterialStatePropertyAll(0)),
                              child: SvgPicture.asset('assets/svg/menu.svg',
                                  width: 35),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 190),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  'assets/images/image.png',
                                  width: 80,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                                height: 10,
                              ),
                              const Text(
                                "Orlando Diggs",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "California, USA",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              const SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color.fromARGB(86, 111, 111, 111)),
                                  shape: MaterialStateProperty.all(
                                      const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(12)))),
                                  elevation: MaterialStateProperty.all(0),
                                ),
                                child: const Text(
                                  'Change Image',
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 200, 199, 199)),
                                ),
                              ),
                              const SizedBox(height: 20),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                const SizedBox(
                    height:
                        20), // Add spacing between the profile section and login text
                Container(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        _buildFullNameSection(context),
                        const SizedBox(
                          height: 10,
                        ),
                        _buildDateOfBirth(context),
                        const SizedBox(
                          height: 10,
                        ),
                        _buildGender(context),
                        const SizedBox(
                          height: 10,
                        ),
                        _buildEmail(context),
                        const SizedBox(
                          height: 10,
                        ),
                        _buildPhoneNumber(context),
                        const SizedBox(
                          height: 10,
                        ),
                        _buildLocation(context),
                        const SizedBox(
                          height: 20,
                        ),
                        DarkButton(
                          onPressed: () {
                            // Add the logic for opening the email app
                          },
                          text: "SAVE",
                          backgroundColor:
                              const Color.fromARGB(255, 46, 58, 66),
                          textColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFullNameSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Full name",
            style: TextStyle(
                color: Color.fromARGB(255, 149, 149, 149),
                fontWeight: FontWeight.w500,
                fontSize: 15),
          ),
          const SizedBox(height: 10),
          TextFormField(
              controller: fullNameController,
              decoration: InputDecoration(
                hintText: "Brandone Louis",
                hintStyle: TextStyle(color: Colors.grey[400]),
                focusColor: Colors.amber,
                filled: true, // Enable filling the background
                fillColor: const Color.fromARGB(
                    255, 241, 241, 241), // Background color
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0), // Rounded corners
                  borderSide: BorderSide.none, // No border
                ),
              ),
              style: const TextStyle(
                  color: Color.fromARGB(255, 72, 72, 72),
                  fontWeight:
                      FontWeight.bold // Color for the text in the controller
                  )),
        ],
      ),
    );
  }

  Widget _buildDateOfBirth(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Date Of Birth",
            style: TextStyle(
                color: Color.fromARGB(255, 149, 149, 149),
                fontWeight: FontWeight.w500,
                fontSize: 15),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: dateOfBirthController,
            decoration: InputDecoration(
              hintText: "   06/10/2000",
              hintStyle: TextStyle(color: Colors.grey[400]),
              iconColor: Colors.grey,
              prefixIcon: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: SizedBox(
                  width: 80, // Set your desired width
                  height: 64, // Set your desired height
                  child: ElevatedButton(
                    onPressed: () async {
                      DateTime? datepicked = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1990),
                          lastDate: DateTime.now());
                      if (datepicked != null) {
                        String formattedDate =
                            DateFormat('dd/MM/yyyy').format(datepicked);

                        setState(() {
                          dateOfBirthController.text = formattedDate;
                        });
                      }
                    },
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.grey[200]!),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              12), // Set your desired border radius
                        ),
                      ),
                    ),
                    child: const Icon(
                      Icons.edit_calendar,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ),
              focusColor: Colors.amber,
              filled: true, // Enable filling the background
              fillColor:
                  const Color.fromARGB(255, 241, 241, 241), // Background color
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0), // Rounded corners
                borderSide: BorderSide.none, // No border
              ),
            ),
            style: const TextStyle(
                color: Color.fromARGB(255, 72, 72, 72),
                fontWeight:
                    FontWeight.bold // Color for the text in the controller
                ),
          ),
        ],
      ),
    );
  }

  Widget _buildGender(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Gender",
            style: TextStyle(
                color: Color.fromARGB(255, 149, 149, 149),
                fontWeight: FontWeight.w500,
                fontSize: 15),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Radio<String>(
                value: "male",
                groupValue: selectedGender,
                onChanged: (value) {
                  setState(() {
                    selectedGender = value;
                  });
                },
              ),
              Text("Male"),
              SizedBox(width: 20),
              Radio<String>(
                value: "female",
                groupValue: selectedGender,
                onChanged: (value) {
                  setState(() {
                    selectedGender = value;
                  });
                },
              ),
              Text("Female"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Email",
            style: TextStyle(
                color: Color.fromARGB(255, 149, 149, 149),
                fontWeight: FontWeight.w500,
                fontSize: 15),
          ),
          const SizedBox(height: 10),
          TextFormField(
              controller: emailcontroller,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "example@gmail.com",
                hintStyle: TextStyle(color: Colors.grey[400]),
                focusColor: Colors.amber,
                filled: true,
                fillColor: Color.fromARGB(255, 241, 241, 241),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
              ),
              style: const TextStyle(
                  color: Color.fromARGB(255, 72, 72, 72),
                  fontWeight:
                      FontWeight.bold // Color for the text in the controller
                  )),
        ],
      ),
    );
  }

  Widget _buildPhoneNumber(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Mobile Number",
            style: TextStyle(
                color: Color.fromARGB(255, 149, 149, 149),
                fontWeight: FontWeight.w500,
                fontSize: 15),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: phoneNumberController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: "0000000000",
              hintStyle: TextStyle(color: Colors.grey[400]),
              prefixIcon: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: showPicker,
                child: Container(
                  height: 55,
                  width: 100,
                  alignment: Alignment.center,
                  child: Text(
                    '${country.flagEmoji} +${country.phoneCode} ',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              focusColor: Colors.amber,
              filled: true, // Enable filling the background
              fillColor: Color.fromARGB(255, 241, 241, 241), // Background color
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0), // Rounded corners
                borderSide: BorderSide.none, // No border
              ),
            ),
            style: const TextStyle(
                color: Color.fromARGB(255, 72, 72, 72),
                fontWeight:
                    FontWeight.bold // Color for the text in the controller
                ),
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly, // Allow only digits
              LengthLimitingTextInputFormatter(10), // Limit to 10 digits
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLocation(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Location",
            style: TextStyle(
                color: Color.fromARGB(255, 149, 149, 149),
                fontWeight: FontWeight.w500,
                fontSize: 15),
          ),
          const SizedBox(height: 10),
          TextFormField(
              controller: locationController,
              decoration: InputDecoration(
                hintText: "singapure",
                hintStyle: TextStyle(color: Colors.grey[400]),
                focusColor: Colors.amber,
                filled: true, // Enable filling the background
                fillColor:
                    Color.fromARGB(255, 241, 241, 241), // Background color
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0), // Rounded corners
                  borderSide: BorderSide.none, // No border
                ),
              ),
              style: const TextStyle(
                  color: Color.fromARGB(255, 72, 72, 72),
                  fontWeight:
                      FontWeight.bold // Color for the text in the controller
                  )),
        ],
      ),
    );
  }
}
