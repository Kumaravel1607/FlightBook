class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Get ready for the trip of a lifetime.",
    image: "assets/images/plane.png",
    desc:
        "Hassle-free and quick flight booking to anyone of the 90 destinations",
  ),
  OnboardingContents(
    title: "Get ready for the trip of a lifetime.",
    image: "assets/images/building.png",
    desc: "Synergy Holidays is a way for you to holiday, and really enjoy it.",
  ),
  OnboardingContents(
    title: "Life is meant for great adventures",
    image: "assets/images/car.png",
    desc: "The journey of a thousand miles begins with a single step.",
  ),
];
