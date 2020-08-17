class SliderModel{

  String imageAssetPath;
  String title;
  String desc;

  SliderModel({this.imageAssetPath,this.title,this.desc});

  void setImageAssetPath(String getImageAssetPath){
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle){
    title = getTitle;
  }

  void setDesc(String getDesc){
    desc = getDesc;
  }

  String getImageAssetPath(){
    return imageAssetPath;
  }

  String getTitle(){
    return title;
  }

  String getDesc(){
    return desc;
  }

}


List<SliderModel> getSlides(){

  List<SliderModel> slides = new List<SliderModel>();
  SliderModel sliderModel = new SliderModel();

  //1
  sliderModel.setDesc("Welcome to pune Ladies group\nExplore and aveil products and \n services offered by ladies of Pune city");
  sliderModel.setTitle("Welcome to the Club!");
  sliderModel.setImageAssetPath("assets/images/illustration.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //2
  sliderModel.setDesc("one stop destionation for products and\nexpert local services in Pune Gel dozens of\ntrusted professional near you to take care\nof all your needs.");
  sliderModel.setTitle("Products");
  sliderModel.setImageAssetPath("assets/images/illustration4.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //3
  sliderModel.setDesc("Beauty, Repair, Cleaning, Grooming & \n many more Services by verified\nprofessional Book Today!");
  sliderModel.setTitle("Services");
  sliderModel.setImageAssetPath("assets/images/illustration3.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  return slides;
}