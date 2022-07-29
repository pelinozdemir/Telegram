class Person_data_list {
  static var person_knowledge = [
    Person_Data('Scarlett', '0555-xxx-xx-xx',
        'https://cdn.pixabay.com/photo/2022/07/07/09/08/lighthouse-7306839_960_720.jpg')
  ];

  static Person_Data getPerson() {
    return person_knowledge[0];
  }
}

class Person_Data {
  String name;
  String number;
  String image;

  Person_Data(this.name, this.number, this.image);
}
