 
class UnbordingContent {
  String image;

  String title;

  String discription;

  UnbordingContent({
    required this.image,
    required this.title,
    required this.discription,
  });
}

List<UnbordingContent> contents = [
  UnbordingContent(
    title: "Welcome to ALOHUB",
    image: 'assets/images/welcome.png',
    discription:"Welcome as you learn a world changing skill to get a better job.",
  ),
  UnbordingContent(
    title: 'Choose your Course',
    image:  'assets/images/choose.png',
    discription:"Choose the Course of your choice and gain industry knowledge and gain experience in it.",
  ),
  UnbordingContent(
    title: "Get Certified",
    image:   'assets/images/get.png',
    discription:"Start learning and get certified after your training to get a lucrative job.",
  ),
];