import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:git/colors.dart';
import 'package:git/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _phoneNumberController = TextEditingController();
  bool isChecked1 = false;
  bool isChecked2 = false;

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildLogoAndHeaderText(),
              const SizedBox(height: 80),
              _buildPhoneNumberInput(),
              const SizedBox(height: 80),
              _buildBottomTextAndButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLogoAndHeaderText() {
    return Padding(
      padding: const EdgeInsets.only(top: 100),
      child: Column(
        children: [
          Image.asset('lib/assets/images/git_logo_pink.png', width: 250),
          const SizedBox(height: 30),
          Text('Enter Your Phone Number',
              style: TextStyle(color: secondaryColor, fontSize: 30)),
          const SizedBox(height: 10),
          Text('We will send a code to verify ',
              style: TextStyle(color: fourthColor, fontSize: 25)),
          Text('your phone', style: TextStyle(color: fourthColor, fontSize: 25))
        ],
      ),
    );
  }

  Widget _buildPhoneNumberInput() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: TextField(
            controller: _phoneNumberController,
            keyboardType: TextInputType.phone,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly,
            ],
            decoration: InputDecoration(
              labelText: 'Phone Number',
              labelStyle: TextStyle(color: secondaryColor),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: secondaryColor)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: secondaryColor)),
            ),
            cursorColor: secondaryColor,
          ),
        ),
        Column(
          children: [
            _buildCheckboxListTile(
              value: isChecked1,
              onChanged: (value) {
                setState(() => isChecked1 = value ?? false);
              },
              title:
                  'Ive read the Privacy Notice and Ive read and accepted the Explicit Consent Form.',
            ),
            _buildCheckboxListTile(
              value: isChecked2,
              onChanged: (value) {
                setState(() => isChecked2 = value ?? false);
              },
              title:
                  'I want to receive emails, SMS, and calls within the scope of the Explicit Consent Form and Privacy Notice for Commercial Electronic Messages.',
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildCheckboxListTile({
    required bool value,
    required ValueChanged<bool?> onChanged,
    required String title,
  }) {
    return ListTile(
      leading: Checkbox(
        activeColor: secondaryColor,
        value: value,
        onChanged: onChanged,
      ),
      title: Text(title, style: TextStyle(fontSize: 16)),
    );
  }

  Widget _buildBottomTextAndButton() {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
              'By clicking Next, you agree to the terms of our User Agreement.'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(secondaryColor),
              ),
              onPressed: _onLoginPressed,
              child: const Text('Login'),
            ),
          ),
        ),
      ],
    );
  }

  void _onLoginPressed() {
    if (_isValidPhoneNumber(_phoneNumberController.text) && isChecked1) {
      _showSnackBar('Login Successful');
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    } else {
      _showSnackBar('Fill in your phone number and the Consent Form.');
    }
  }

  bool _isValidPhoneNumber(String input) {
    return input.length == 11;
  }
}
