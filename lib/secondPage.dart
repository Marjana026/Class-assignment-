import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Payment Method'),
        backgroundColor: Colors.red[200],
      ),
      backgroundColor: Colors.red[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Buttons with images for payment methods
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildPaymentButton('https://seeklogo.com/images/B/bkash-logo-0C1572FBB4-seeklogo.com.png', 'bKash', context),
                _buildPaymentButton('https://seeklogo.com/images/N/nagad-logo-7A70CCFEE0-seeklogo.com.png', 'Nagad', context),
                _buildPaymentButton('https://seeklogo.com/images/M/mastercard-logo-473B8726A9-seeklogo.com.png', 'Mastercard', context),
                // Add more payment method buttons as needed
              ],
            ),
          ),
          // Dropdown button with URL images as options
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton<String>(
              hint: Text('Choose Payment Method', style: TextStyle(color: Colors.black)), // Set hint text color to white
              icon: Icon(Icons.arrow_drop_down, color: Colors.red[200]), // Change dropdown arrow color
              style: TextStyle(color: Colors.red[200]), // Change dropdown text color
              items: <String>[
                'https://seeklogo.com/images/B/bkash-logo-835789094A-seeklogo.com.png',
                'https://seeklogo.com/images/N/nagad-logo-7A70CCFEE0-seeklogo.com.png',
                'https://seeklogo.com/images/M/mastercard-logo-473B8726A9-seeklogo.com.png'
              ].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Image.network(
                    value,
                    width: 50,
                    height: 50,
                    fit: BoxFit.contain,
                  ),
                );
              }).toList(),
              onChanged: (String? newValue) {
                // Implement dropdown change logic here
              },
            ),
          ),
          // Go back button
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context); // Navigate back to the first page
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.red[200],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            child: Text('Go Back'),
          ),
        ],
      ),
    );
  }

  Widget _buildPaymentButton(String imagePath, String paymentName, BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Implement logic for the payment method selection
        // For example: Perform actions when a payment method button is tapped
      },
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.network(
              imagePath,
              width: 100,
              height: 100,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 8),
          Text(
            paymentName,
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}