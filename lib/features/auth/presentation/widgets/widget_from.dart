import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class TextFromWidget extends StatelessWidget {
  final Function phoneNumber;
  final TextEditingController phoneController;

  const TextFromWidget(
      {Key? key, required this.phoneController, required this.phoneNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter your phone number';
        }

        return null;
      },
      controller: phoneController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        hintText: '01118101402',
        hintStyle: const TextStyle(
          color: Colors.grey,
        ),
        prefixIcon: CountryCodePicker(
          onChanged: (CountryCode countryCode) {
            phoneNumber(countryCode.dialCode.toString());
          },
          initialSelection: 'EG',
          showFlag: true,
          favorite: const ['+20', 'EG'],
          showCountryOnly: false,
          showOnlyCountryWhenClosed: false,
          alignLeft: false,
          showDropDownButton: true,
          padding: EdgeInsets.zero,
        ),
      ),
    );
  }
}
