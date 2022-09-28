class RadiobuttonModel {
  final String name;
  final int index;

  RadiobuttonModel({required this.name, required this.index});

  static List<RadiobuttonModel> getRadioButton() {
    return <RadiobuttonModel>[
      RadiobuttonModel(name: 'Mail', index: 0),
      RadiobuttonModel(name: 'Mail_2', index: 1),
      RadiobuttonModel(name: 'Mail_3', index: 2),
      RadiobuttonModel(name: 'Mail_4', index: 3),
      RadiobuttonModel(name: 'Mail_5', index: 4),
      RadiobuttonModel(name: 'Mail_5', index: 5),
    ];
  }
}
