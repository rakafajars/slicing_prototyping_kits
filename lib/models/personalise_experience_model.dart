class PersonaliseExperienceModel {
  final int index;
  final String title;
  bool isSelected;

  PersonaliseExperienceModel({
    required this.index,
    required this.title,
    this.isSelected = false,
  });
}

List<PersonaliseExperienceModel> listPersonaliseExperiences = [
  PersonaliseExperienceModel(
    index: 0,
    title: 'User Interface',
  ),
  PersonaliseExperienceModel(
    index: 1,
    title: 'User Experience',
  ),
  PersonaliseExperienceModel(
    index: 2,
    title: 'User Research',
  ),
  PersonaliseExperienceModel(
    index: 3,
    title: 'UX Writing',
  ),
  PersonaliseExperienceModel(
    index: 4,
    title: 'User Testing',
  ),
  PersonaliseExperienceModel(
    index: 5,
    title: 'Service Design',
  ),
  PersonaliseExperienceModel(
    index: 6,
    title: 'Strategy',
  ),
  PersonaliseExperienceModel(
    index: 7,
    title: 'Design Systems',
  ),
];
