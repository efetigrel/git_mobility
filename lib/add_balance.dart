import 'package:flutter/material.dart';
import 'package:git/colors.dart';
import 'package:git/constants.dart';

class AddBalance extends StatefulWidget {
  const AddBalance({Key? key}) : super(key: key);

  @override
  _AddBalanceState createState() => _AddBalanceState();
}

class _AddBalanceState extends State<AddBalance> {
  bool isChecked = false;
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildHeader(),
            _buildBody(),
            _buildAddBalanceButton(),
          ],
        ),
      ),
    );
  }

  // HEADER
  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        customIconButtonBack(
          onPressed: () {
            Navigator.pop(context);
          },
          Icons.arrow_back_ios_new,
        ),
        Text(
          'Add Balance',
          style: TextStyle(fontSize: 22, color: secondaryColor),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 75),
          child: SizedBox(),
        ),
      ],
    );
  }

  // BODY
  Widget _buildBody() {
    return Column(
      children: [
        _buildBalanceInfo(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              SizedBox(height: 15),
              _buildCreditCardRow(),
              SizedBox(height: 15),
              _buildAgreementCheckbox(),
              SizedBox(height: 15),
              _buildAutoReload(),
            ],
          ),
        )
      ],
    );
  }

  // FOOTER
  Widget _buildAddBalanceButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: secondaryColor,
          minimumSize: const Size(double.infinity, 50)),
      onPressed: () {},
      child: const Text('Add Balance'),
    );
  }

  // BODY İTEMS
  Widget _buildBalanceInfo() {
    return Column(
      children: [
        const Text('Balance'),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Text(
            '₺0.00',
            style: TextStyle(
              color: secondaryColor,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Text('Select amount to reload Git Wallet'),
        SizedBox(height: 15),
        _buildAmountCards(),
      ],
    );
  }

  Widget _buildAmountCards() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildAmountCard('₺50'),
        _buildPopularAmountCard('₺100'),
        _buildAmountCard('₺200'),
      ],
    );
  }

  Widget _buildAmountCard(String amount) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 35),
        child: Text(
          amount,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
    );
  }

  Widget _buildPopularAmountCard(String amount) {
    return Card(
      color: secondaryColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 25),
        child: Column(
          children: [
            Text(
              'Most Popular',
              style: TextStyle(color: whiteColor),
            ),
            Text(
              amount,
              style: TextStyle(
                color: whiteColor,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCreditCardRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildCreditCardIconAndDetails(),
        _buildChangeButton(),
      ],
    );
  }

  Widget _buildCreditCardIconAndDetails() {
    return const Row(
      children: [
        const Icon(Icons.credit_card, size: 45, color: Colors.black54),
        SizedBox(width: 5),
        Column(
          children: [Text('GÖKBÖRÜ EFE TIĞREL'), Text('**** **** **** 1234')],
        ),
      ],
    );
  }

  Widget _buildChangeButton() {
    return InkWell(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
      child: const Padding(
        padding: EdgeInsets.zero,
        child: Text(
          'Change',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }

  Widget _buildAgreementCheckbox() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Checkbox(
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value ?? false;
              });
            },
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'I confirm that I ve read and agree to',
                style: TextStyle(fontSize: 16.0),
              ),
              InkWell(
                onTap: () {},
                child: const Padding(
                  padding: EdgeInsets.zero,
                  child: Text(
                    'Wallet Agreement',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAutoReload() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Auto Relaod'),
              Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              )
            ],
          ),
          const Text(
            'By Activating Auto Reload, the amount you have determined above will be withdrawn from your primary credit card and credited to your Git Wallet when your balance drops below',
            textAlign: TextAlign.center,
          ),
          const Text('₺20'),
        ],
      ),
    );
  }
}
