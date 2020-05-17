class Questions {
  int _questionNum = 0;

  static List<Questions> getQuestions() =>
      [
        Questions(
            "Is this character fighting in melee combat, or prefer ranged combat?",
            "melee", "ranged"),
        Questions(
            "Are you wanting to protect your friends, or attack your enemies?",
            "Defend", "Attack"),
        Questions(
            "So you want to fight at a distance? Would you prefer a bow or magic?",
            "bow", "spells"),

      ];
  String questionName;
  String optionA;
  String optionB;

  Questions(this.questionName, this.optionA, this.optionB);
}
  class CharacterClass{
  static List<CharacterClass> chosenClass() =>
  [
    CharacterClass("Fighter"),
    CharacterClass("Rogue"),
    CharacterClass("Ranger"),
    CharacterClass("Wizard"),
  ];
  String characterClass;

  CharacterClass(this.characterClass);
}

