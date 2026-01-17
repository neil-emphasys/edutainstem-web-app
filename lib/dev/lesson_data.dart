import 'package:edutainstem/domain/models/assessments/assessments_model.dart';
import 'package:edutainstem/domain/models/lessons/lesson_model.dart';
import 'package:edutainstem/domain/models/post_question/post_question_model.dart';

final LessonModel sampleLesson60 = const LessonModel(
  title: 'Bridge Builder: Testing Your Own Design (60 min)',
  description:
      'Students design, build, test, and improve a bridge prototype while learning how compression and tension affect structures. '
      'This 60-minute version expands the theory content, testing time, reflection prompts, and the adaptive knowledge quiz.',
  durationMinutes: 60,
  ageRange: AgeRange(min: 10, max: 14),
  tags: ['Science', 'Technology', 'Engineering', 'Mathematics', 'SEL'],
  theoryContent: TheoryContent(
    basic: [
      Slide(
        type: SlideType.text,
        title: 'Lesson Breakdown (60 min)',
        content:
            'This lesson follows an engineering design process: learn → design → test → improve.\n\n'
            '• Theory – 10 minutes (adaptive, expanded)\n'
            '• Step 1: Introduction – 5 minutes\n'
            '• Step 2: Design & Build – 20 minutes\n'
            '• Step 3: Test & Record – 15 minutes\n'
            '• Step 4: Reflection – 10 minutes\n'
            '• Knowledge Quiz – 5 minutes (adaptive, expanded)',
      ),

      // --- Expanded Theory (Basic / Level 1) ---
      Slide(
        type: SlideType.text,
        title: 'Theory: Why Bridges Must Be Strong',
        content:
            'Bridges help people, cars, and trains cross rivers, roads, or valleys. '
            'They must be strong and safe so they can carry heavy loads without falling.',
        imageURL:
            'https://mechanical-engineering.com/wp-content/uploads/2019/09/types-of-bridges-7.jpg',
        caption:
            'Example bridge span and a short clip showing how loads move through a structure.',
        hints: [
          Hint(
            title: 'Look For Forces',
            content:
                'Ask: which parts look squished (compression) and which parts look stretched (tension)?',
          ),
        ],
      ),
      Slide(
        type: SlideType.text,
        title: 'Force 1: Compression',
        content:
            'Compression pushes parts together—like pressing a sponge. '
            'In bridges, supports and arches often feel compression because they carry weight downward.',
        imageURL:
            'https://www.shutterstock.com/image-vector/mechanical-stress-compression-tension-shear-260nw-2533427959.jpg',
        caption: 'Compression pushes materials inward.',
      ),
      Slide(
        type: SlideType.text,
        title: 'Force 2: Tension',
        content:
            'Tension pulls parts apart—like stretching a rubber band. '
            'In bridges, cables or the bottom of a beam can feel tension when weight is added.',
        imageURL:
            'https://cdn1.byjus.com/wp-content/uploads/2020/07/Tension-2.png',
        caption: 'Tension stretches materials.',
      ),
      Slide(
        type: SlideType.text,
        title: 'Compression + Tension Work Together',
        content:
            'If one part of a bridge is under compression, another part is usually under tension. '
            'Good designs balance these forces so no single part becomes too weak.',
      ),
      Slide(
        type: SlideType.text,
        title: 'Why Shapes Matter',
        content:
            'Flat shapes bend easily under heavy loads. '
            'Triangles are strong because they spread weight evenly and keep their shape. '
            'Arches are strong because they carry the weight into the ground.',
        imageURL:
            'https://cdn.britannica.com/74/22074-050-04A1F97E/truss-bridge-forces-lines-tension-compression.jpg',
        caption:
            'Triangles and arches distribute loads more evenly than flat beams.',
        hints: [
          Hint(
            title: 'Try a Triangle',
            content:
                'If your bridge bends, add a diagonal piece to turn a rectangle into two triangles.',
          ),
        ],
      ),
      Slide(
        type: SlideType.text,
        title: 'Testing Helps Engineers Improve',
        content:
            'Engineers test their ideas many times. Even if a bridge breaks, it helps them learn '
            'how to make the next one stronger.',
      ),

      // --- Practical Exercise (60-min) ---
      Slide(
        type: SlideType.text,
        title: 'Activity Introduction: Become an Engineer',
        content:
            'Now it is your turn to think like an engineer.\n\n'
            'You will design, build, test, and improve a bridge model. '
            'Your goal is not just to build something that looks like a bridge—'
            'your goal is to build something that can hold weight and stay stable.',
        videoURL: 'https://youtu.be/oVOnRPefcno',
        caption: 'Engineers testing bridge models.',
        hints: [
          Hint(
            title: 'Success Strategy',
            content:
                'Start simple, test early, then improve. Small improvements after each test often work best.',
          ),
        ],
      ),

      Slide(
        type: SlideType.text,
        title: 'Step 1: Introduction (5 min)',
        content:
            'Watch an animation of different bridge types (beam, arch, suspension).\n\n'
            'As you watch, try to identify:\n'
            '• Which parts are being pushed (compression)?\n'
            '• Which parts are being pulled (tension)?',
      ),
      Slide(
        type: SlideType.text,
        title: 'Step 2: Design & Build (20 min)',
        content:
            'Build a bridge that spans 20 cm using paper, straws, and tape.\n\n'
            'Work individually.\n\n'
            'App hint (Beginner): “Fold the paper to make it stronger.”',
        imageURL:
            'https://upload.wikimedia.org/wikipedia/commons/6/6e/Paper_bridge_model.jpg',
        caption: 'Example setup with paper and straws before testing.',
        hints: [
          Hint(
            title: 'Start Simple',
            content:
                'Build a basic beam first, then reinforce it with folds or straws.',
          ),
        ],
      ),
      Slide(
        type: SlideType.text,
        title: 'Step 3: Test & Record (15 min)',
        content:
            'Add weights carefully until your bridge collapses.\n\n'
            'Record:\n'
            '• Maximum span length\n'
            '• Maximum weight supported\n\n'
            'If your bridge fails early, the app may suggest:\n'
            '“Check the part where it bent. Reinforce it.”',
      ),
      Slide(
        type: SlideType.text,
        title: 'Step 4: Reflection (10 min)',
        content:
            'Answer these SEL reflection prompts in the app:\n\n'
            '• “How did you feel when your bridge collapsed?”\n'
            '• “What changes made your bridge stronger?”\n'
            '• “Which strategy worked best for you today?”',
      ),
    ],

    intermediate: [
      Slide(
        type: SlideType.text,
        title: 'Lesson Breakdown (60 min)',
        content:
            'This lesson follows an engineering design process: learn → design → test → improve.\n\n'
            '• Theory – 10 minutes (adaptive, expanded)\n'
            '• Step 1: Introduction – 5 minutes\n'
            '• Step 2: Design & Build – 20 minutes\n'
            '• Step 3: Test & Record – 15 minutes\n'
            '• Step 4: Reflection – 10 minutes\n'
            '• Knowledge Quiz – 5 minutes (adaptive, expanded)',
      ),

      // --- Expanded Theory (Intermediate / Level 2) ---
      Slide(
        type: SlideType.text,
        title: 'Theory: Bridges Manage Forces',
        content:
            'Bridges are designed to manage two forces:\n\n'
            '• Compression – pushing materials together (often in pillars)\n'
            '• Tension – stretching materials (often in suspension cables)',
        imageURL: 'https://cdn4.explainthatstuff.com/forces-on-bridges.png',
        caption:
            'Force directions highlighted on a bridge, plus a short explainer clip.',
        hints: [
          Hint(
            title: 'Spot The Cables',
            content:
                'Where do you see long cables or rods? Those usually carry tension.',
          ),
        ],
      ),
      Slide(
        type: SlideType.text,
        title: 'Load and Load Distribution',
        content:
            'When vehicles cross, the load moves into the bridge. '
            'A good bridge spreads this load across all parts so the structure stays stable.',
      ),
      Slide(
        type: SlideType.text,
        title: 'Shapes Engineers Use',
        content:
            'Engineers use shapes to control forces:\n\n'
            '• Triangles (trusses): rigid, prevent bending\n'
            '• Arches: push loads down and outwards into the ground\n'
            '• Beams: useful but bend when too long or unsupported',
        imageURL:
            'https://cdn.britannica.com/74/22074-050-04A1F97E/truss-bridge-forces-lines-tension-compression.jpg',
        caption: 'Trusses use triangles to distribute load.',
      ),
      Slide(
        type: SlideType.text,
        title: 'Why Bridges Fail',
        content:
            'Bridges can fail because of:\n'
            '• Too much load\n'
            '• Weak materials\n'
            '• Poor design that doesn’t balance forces\n\n'
            'Engineers often build and test scale models first to avoid mistakes in real bridges.',
      ),

      // --- Practical Exercise (60-min) ---
      Slide(
        type: SlideType.text,
        title: 'Step 1: Introduction (5 min)',
        content:
            'Watch the animation of different bridge types (beam, arch, suspension).\n\n'
            'Predict which design would hold more weight and explain why.',
      ),
      Slide(
        type: SlideType.text,
        title: 'Step 2: Design & Build (20 min)',
        content:
            'Build a bridge that spans 20 cm using paper, straws, and tape.\n\n'
            'Work individually.\n\n'
            'App hint (Intermediate): “Try triangular supports.”',
        videoURL: 'https://youtu.be/oVOnRPefcno',
        caption: 'Bridge testing and improvements based on observations.',
        hints: [
          Hint(
            title: 'Reinforce Joints',
            content:
                'Tape joints tightly before adding new supports to prevent wobble.',
          ),
        ],
      ),
      Slide(
        type: SlideType.text,
        title: 'Step 3: Test & Record (15 min)',
        content:
            'Add weights carefully until your bridge collapses.\n\n'
            'Record:\n'
            '• Maximum span length\n'
            '• Maximum weight supported\n\n'
            'If your bridge fails early, the app may suggest:\n'
            '“Check the part where it bent. Reinforce it.”',
      ),
      Slide(
        type: SlideType.text,
        title: 'Step 4: Reflection (10 min)',
        content:
            'Answer these SEL reflection prompts in the app:\n\n'
            '• “How did you feel when your bridge collapsed?”\n'
            '• “What changes made your bridge stronger?”\n'
            '• “Which strategy worked best for you today?”',
      ),
    ],

    advanced: [
      Slide(
        type: SlideType.text,
        title: 'Lesson Breakdown (60 min)',
        content:
            'This lesson emphasizes structural efficiency and safer designs.\n\n'
            '• Theory – 10 minutes (adaptive, expanded)\n'
            '• Step 1: Introduction – 5 minutes\n'
            '• Step 2: Design & Build – 20 minutes\n'
            '• Step 3: Test & Record – 15 minutes\n'
            '• Step 4: Reflection – 10 minutes\n'
            '• Knowledge Quiz – 5 minutes (adaptive, expanded)',
      ),

      // --- Expanded Theory (Advanced / Level 3) ---
      Slide(
        type: SlideType.text,
        title: 'Theory: Balancing Forces and Materials',
        content:
            'Bridge design is about balancing forces and materials.\n\n'
            'Compression shortens a material (e.g., piers, top of a beam).\n'
            'Tension stretches a material (e.g., cables, underside of a beam).',
      ),
      Slide(
        type: SlideType.text,
        title: 'Bridge Types and Forces',
        content:
            'Bridge types manage forces differently:\n\n'
            '• Beam bridge: top = compression; bottom = tension\n'
            '• Arch bridge: compression spreads into the ground\n'
            '• Suspension bridge: cables carry tension, towers carry compression',
        imageURL:
            'https://mechanical-engineering.com/wp-content/uploads/2019/09/types-of-bridges-7.jpg',
        caption: 'Side-by-side examples of beam, arch, and suspension bridges.',
        hints: [
          Hint(
            title: 'Match The Force',
            content:
                'Identify one spot on each bridge type where compression is strongest.',
          ),
        ],
      ),
      Slide(
        type: SlideType.text,
        title: 'Materials',
        content:
            'Concrete is excellent in compression but weak in tension.\n'
            'Steel is strong in both compression and tension and stays flexible under stress.',
      ),
      Slide(
        type: SlideType.text,
        title: 'Failure Modes',
        content:
            'Common failure modes include:\n\n'
            '• Buckling: too much compression\n'
            '• Snapping: too much tension\n'
            '• Bending: poor distribution of forces',
      ),
      Slide(
        type: SlideType.text,
        title: 'Engineering Practice: Safety Factors',
        content:
            'Engineers use mathematical models to predict loads.\n\n'
            'Safety factors help ensure bridges remain stable during storms, earthquakes, or heavy traffic.\n'
            'Designs are tested using both computer simulations and physical models.',
      ),

      // --- Practical Exercise (60-min) ---
      Slide(
        type: SlideType.text,
        title: 'Step 1: Introduction (5 min)',
        content:
            'Watch the animation of different bridge types (beam, arch, suspension).\n\n'
            'Identify likely force hotspots and predict the first failure mode (buckling, snapping, or bending).',
        videoURL: 'https://youtu.be/oVOnRPefcno',
        caption: 'Stress testing and analyzing failure points.',
      ),
      Slide(
        type: SlideType.text,
        title: 'Step 2: Design & Build (20 min)',
        content:
            'Build a bridge that spans 20 cm using paper, straws, and tape.\n\n'
            'Work individually.\n\n'
            'App hint (Advanced): “Can you extend your bridge span to 30 cm or test two designs?”',
      ),
      Slide(
        type: SlideType.text,
        title: 'Step 3: Test & Record (15 min)',
        content:
            'Add weights carefully until your bridge collapses.\n\n'
            'Record:\n'
            '• Maximum span length\n'
            '• Maximum weight supported\n\n'
            'If your bridge fails early, the app may suggest:\n'
            '“Check the part where it bent. Reinforce it.”',
      ),
      Slide(
        type: SlideType.text,
        title: 'Step 4: Reflection (10 min)',
        content:
            'Answer these SEL reflection prompts in the app:\n\n'
            '• “How did you feel when your bridge collapsed?”\n'
            '• “What changes made your bridge stronger?”\n'
            '• “Which strategy worked best for you today?”',
      ),
    ],
  ),

  // Knowledge Quiz – 5 min (adaptive, expanded)
  exam: Exam(
    basic: [
      PostQuestionModel(
        id: 'b60_q1',
        index: 0,
        question: 'What is compression?',
        type: QuestionTypesEnum.multipleChoice,
        choices: [
          PostQuestionChoicesModel(
            id: 'b60_q1_a',
            choice: 'Pulling apart',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'b60_q1_b',
            choice: 'Pushing together',
            isCorrectChoice: true,
          ),
          PostQuestionChoicesModel(
            id: 'b60_q1_c',
            choice: 'Making lighter',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'b60_q1_d',
            choice: 'Bending a shape',
            isCorrectChoice: false,
          ),
        ],
      ),
      PostQuestionModel(
        id: 'b60_q2',
        index: 1,
        question: 'What is tension?',
        type: QuestionTypesEnum.multipleChoice,
        choices: [
          PostQuestionChoicesModel(
            id: 'b60_q2_a',
            choice: 'Pulling apart',
            isCorrectChoice: true,
          ),
          PostQuestionChoicesModel(
            id: 'b60_q2_b',
            choice: 'Pushing together',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'b60_q2_c',
            choice: 'Bending a shape',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'b60_q2_d',
            choice: 'Making something heavier',
            isCorrectChoice: false,
          ),
        ],
      ),
      PostQuestionModel(
        id: 'b60_q3',
        index: 2,
        question: 'Which shape is the strongest for bridges?',
        type: QuestionTypesEnum.multipleChoice,
        choices: [
          PostQuestionChoicesModel(
            id: 'b60_q3_a',
            choice: 'Square',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'b60_q3_b',
            choice: 'Triangle',
            isCorrectChoice: true,
          ),
          PostQuestionChoicesModel(
            id: 'b60_q3_c',
            choice: 'Circle',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'b60_q3_d',
            choice: 'Rectangle',
            isCorrectChoice: false,
          ),
        ],
      ),
      PostQuestionModel(
        id: 'b60_q4',
        index: 3,
        question: 'What should engineers do if a bridge design fails?',
        type: QuestionTypesEnum.multipleChoice,
        choices: [
          PostQuestionChoicesModel(
            id: 'b60_q4_a',
            choice: 'Give up',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'b60_q4_b',
            choice: 'Learn and improve',
            isCorrectChoice: true,
          ),
          PostQuestionChoicesModel(
            id: 'b60_q4_c',
            choice: 'Ignore it',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'b60_q4_d',
            choice: 'Never try again',
            isCorrectChoice: false,
          ),
        ],
      ),
    ],

    intermediate: [
      PostQuestionModel(
        id: 'i60_q1',
        index: 0,
        question: 'Which part of a suspension bridge is under tension?',
        type: QuestionTypesEnum.multipleChoice,
        choices: [
          PostQuestionChoicesModel(
            id: 'i60_q1_a',
            choice: 'Towers',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'i60_q1_b',
            choice: 'Cables',
            isCorrectChoice: true,
          ),
          PostQuestionChoicesModel(
            id: 'i60_q1_c',
            choice: 'Road surface',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'i60_q1_d',
            choice: 'Pillars',
            isCorrectChoice: false,
          ),
        ],
      ),
      PostQuestionModel(
        id: 'i60_q2',
        index: 1,
        question: 'Why do engineers use triangular supports?',
        type: QuestionTypesEnum.multipleChoice,
        choices: [
          PostQuestionChoicesModel(
            id: 'i60_q2_a',
            choice: 'They look nice',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'i60_q2_b',
            choice: 'They spread forces evenly',
            isCorrectChoice: true,
          ),
          PostQuestionChoicesModel(
            id: 'i60_q2_c',
            choice: 'They are cheap',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'i60_q2_d',
            choice: 'They are easy to draw',
            isCorrectChoice: false,
          ),
        ],
      ),
      PostQuestionModel(
        id: 'i60_q3',
        index: 2,
        question: 'Which of these can cause a bridge to fail?',
        type: QuestionTypesEnum.multipleChoice,
        choices: [
          PostQuestionChoicesModel(
            id: 'i60_q3_a',
            choice: 'Too much load',
            isCorrectChoice: true,
          ),
          PostQuestionChoicesModel(
            id: 'i60_q3_b',
            choice: 'Too many triangles',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'i60_q3_c',
            choice: 'Too much paint',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'i60_q3_d',
            choice: 'Too many workers',
            isCorrectChoice: false,
          ),
        ],
      ),
      PostQuestionModel(
        id: 'i60_q4',
        index: 3,
        question: 'What is a load on a bridge?',
        type: QuestionTypesEnum.multipleChoice,
        choices: [
          PostQuestionChoicesModel(
            id: 'i60_q4_a',
            choice: 'The color of the bridge',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'i60_q4_b',
            choice: 'The weight the bridge carries',
            isCorrectChoice: true,
          ),
          PostQuestionChoicesModel(
            id: 'i60_q4_c',
            choice: 'The length of the bridge',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'i60_q4_d',
            choice: 'The material used',
            isCorrectChoice: false,
          ),
        ],
      ),
    ],

    advanced: [
      PostQuestionModel(
        id: 'a60_q1',
        index: 0,
        question: 'In a beam bridge, which part is in compression?',
        type: QuestionTypesEnum.multipleChoice,
        choices: [
          PostQuestionChoicesModel(
            id: 'a60_q1_a',
            choice: 'Top',
            isCorrectChoice: true,
          ),
          PostQuestionChoicesModel(
            id: 'a60_q1_b',
            choice: 'Bottom',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'a60_q1_c',
            choice: 'Both top and bottom',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'a60_q1_d',
            choice: 'None',
            isCorrectChoice: false,
          ),
        ],
      ),
      PostQuestionModel(
        id: 'a60_q2',
        index: 1,
        question: 'Why are arches strong?',
        type: QuestionTypesEnum.multipleChoice,
        choices: [
          PostQuestionChoicesModel(
            id: 'a60_q2_a',
            choice: 'They use only tension',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'a60_q2_b',
            choice: 'They push compression into the ground',
            isCorrectChoice: true,
          ),
          PostQuestionChoicesModel(
            id: 'a60_q2_c',
            choice: 'They need no supports',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'a60_q2_d',
            choice: 'They use steel cables',
            isCorrectChoice: false,
          ),
        ],
      ),
      PostQuestionModel(
        id: 'a60_q3',
        index: 2,
        question: 'Which material is strong mainly in compression?',
        type: QuestionTypesEnum.multipleChoice,
        choices: [
          PostQuestionChoicesModel(
            id: 'a60_q3_a',
            choice: 'Steel',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'a60_q3_b',
            choice: 'Concrete',
            isCorrectChoice: true,
          ),
          PostQuestionChoicesModel(
            id: 'a60_q3_c',
            choice: 'Rubber',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'a60_q3_d',
            choice: 'Wood',
            isCorrectChoice: false,
          ),
        ],
      ),
      PostQuestionModel(
        id: 'a60_q4',
        index: 3,
        question: 'What is buckling?',
        type: QuestionTypesEnum.multipleChoice,
        choices: [
          PostQuestionChoicesModel(
            id: 'a60_q4_a',
            choice: 'Breaking under tension',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'a60_q4_b',
            choice: 'Bending under too much compression',
            isCorrectChoice: true,
          ),
          PostQuestionChoicesModel(
            id: 'a60_q4_c',
            choice: 'Snapping of cables',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'a60_q4_d',
            choice: 'Tilting sideways',
            isCorrectChoice: false,
          ),
        ],
      ),
      PostQuestionModel(
        id: 'a60_q5',
        index: 4,
        question: 'Why do engineers use safety factors?',
        type: QuestionTypesEnum.multipleChoice,
        choices: [
          PostQuestionChoicesModel(
            id: 'a60_q5_a',
            choice: 'To make bridges look nicer',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'a60_q5_b',
            choice: 'To prepare for unexpected loads',
            isCorrectChoice: true,
          ),
          PostQuestionChoicesModel(
            id: 'a60_q5_c',
            choice: 'To save money',
            isCorrectChoice: false,
          ),
          PostQuestionChoicesModel(
            id: 'a60_q5_d',
            choice: 'To make bridges longer',
            isCorrectChoice: false,
          ),
        ],
      ),
    ],
  ),
);
