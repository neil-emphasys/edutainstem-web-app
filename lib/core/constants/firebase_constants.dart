class FirebaseConstants {
  static const ELE ele = ELE();
  static const Room room = Room();
  static const Questions questions = Questions();
}

class ELE {
  const ELE();

  // * [COLLECTION]
  String get name => 'ele';

  // * [FIELDS]
  // String get referenceUser => 'referenceUser';
  // String get isFinished => 'isFinished';
  // String get createdAt => 'createdAt';
  // String get likedBy => 'likedBy';
  // String get likesCount => 'likesCount';
  // String get comments => 'comments';
  // String get isPublic => 'isPublic';
}

class Room {
  const Room();

  // * [COLLECTION]
  String get name => 'room';

  // * [FIELDS]
  String get roomCode => 'roomCode';
  String get isAssessmentOpen => 'isAssessmentOpen';
  String get isOpen => 'isOpen';
  String get studentsEnrolled => 'studentsEnrolled';
  String get difficulty => 'difficulty';

  // * [SPECIFIC ERROR CODES]
  String get roomNotExist => 'ROOM_NOT_EXIST';

  // * [SPECIFIC ERROR CODES (LONG TEXTS)]
  String get roomNotExistLT =>
      'The room code entered doesn`t belong to any open rooms. Try again!';
}

class Questions {
  const Questions();

  // * [COLLECTION]
  String get name => 'assessmentQuestions';
}
