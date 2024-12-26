// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

import 'package:onechat/common/utils/app_colors.dart';
import 'package:onechat/views/login/widgets/custom_text_field.dart';

import '../../common/widgets/custom_elevated_button.dart';
import '../../common/widgets/custom_icon_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController countryNameController;
  late TextEditingController phoneNumberController;
  late TextEditingController countryCodeController;

  showCountryCodePicker() {
    showCountryPicker(
        context: context,
        showPhoneCode: true,
        favorite: ['BD'],
        countryListTheme: CountryListThemeData(
          bottomSheetHeight: 600,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          flagSize: 22,
          borderRadius: BorderRadius.circular(20),
          textStyle: const TextStyle(color: AppColors.greyLight),
          inputDecoration: const InputDecoration(
            labelStyle: TextStyle(color: AppColors.greyLight),
            prefixIcon: Icon(
              Icons.language,
              color: AppColors.greyLight,
            ),
            hintText: 'Search country code or name',
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.greyLight),
            ),
          ),
        ),
        onSelect: (country) {
          countryNameController.text = country.name;
          countryCodeController.text = country.countryCode;
        });
  }

  @override
  void initState() {
    super.initState();
    countryNameController = TextEditingController(text: 'Bangladesh');
    phoneNumberController = TextEditingController();
    countryCodeController = TextEditingController(text: '880');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    countryNameController.dispose();
    phoneNumberController.dispose();
    countryCodeController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: ,
        elevation: .5,
        title: const Text(
          'Enter your phone number',
          style: TextStyle(color: AppColors.greenDark, height: 12),
        ),
        centerTitle: true,
        actions: [
          CustomIconButton(
            icon: Icons.more_vert,
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: RichText(
              text: const TextSpan(
                text: 'OneChat will need to verify your phone number. ',
                style: TextStyle(
                  color: Colors.grey, // color will change
                  height: 1.5,
                ),
                children: [
                  TextSpan(
                      text: 'What\'s my number?',
                      style: TextStyle(
                        color: AppColors.greenDark,
                        // color: context.theme.blueColor,
                        height: 1.5,
                      )),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: CustomTextField(
              onTap: showCountryCodePicker,
              controller: countryNameController,
              readOnly: true,
              suffixIcon: const Icon(
                Icons.arrow_drop_down,
                color: AppColors.greenDark,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              children: [
                SizedBox(
                  width: 70,
                  child: CustomTextField(
                    onTap: showCountryCodePicker,
                    controller: countryCodeController,
                    prefixText: '+',
                    readOnly: true,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: CustomTextField(
                    controller: phoneNumberController,
                    hintText: 'phone number',
                    textAlign: TextAlign.left,
                    keyboardType: TextInputType.number,
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Carrier charges may apply',
            style: TextStyle(
                // color: context.theme.greyColor,
                ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomElevatedButton(
        onPressed: () {},
        text: 'NEXT',
        buttonWidth: 90,
      ),
    );
  }
}
