class SliderModel {
  final String title, text, image;

  SliderModel({this.title, this.text, this.image});
}

List<SliderModel> demoSlider = [
  SliderModel(
    title: "Meeting Online",
    text:
        "Stay home and complete all of your importance work and meeting for keeping safe you and your family member",
    image: "assets/images/slider1.svg",
  ),
  SliderModel(
    title: "Wear a Mask",
    text:
        "When you go outside of your home then obiously you have to wear a mask for keeping safe from covid-19",
    image: "assets/images/slider2.svg",
  ),
  SliderModel(
    title: "Social Distance",
    text:
        "By maintaining social distance you can kep safe from other covid virus affected people and keep safe from covid-19",
    image: "assets/images/slider3.svg",
  ),
];
