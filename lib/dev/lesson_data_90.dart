import 'package:edutainstem/domain/models/assessments/assessments_model.dart';
import 'package:edutainstem/domain/models/lessons/lesson_model.dart';
import 'package:edutainstem/domain/models/post_question/post_question_model.dart';

final LessonModel sampleLesson90 = const LessonModel(
  title: 'Bridge Builder: Testing Your Own Design (90-Minute Extended)',
  description:
      'Students explore bridge engineering through extended theory, hands-on design, testing, '
      'and reflection. This 90-minute lesson deepens understanding of forces, materials, '
      'failure modes, and perseverance through engineering challenges.',
  durationMinutes: 90,
  ageRange: AgeRange(min: 10, max: 14),
  tags: ['SEL'],

  theoryContent: TheoryContent(
    // =========================
    // BASIC
    // =========================
    basic: [
      Slide(
        type: SlideType.text,
        title: 'Lesson Breakdown (90 min)',
        content:
            'This lesson allows extra time for thinking, building, testing, and improving.\n\n'
            '• Theory – 15 minutes\n'
            '• Step 1: Introduction – 5 minutes\n'
            '• Step 2: Design & Build – 25 minutes\n'
            '• Step 3: Test & Record – 20 minutes\n'
            '• Step 4: Reflection – 15 minutes\n'
            '• Knowledge Quiz – 10 minutes',
      ),

      Slide(
        type: SlideType.text,
        title: 'Why Do We Build Bridges?',
        content:
            'Bridges help people safely cross rivers, valleys, and roads.\n\n'
            'Every time someone crosses a bridge, weight is added. Engineers must make sure '
            'the bridge stays strong every day, not just once.',
        imageURL:
            'https://mechanical-engineering.com/wp-content/uploads/2019/09/types-of-bridges-7.jpg',
        caption: 'Different bridge designs used around the world.',
        hints: [
          Hint(
            title: 'Think Local',
            content: 'Can you name a bridge you have crossed before?',
          ),
        ],
      ),

      Slide(
        type: SlideType.text,
        title: 'Two Important Forces',
        content:
            'Engineers study forces to understand how bridges stay standing.\n\n'
            'Compression pushes materials together.\n'
            'Tension pulls materials apart.\n\n'
            'A strong bridge balances both forces.',
        hints: [
          Hint(
            title: 'Memory Tip',
            content: 'Compression = press, Tension = stretch.',
          ),
        ],
      ),

      Slide(
        type: SlideType.text,
        title: 'Compression',
        content:
            'Compression happens when weight pushes parts together.\n\n'
            'Bridge pillars and the top of beams often carry compression. '
            'Too much compression can cause bending or collapse.',
        imageURL:
            'https://www.shutterstock.com/image-vector/mechanical-stress-compression-tension-shear-260nw-2533427959.jpg',
        caption: 'Compression pushes materials inward.',
        hints: [
          Hint(
            title: 'Body Example',
            content: 'Press your palms together to feel compression.',
          ),
        ],
      ),

      Slide(
        type: SlideType.text,
        title: 'Tension',
        content:
            'Tension happens when materials are pulled apart.\n\n'
            'Cables and the bottom of beams often experience tension. '
            'Too much tension can cause snapping or tearing.',
        imageURL:
            'https://cdn1.byjus.com/wp-content/uploads/2020/07/Tension-2.png',
        caption: 'Tension stretches materials.',
        hints: [
          Hint(
            title: 'Easy Test',
            content: 'Stretch a rubber band gently to feel tension.',
          ),
        ],
      ),

      Slide(
        type: SlideType.text,
        title: 'Why Shape Matters',
        content:
            'Flat shapes bend easily under weight.\n\n'
            'Triangles spread forces evenly.\n'
            'Arches push weight into the ground.',
        imageURL:
            'https://cdn.britannica.com/74/22074-050-04A1F97E/truss-bridge-forces-lines-tension-compression.jpg',
        caption: 'Triangle trusses improve strength.',
        hints: [
          Hint(
            title: 'Quick Fix',
            content: 'If your bridge wobbles, add triangles.',
          ),
        ],
      ),

      Slide(
        type: SlideType.text,
        title: 'Materials Matter',
        content:
            'Different materials behave differently.\n\n'
            'Stone and concrete are strong in compression.\n'
            'Steel is strong in compression and tension.\n'
            'Wood is light but bends more easily.',
      ),

      Slide(
        type: SlideType.text,
        title: 'Learning from Mistakes',
        content:
            'Engineers expect designs to fail during testing.\n\n'
            'Failures show weak points and help improve designs. '
            'Mistakes are part of learning.',
      ),

      Slide(
        type: SlideType.text,
        title: 'Activity Introduction',
        content:
            'You will design, build, test, and improve a bridge model.\n\n'
            'The goal is to hold weight and stay stable.',
        videoURL: 'https://youtu.be/oVOnRPefcno',
        caption: 'Engineers testing bridge models.',
      ),

      Slide(
        type: SlideType.text,
        title: 'Step 2: Design & Build (25 min)',
        content:
            'Build a 20 cm bridge using paper, straws, and tape.\n\n'
            'Try two versions and improve the second one.',
        imageURL: 'https://i.ytimg.com/vi/dN9rGLsJ_40/maxresdefault.jpg',
        caption: 'Paper bridge prototype.',
        hints: [
          Hint(
            title: 'Beginner Tip',
            content: 'Fold paper to make it stronger.',
          ),
        ],
      ),

      Slide(
        type: SlideType.text,
        title: 'Step 3: Test & Record (20 min)',
        content:
            'Add weight slowly until failure.\n\n'
            'Record maximum weight and where failure started.',
      ),

      Slide(
        type: SlideType.text,
        title: 'Step 4: Reflection (15 min)',
        content:
            'Reflect:\n\n'
            '• How did you feel when it failed?\n'
            '• What improved the second design?\n'
            '• What would you change next time?',
      ),
    ],

    // =========================
    // INTERMEDIATE
    // =========================
    intermediate: [
      Slide(
        type: SlideType.text,
        title: 'Engineering Forces in Bridges',
        content:
            'Bridges balance compression and tension to stay stable.\n\n'
            'Loads from vehicles move through beams, joints, and supports. '
            'Good designs spread these forces evenly.',
        hints: [
          Hint(
            title: 'Key Idea',
            content:
                'A strong bridge spreads load. A weak one concentrates it.',
          ),
        ],
      ),

      Slide(
        type: SlideType.text,
        title: 'Engineering Shapes',
        content:
            'Triangles (trusses) are rigid and stable.\n'
            'Arches move compression outward.\n'
            'Beams are simple but need support.',
        imageURL:
            'https://cdn.britannica.com/74/22074-050-04A1F97E/truss-bridge-forces-lines-tension-compression.jpg',
        caption: 'Force distribution in truss bridges.',
        hints: [
          Hint(
            title: 'Design Tip',
            content: 'Triangles reduce bending and wobble.',
          ),
        ],
      ),

      Slide(
        type: SlideType.text,
        title: 'Why Bridges Fail',
        content:
            'Bridges fail when loads are too heavy, materials are weak, '
            'or forces are not balanced.',
      ),

      Slide(
        type: SlideType.text,
        title: 'Testing and Safety Factors',
        content:
            'Engineers test models and simulations before building real bridges.\n\n'
            'They use safety factors to prepare for unexpected loads.',
        hints: [
          Hint(
            title: 'Safety Thinking',
            content:
                'If a bridge must hold 100 tons, engineers design for more.',
          ),
        ],
      ),
    ],

    // =========================
    // ADVANCED
    // =========================
    advanced: [
      Slide(
        type: SlideType.text,
        title: 'Bridge Systems and Force Paths',
        content:
            'Bridges are systems where forces move through multiple components.\n\n'
            'Clear force paths help prevent sudden failure.',
        hints: [
          Hint(
            title: 'Core Concept',
            content: 'Force paths guide load safely into the ground.',
          ),
        ],
      ),

      Slide(
        type: SlideType.text,
        title: 'Types of Bridges',
        content:
            'Beam: compression on top, tension below.\n'
            'Arch: compression redirected into ground.\n'
            'Suspension: cables in tension, towers in compression.\n'
            'Cable-stayed: combined system.',
        imageURL:
            'https://mechanical-engineering.com/wp-content/uploads/2019/09/types-of-bridges-7.jpg',
        caption: 'Bridge types and force distribution.',
      ),

      Slide(
        type: SlideType.text,
        title: 'Failure Modes',
        content:
            'Buckling occurs under compression.\n'
            'Snapping occurs under tension.\n'
            'Bending occurs when forces are uneven.\n'
            'Fatigue occurs from repeated use.',
        hints: [
          Hint(
            title: 'Diagnosis',
            content: 'Look at where and how failure begins.',
          ),
        ],
      ),

      Slide(
        type: SlideType.text,
        title: 'Engineering Mathematics',
        content:
            'Engineers calculate stress, strain, and load distribution.\n\n'
            'Safety factors protect against wind, earthquakes, and traffic.',
      ),
    ],
  ),

  exam: Exam(
    // =========================
    // BASIC (10 minutes)
    // =========================
    basic: [
      PostQuestionModel(
        id: 'basic_90_q1',
        index: 0,
        question: 'What is compression?',
        type: QuestionTypesEnum.multipleChoice,
        isFlagged: false,
        choices: [
          PostQuestionChoicesModel(
            id: 'basic_90_q1_a',
            choice: 'Pulling apart',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'basic_90_q1_b',
            choice: 'Pushing together',
            isCorrectChoice: true,
          ),
          PostQuestionChoicesModel(
            id: 'basic_90_q1_c',
            choice: 'Making lighter',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'basic_90_q1_d',
            choice: 'Bending a shape',
            isCorrectChoice: false,
          ),
        ],
      ),

      PostQuestionModel(
        id: 'basic_90_q2',
        index: 1,
        question: 'What is tension?',
        type: QuestionTypesEnum.multipleChoice,
        isFlagged: false,
        choices: [
          PostQuestionChoicesModel(
            id: 'basic_90_q2_a',
            choice: 'Pulling apart',
            isCorrectChoice: true,
          ),
          PostQuestionChoicesModel(
            id: 'basic_90_q2_b',
            choice: 'Pushing together',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'basic_90_q2_c',
            choice: 'Bending a shape',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'basic_90_q2_d',
            choice: 'Making heavier',
            isCorrectChoice: false,
          ),
        ],
      ),

      PostQuestionModel(
        id: 'basic_90_q3',
        index: 2,
        question: 'Which shape is strongest for bridges?',
        type: QuestionTypesEnum.multipleChoice,
        isFlagged: false,
        choices: [
          PostQuestionChoicesModel(
            id: 'basic_90_q3_a',
            choice: 'Square',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'basic_90_q3_b',
            choice: 'Triangle',
            isCorrectChoice: true,
          ),
          PostQuestionChoicesModel(
            id: 'basic_90_q3_c',
            choice: 'Circle',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'basic_90_q3_d',
            choice: 'Rectangle',
            isCorrectChoice: false,
          ),
        ],
      ),

      PostQuestionModel(
        id: 'basic_90_q4',
        index: 3,
        question: 'What should engineers do if a design fails?',
        type: QuestionTypesEnum.multipleChoice,
        isFlagged: false,
        choices: [
          PostQuestionChoicesModel(
            id: 'basic_90_q4_a',
            choice: 'Give up',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'basic_90_q4_b',
            choice: 'Learn and improve',
            isCorrectChoice: true,
          ),
          PostQuestionChoicesModel(
            id: 'basic_90_q4_c',
            choice: 'Ignore it',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'basic_90_q4_d',
            choice: 'Never test again',
            isCorrectChoice: false,
          ),
        ],
      ),

      PostQuestionModel(
        id: 'basic_90_q5',
        index: 4,
        question: 'Why do engineers use arches in bridges?',
        type: QuestionTypesEnum.multipleChoice,
        isFlagged: false,
        choices: [
          PostQuestionChoicesModel(
            id: 'basic_90_q5_a',
            choice: 'They carry weight into the ground',
            isCorrectChoice: true,
          ),
          PostQuestionChoicesModel(
            id: 'basic_90_q5_b',
            choice: 'They look nice',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'basic_90_q5_c',
            choice: 'They are easy to build',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'basic_90_q5_d',
            choice: 'They do not need supports',
            isCorrectChoice: false,
          ),
        ],
      ),
    ],

    // =========================
    // INTERMEDIATE (10 minutes)
    // =========================
    intermediate: [
      PostQuestionModel(
        id: 'int_90_q1',
        index: 0,
        question: 'Which part of a suspension bridge is under tension?',
        type: QuestionTypesEnum.multipleChoice,
        isFlagged: false,
        choices: [
          PostQuestionChoicesModel(
            id: 'int_90_q1_a',
            choice: 'Towers',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'int_90_q1_b',
            choice: 'Cables',
            isCorrectChoice: true,
          ),
          PostQuestionChoicesModel(
            id: 'int_90_q1_c',
            choice: 'Road surface',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'int_90_q1_d',
            choice: 'Pillars',
            isCorrectChoice: false,
          ),
        ],
      ),

      PostQuestionModel(
        id: 'int_90_q2',
        index: 1,
        question: 'Why do engineers use triangular supports?',
        type: QuestionTypesEnum.multipleChoice,
        isFlagged: false,
        choices: [
          PostQuestionChoicesModel(
            id: 'int_90_q2_a',
            choice: 'They spread forces evenly',
            isCorrectChoice: true,
          ),
          PostQuestionChoicesModel(
            id: 'int_90_q2_b',
            choice: 'They are cheaper',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'int_90_q2_c',
            choice: 'They look nice',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'int_90_q2_d',
            choice: 'They are easy to draw',
            isCorrectChoice: false,
          ),
        ],
      ),

      PostQuestionModel(
        id: 'int_90_q3',
        index: 2,
        question: 'Which of these can cause a bridge to fail?',
        type: QuestionTypesEnum.multipleChoice,
        isFlagged: false,
        choices: [
          PostQuestionChoicesModel(
            id: 'int_90_q3_a',
            choice: 'Too much load',
            isCorrectChoice: true,
          ),
          PostQuestionChoicesModel(
            id: 'int_90_q3_b',
            choice: 'Too much paint',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'int_90_q3_c',
            choice: 'Too many triangles',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'int_90_q3_d',
            choice: 'Too many workers',
            isCorrectChoice: false,
          ),
        ],
      ),

      PostQuestionModel(
        id: 'int_90_q4',
        index: 3,
        question: 'What is a load on a bridge?',
        type: QuestionTypesEnum.multipleChoice,
        isFlagged: false,
        choices: [
          PostQuestionChoicesModel(
            id: 'int_90_q4_a',
            choice: 'The color of the bridge',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'int_90_q4_b',
            choice: 'The weight it carries',
            isCorrectChoice: true,
          ),
          PostQuestionChoicesModel(
            id: 'int_90_q4_c',
            choice: 'The length of the bridge',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'int_90_q4_d',
            choice: 'The building material',
            isCorrectChoice: false,
          ),
        ],
      ),

      PostQuestionModel(
        id: 'int_90_q5',
        index: 4,
        question: 'Why do engineers test models before building real bridges?',
        type: QuestionTypesEnum.multipleChoice,
        isFlagged: false,
        choices: [
          PostQuestionChoicesModel(
            id: 'int_90_q5_a',
            choice: 'To save materials and improve safety',
            isCorrectChoice: true,
          ),
          PostQuestionChoicesModel(
            id: 'int_90_q5_b',
            choice: 'To make bridges taller',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'int_90_q5_c',
            choice: 'To skip safety checks',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'int_90_q5_d',
            choice: 'To avoid using concrete',
            isCorrectChoice: false,
          ),
        ],
      ),
    ],

    // =========================
    // ADVANCED (10 minutes)
    // =========================
    advanced: [
      PostQuestionModel(
        id: 'adv_90_q1',
        index: 0,
        question: 'In a beam bridge, which part is mainly in compression?',
        type: QuestionTypesEnum.multipleChoice,
        isFlagged: false,
        choices: [
          PostQuestionChoicesModel(
            id: 'adv_90_q1_a',
            choice: 'Top',
            isCorrectChoice: true,
          ),
          PostQuestionChoicesModel(
            id: 'adv_90_q1_b',
            choice: 'Bottom',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'adv_90_q1_c',
            choice: 'Both top and bottom',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'adv_90_q1_d',
            choice: 'None',
            isCorrectChoice: false,
          ),
        ],
      ),

      PostQuestionModel(
        id: 'adv_90_q2',
        index: 1,
        question: 'Why are arches strong in bridge design?',
        type: QuestionTypesEnum.multipleChoice,
        isFlagged: false,
        choices: [
          PostQuestionChoicesModel(
            id: 'adv_90_q2_a',
            choice: 'They push compression into the ground',
            isCorrectChoice: true,
          ),
          PostQuestionChoicesModel(
            id: 'adv_90_q2_b',
            choice: 'They use only tension',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'adv_90_q2_c',
            choice: 'They require no supports',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'adv_90_q2_d',
            choice: 'They use steel cables',
            isCorrectChoice: false,
          ),
        ],
      ),

      PostQuestionModel(
        id: 'adv_90_q3',
        index: 2,
        question: 'Which material is strong mainly in compression?',
        type: QuestionTypesEnum.multipleChoice,
        isFlagged: false,
        choices: [
          PostQuestionChoicesModel(
            id: 'adv_90_q3_a',
            choice: 'Steel',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'adv_90_q3_b',
            choice: 'Concrete',
            isCorrectChoice: true,
          ),
          PostQuestionChoicesModel(
            id: 'adv_90_q3_c',
            choice: 'Rubber',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'adv_90_q3_d',
            choice: 'Wood',
            isCorrectChoice: false,
          ),
        ],
      ),

      PostQuestionModel(
        id: 'adv_90_q4',
        index: 3,
        question: 'What is buckling?',
        type: QuestionTypesEnum.multipleChoice,
        isFlagged: false,
        choices: [
          PostQuestionChoicesModel(
            id: 'adv_90_q4_a',
            choice: 'Breaking under tension',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'adv_90_q4_b',
            choice: 'Bending under too much compression',
            isCorrectChoice: true,
          ),
          PostQuestionChoicesModel(
            id: 'adv_90_q4_c',
            choice: 'Snapping of cables',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'adv_90_q4_d',
            choice: 'Tilting sideways',
            isCorrectChoice: false,
          ),
        ],
      ),

      PostQuestionModel(
        id: 'adv_90_q5',
        index: 4,
        question: 'Why do engineers use safety factors?',
        type: QuestionTypesEnum.multipleChoice,
        isFlagged: false,
        choices: [
          PostQuestionChoicesModel(
            id: 'adv_90_q5_a',
            choice: 'To prepare for unexpected loads',
            isCorrectChoice: true,
          ),
          PostQuestionChoicesModel(
            id: 'adv_90_q5_b',
            choice: 'To save money',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'adv_90_q5_c',
            choice: 'To improve appearance',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'adv_90_q5_d',
            choice: 'To reduce testing',
            isCorrectChoice: false,
          ),
        ],
      ),
    ],
  ),
);
