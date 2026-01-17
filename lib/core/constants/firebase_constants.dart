const String _genericError = 'Something went wrong. Please try again!';

class FirebaseConstants {
  static const ELE ele = ELE();
  static const Room room = Room();
  static const Questions questions = Questions();
  static const Users users = Users();
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
  String get isActive => 'isActive';
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
  String get createdById => 'createdById';
  String get helpRequests => 'helpRequests';

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

class Users {
  const Users();

  // * [COLLECTION]
  String get name => 'users';

  // * [FIELDS]
  String get id => 'id';
  String get email => 'email';
  String get enabled => 'enabled';
  String get role => 'role';

  // * [SPECIFIC ERROR CODES]
  String get userNotExist => 'USER_NOT_EXIST';
  String get emailExist => 'EMAIL_EXIST';
  String get googleCancelledAuth => 'GOOGLE_CANCELLED_AUTH';
  String get errorSigninNotExist => 'SIGNIN_NOT_EXIST';

  // * [SPECIFIC ERROR CODES (LONG TEXTS)]
  String get userNotExistLT =>
      'We couldn\'t find an open room with that code. Try again, or double-check with your teacher (the room might be closed).';
  String get emailExistLT => 'The email entered is already registered.';
  String get errorSigninNotExistLT =>
      'We couldn\'t find any user registered to this credential. Please try again.';

  String mapErrorCodes(String errorCode) {
    if (errorCode == errorSigninNotExist) return errorSigninNotExistLT;
    return _genericError;
  }
}
