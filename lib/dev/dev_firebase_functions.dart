import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edutainstem/core/constants/firebase_constants.dart';
import 'package:edutainstem/core/services/json_download_service.dart';
import 'package:edutainstem/dev/lesson_data_90.dart';
import 'package:edutainstem/domain/models/assessments/assessments_model.dart';
import 'package:edutainstem/domain/models/lessons/lesson_model.dart';
import 'package:edutainstem/domain/models/post_question/post_question_model.dart';
import 'package:edutainstem/injection.dart';

class DevFirebaseFunctions {
  final LessonModel sampleLesson = const LessonModel(
    title: 'Bridge Builder: Testing Your Own Design 4',
    description:
        'Students design, build, test, and improve a bridge prototype while learning how compression and tension affect structures. '
        'The lesson is adaptive by difficulty level and includes a short knowledge quiz and SEL reflection prompts.',
    durationMinutes: 45,
    ageRange: AgeRange(min: 10, max: 14),
    tags: ['Science', 'Technology', 'Engineering', 'Mathematics', 'SEL'],
    theoryContent: TheoryContent(
      basic: [
        Slide(
          type: SlideType.text,
          title: 'Lesson Breakdown (45 min)',
          content:
              'This lesson follows a simple engineering design process that helps students learn by doing.\n\n'
              '• Theory – 7 minutes\n'
              '• Step 1: Introduction – 5 minutes\n'
              '• Step 2: Design & Build – 15 minutes\n'
              '• Step 3: Test & Record – 8 minutes\n'
              '• Step 4: Reflection – 5 minutes\n'
              '• Knowledge Quiz – 5 minutes',
          // no hints on purpose (overview slide)
        ),

        Slide(
          type: SlideType.text,
          title: 'Theory Introduction: How Do Bridges Stay Strong?',
          content:
              'Before we build our own bridge, we need to understand how real bridges work. '
              'Engineers study forces that act on structures every day.\n\n'
              'In this section, you will learn about compression, tension, and why certain shapes '
              'make bridges stronger and safer. You will then use these ideas to guide your own design.',
          hints: [
            Hint(
              title: 'Quick Vocabulary',
              content:
                  'Compression = pushing together.\n'
                  'Tension = pulling apart.\n'
                  'Load = weight placed on the bridge.',
            ),
          ],
        ),

        Slide(
          type: SlideType.text,
          title: 'Why Bridges Matter',
          content:
              'Bridges help people and vehicles cross rivers, roads, and valleys. '
              'Every time someone crosses a bridge, weight is added to the structure.\n\n'
              'A good bridge must stay strong, balanced, and safe under different loads—'
              'from a person walking to a heavy truck passing by.',
          imageURL:
              'https://mechanical-engineering.com/wp-content/uploads/2019/09/types-of-bridges-7.jpg',
          caption: 'Different bridge designs used around the world.',
          hints: [
            Hint(
              title: 'Think Like an Engineer',
              content:
                  'Ask yourself: “Where does the weight go after it touches the bridge?” '
                  'If the weight has a clear path into the supports, the bridge is usually safer.',
            ),
          ],
        ),

        Slide(
          type: SlideType.text,
          title: 'Force 1: Compression',
          content:
              'Compression happens when forces push materials together—like squeezing a sponge.\n\n'
              'In bridges, compression often happens in pillars, columns, and arches because they support the weight above them. '
              'If compression becomes too strong, parts can bend or buckle.',
          imageURL:
              'https://www.shutterstock.com/image-vector/mechanical-stress-compression-tension-shear-260nw-2533427959.jpg',
          caption: 'Compression pushes materials inward.',
          hints: [
            Hint(
              title: 'Easy Example',
              content:
                  'Try pressing your palms together. That pushing force is like compression.',
            ),
            Hint(
              title: 'Design Tip',
              content:
                  'Short, thick supports usually handle compression better than tall, thin supports.',
            ),
          ],
        ),

        Slide(
          type: SlideType.text,
          title: 'Force 2: Tension',
          content:
              'Tension happens when forces pull materials apart—like stretching a rubber band.\n\n'
              'In bridges, tension often appears in cables or in the bottom part of a beam when weight is added. '
              'If tension is too high, materials can tear or snap.',
          imageURL:
              'https://cdn1.byjus.com/wp-content/uploads/2020/07/Tension-2.png',
          caption: 'Tension stretches materials.',
          hints: [
            Hint(
              title: 'Easy Example',
              content:
                  'Stretch a rubber band gently. That pulling force is like tension.',
            ),
          ],
        ),

        Slide(
          type: SlideType.text,
          title: 'Why Shape Matters',
          content:
              'Not all shapes are equally strong. Flat shapes bend easily under heavy loads.\n\n'
              'Triangles are strong because they spread forces evenly and keep their shape. '
              'Arches are strong because they push weight into the ground instead of letting the middle sag.',
          imageURL:
              'https://cdn.britannica.com/74/22074-050-04A1F97E/truss-bridge-forces-lines-tension-compression.jpg',
          caption: 'Triangular truss designs improve strength.',
          hints: [
            Hint(
              title: 'Fast Check',
              content:
                  'If your bridge wobbles easily, add a triangle support. Triangles reduce wobble.',
            ),
          ],
        ),

        Slide(
          type: SlideType.text,
          title: 'Engineers Improve Through Testing',
          content:
              'Engineers rarely get a design perfect on the first try. Testing helps them discover weak points.\n\n'
              'When a structure fails, engineers learn from it, adjust their design, and build a stronger version. '
              'Testing is not “losing”—it is part of the process.',
          // intentionally no hints (motivational slide)
        ),

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
              'Watch examples of beam, arch, and suspension bridges.\n\n'
              'As you watch, try to guess:\n'
              '• Which parts are being pushed (compression)?\n'
              '• Which parts are being pulled (tension)?',
          hints: [
            Hint(
              title: 'Quick Clue',
              content:
                  'Towers and pillars often handle compression. Cables often handle tension.',
            ),
          ],
        ),

        Slide(
          type: SlideType.text,
          title: 'Step 2: Design & Build (15 min)',
          content:
              'Build a bridge that spans 20 cm using the materials provided.\n\n'
              'Try to make it stable, not just long. If your bridge bends easily, add folds, layers, or triangle supports.',
          imageURL:
              'https://upload.wikimedia.org/wikipedia/commons/6/6e/Paper_bridge_model.jpg',
          caption: 'A simple paper bridge model used for classroom testing.',
          hints: [
            Hint(
              title: 'Beginner Tip',
              content:
                  'Fold paper into a “beam” shape (like a rectangle tube) to make it stronger.',
            ),
            Hint(
              title: 'Stability Tip',
              content:
                  'Strength usually improves when joints are tight and the base is wide.',
            ),
          ],
        ),

        Slide(
          type: SlideType.text,
          title: 'Step 3: Test & Record (8 min)',
          content:
              'Slowly add weight until the bridge collapses or bends too much to stay safe.\n\n'
              'Record:\n'
              '• Maximum weight held\n'
              '• Where the bridge failed first (middle, edge, support)\n'
              '• What looked weak (bending, tearing, wobbling)',
          hints: [
            Hint(
              title: 'Testing Safety',
              content:
                  'Add weight slowly. If you add too quickly, you might miss what part starts failing first.',
            ),
          ],
        ),

        Slide(
          type: SlideType.text,
          title: 'Step 4: Reflection (5 min)',
          content:
              'Answer in the app:\n\n'
              '• How did you feel when your bridge failed?\n'
              '• What did you change to improve your design?\n'
              '• If you had one more test, what would you try next?',
          // no hints (reflection should be student voice)
        ),

        Slide(
          type: SlideType.textWithLink,
          link: 'https://www.sciencebuddies.org/stem-activities',
          content: 'Learn more about EdutainSTEM activities and STEM learning.',
          hints: [
            Hint(
              title: 'Explore More',
              content:
                  'Look for activities that involve building, testing, and improving—those skills apply to many STEM fields.',
            ),
          ],
        ),
      ],

      intermediate: [
        Slide(
          type: SlideType.text,
          title: 'Lesson Breakdown (45 min)',
          content:
              'This lesson uses the engineering design cycle: learn → design → test → improve.\n\n'
              '• Theory – 7 minutes\n'
              '• Step 1: Introduction – 5 minutes\n'
              '• Step 2: Design & Build – 15 minutes\n'
              '• Step 3: Test & Record – 8 minutes\n'
              '• Step 4: Reflection – 5 minutes\n'
              '• Knowledge Quiz – 5 minutes',
        ),

        Slide(
          type: SlideType.text,
          title: 'Theory Introduction: Forces Travel Through Structures',
          content:
              'In real bridges, forces do not stay in one place. When a load is added, forces travel through beams, joints, and supports.\n\n'
              'Engineers design bridges so forces move safely into the ground instead of concentrating in one weak spot.',
          hints: [
            Hint(
              title: 'Key Idea',
              content:
                  'A strong bridge spreads forces. A weak bridge concentrates forces in one area.',
            ),
          ],
        ),

        Slide(
          type: SlideType.text,
          title: 'Compression in Bridge Components',
          content:
              'Compression pushes materials together. In many bridges, towers and vertical supports handle compression because they carry the load downward.\n\n'
              'If a support is too thin or too tall, it may buckle when compression becomes too high.',
          hints: [
            Hint(
              title: 'Design Warning',
              content:
                  'Tall thin supports buckle easier than short wide supports.',
            ),
          ],
        ),

        Slide(
          type: SlideType.text,
          title: 'Tension in Bridge Components',
          content:
              'Tension pulls materials apart. Cables and the bottom of beams often experience tension when weight is added.\n\n'
              'If a joint is weak, tension may cause tearing or separation at connection points.',
          hints: [
            Hint(
              title: 'Where to Watch',
              content:
                  'If your bridge fails at a joint, the design may need better connections or reinforcement.',
            ),
          ],
        ),

        Slide(
          type: SlideType.text,
          title: 'Load Distribution and Balance',
          content:
              'A bridge that distributes load evenly is safer and stronger. Good designs reduce bending by sharing the load across multiple paths.\n\n'
              'Triangular bracing and symmetrical supports often improve balance and stability.',
          imageURL:
              'https://cdn.britannica.com/74/22074-050-04A1F97E/truss-bridge-forces-lines-tension-compression.jpg',
          caption: 'Trusses use triangles to distribute load.',
          hints: [
            Hint(
              title: 'Practical Tip',
              content:
                  'If the center bends first, add bracing or support that redirects load to the sides.',
            ),
          ],
        ),

        Slide(
          type: SlideType.text,
          title: 'Why Bridges Fail',
          content:
              'Bridges can fail when the load is too high, the materials are weak, or forces are not distributed properly.\n\n'
              'In models, failure often happens through bending, joint separation, or buckling of supports.',
          // no hints (assessment of understanding)
        ),

        Slide(
          type: SlideType.text,
          title: 'Activity Introduction: Predict → Build → Improve',
          content:
              'Your goal is to build a bridge that holds as much weight as possible while staying stable.\n\n'
              'Before testing, predict where it might fail. After testing, improve the design based on evidence from what you observed.',
          videoURL: 'https://youtu.be/oVOnRPefcno',
          caption: 'Bridge testing and improvements based on observations.',
          hints: [
            Hint(
              title: 'Engineering Mindset',
              content:
                  'Do not change everything at once. Make one improvement, then test again so you know what helped.',
            ),
          ],
        ),

        Slide(
          type: SlideType.text,
          title: 'Step 1: Introduction (5 min)',
          content:
              'Observe different bridge types. Predict which design would hold more weight and explain why.\n\n'
              'Focus on: supports, shape, and where forces might travel.',
          hints: [
            Hint(
              title: 'Prediction Starter',
              content:
                  '“I think this bridge will be stronger because…” (mention triangles, supports, or force paths).',
            ),
          ],
        ),

        Slide(
          type: SlideType.text,
          title: 'Step 2: Design & Build (15 min)',
          content:
              'Build a bridge spanning 20 cm.\n\n'
              'Intermediate Tip: Add triangular supports or cross-bracing to reduce wobble and spread the load more evenly.',
          hints: [
            Hint(
              title: 'Build Tip',
              content:
                  'Try building a “truss” pattern using repeated triangles along the sides.',
            ),
          ],
        ),

        Slide(
          type: SlideType.text,
          title: 'Step 3: Test & Record (8 min)',
          content:
              'Add weights slowly until collapse or unsafe bending.\n\n'
              'Record:\n'
              '• Max weight held\n'
              '• First failure point\n'
              '• What changed shape first (beam, joint, support)',
          hints: [
            Hint(
              title: 'Observation Tip',
              content:
                  'Watch closely for small bends before the big collapse. Those bends are early warnings.',
            ),
          ],
        ),

        Slide(
          type: SlideType.text,
          title: 'Step 4: Reflection (5 min)',
          content:
              'Reflect:\n\n'
              '• Which part failed first—beam, joint, or support?\n'
              '• What redesign would distribute the load better?\n'
              '• What improvement would you test first if you had more time?',
          // no hints
        ),

        Slide(
          type: SlideType.textWithLink,
          link: 'https://www.sciencebuddies.org/stem-activities',
          content: 'Explore more engineering design challenges.',
          hints: [
            Hint(
              title: 'Extension',
              content:
                  'Try repeating this challenge with different materials and compare which designs perform best.',
            ),
          ],
        ),
      ],

      advanced: [
        Slide(
          type: SlideType.text,
          title: 'Lesson Breakdown (45 min)',
          content:
              'This lesson focuses on structural efficiency: maximize strength while controlling failure risks.\n\n'
              '• Theory – 7 minutes\n'
              '• Step 1: Introduction – 5 minutes\n'
              '• Step 2: Design & Build – 15 minutes\n'
              '• Step 3: Test & Record – 8 minutes\n'
              '• Step 4: Reflection – 5 minutes\n'
              '• Knowledge Quiz – 5 minutes',
        ),

        Slide(
          type: SlideType.text,
          title: 'Theory Introduction: Bridge Systems and Force Paths',
          content:
              'Bridges are systems where loads move through multiple components. A strong design creates clear force paths—'
              'routes that compression and tension follow into supports and then into the ground.\n\n'
              'Advanced engineering considers not only strength, but efficiency, redundancy (backup paths), and failure modes.',
          hints: [
            Hint(
              title: 'Core Concept',
              content:
                  'Force path = where the load travels through the structure. Good designs avoid “dead ends” or weak joints.',
            ),
          ],
        ),

        Slide(
          type: SlideType.text,
          title: 'Bridge Types and Force Distribution',
          content:
              'Different bridge types manage forces in specific ways:\n\n'
              '• Beam bridge: top in compression, bottom in tension.\n'
              '• Arch bridge: redirects compression into the ground.\n'
              '• Suspension bridge: cables carry tension, towers carry compression.\n\n'
              'Your model may not perfectly copy real bridges, but you can mimic how forces are distributed.',
          imageURL:
              'https://mechanical-engineering.com/wp-content/uploads/2019/09/types-of-bridges-7.jpg',
          caption: 'Common bridge types and structural layouts.',
          hints: [
            Hint(
              title: 'Advanced Tip',
              content:
                  'Try designing so the “main load path” goes into supports rather than forcing the center to bend.',
            ),
          ],
        ),

        Slide(
          type: SlideType.text,
          title: 'Materials and Design Choices',
          content:
              'Material behavior matters:\n\n'
              '• Concrete is strong mainly in compression.\n'
              '• Steel is strong in tension and compression.\n\n'
              'In prototypes, paper may handle compression well when folded, but it can fail in tension at weak joints. '
              'Design choices decide where the highest stresses occur.',
          hints: [
            Hint(
              title: 'Prototype Insight',
              content:
                  'Folded paper increases stiffness (resists bending). Reinforced joints reduce tearing.',
            ),
          ],
        ),

        Slide(
          type: SlideType.text,
          title: 'Failure Modes: Buckling, Snapping, Bending',
          content:
              'Failure can occur through:\n\n'
              '• Buckling: instability under compression (often sudden sideways bending).\n'
              '• Snapping/tearing: material failure under tension.\n'
              '• Excessive bending: load not distributed well, causing sagging.\n\n'
              'Engineers use testing and safety factors to reduce the chance of these failures.',
          hints: [
            Hint(
              title: 'Diagnosis Tip',
              content:
                  'If supports fold sideways → buckling.\n'
                  'If joints separate → tension failure.\n'
                  'If the middle sags slowly → bending / weak stiffness.',
            ),
          ],
        ),

        Slide(
          type: SlideType.text,
          title: 'Activity Introduction: Optimize Strength-to-Material Ratio',
          content:
              'Your challenge is to maximize performance while using limited material.\n\n'
              'Aim for a bridge that holds high weight without unnecessary bulk. In engineering, the best design is often '
              'the one that is strong, efficient, and predictable under load.',
          videoURL: 'https://youtu.be/oVOnRPefcno',
          caption: 'Stress testing and analyzing failure points.',
          hints: [
            Hint(
              title: 'Optimization Rule',
              content:
                  'Change one variable per iteration (e.g., bracing pattern, joint reinforcement, or span length).',
            ),
          ],
        ),

        Slide(
          type: SlideType.text,
          title: 'Step 1: Introduction (5 min)',
          content:
              'Predict the most likely failure mode: buckling, snapping, or bending.\n\n'
              'Explain where tension and compression will peak in your design and why.',
          hints: [
            Hint(
              title: 'Peak Stress Guess',
              content:
                  'Stress often peaks at the center span and at joints connecting supports to the main beam.',
            ),
          ],
        ),

        Slide(
          type: SlideType.text,
          title: 'Step 2: Design & Build (15 min)',
          content:
              'Build a bridge spanning 20 cm.\n\n'
              'Advanced challenge: attempt a 30 cm span while keeping stability.\n\n'
              'Your goal is not only holding weight, but controlling where and how failure happens.',
          hints: [
            Hint(
              title: 'Structural Strategy',
              content:
                  'Increase stiffness with folded beams and add bracing to create multiple load paths.',
            ),
            Hint(
              title: 'Redundancy',
              content:
                  'If one support fails, can another part carry load temporarily? Redundancy increases resilience.',
            ),
          ],
        ),

        Slide(
          type: SlideType.text,
          title: 'Step 3: Test & Record (8 min)',
          content:
              'Load incrementally until failure.\n\n'
              'Record:\n'
              '• Maximum span\n'
              '• Maximum load\n'
              '• First failure mode (buckling / tension tear / bending)\n'
              '• Location of initial failure\n\n'
              'Use your record to justify your next redesign.',
          hints: [
            Hint(
              title: 'Useful Data',
              content:
                  'A photo or quick sketch of the failure point helps you redesign accurately.',
            ),
          ],
        ),

        Slide(
          type: SlideType.text,
          title: 'Step 4: Reflection (5 min)',
          content:
              'Optimize:\n\n'
              '• What redesign gives the best strength-to-material ratio?\n'
              '• Which change improved load distribution most?\n'
              '• If you had to guarantee safety, what safety factor would you add (extra supports, thicker beams, stronger joints)?',
          // no hints: reflection is higher-order thinking
        ),

        Slide(
          type: SlideType.textWithLink,
          link: 'https://www.sciencebuddies.org/stem-activities',
          content: 'Read more about real-world bridge engineering.',
          hints: [
            Hint(
              title: 'Extension Task',
              content:
                  'Compare your bridge design to a real bridge type (beam, arch, or suspension) and explain similarities in force handling.',
            ),
          ],
        ),
      ],
    ),

    // Knowledge Quiz - 5 min (adaptive, level-specific)
    exam: Exam(
      basic: [
        PostQuestionModel(
          id: 'basic_q1',
          index: 0,
          question: 'What is compression?',
          type: QuestionTypesEnum.multipleChoice,
          isFlagged: false,
          choices: [
            PostQuestionChoicesModel(
              id: 'basic_q1_a',
              choice: 'Pulling apart',
              isCorrectChoice: false,
            ),
            PostQuestionChoicesModel(
              id: 'basic_q1_b',
              choice: 'Pushing together',
              isCorrectChoice: true,
            ),
            PostQuestionChoicesModel(
              id: 'basic_q1_c',
              choice: 'Making something lighter',
              isCorrectChoice: false,
            ),
            PostQuestionChoicesModel(
              id: 'basic_q1_d',
              choice: 'Bending a shape',
              isCorrectChoice: false,
            ),
          ],
        ),
        PostQuestionModel(
          id: 'basic_q2',
          index: 1,
          question: 'Which shape is the strongest for bridges?',
          type: QuestionTypesEnum.multipleChoice,
          isFlagged: false,
          choices: [
            PostQuestionChoicesModel(
              id: 'basic_q2_a',
              choice: 'Square',
              isCorrectChoice: false,
            ),
            PostQuestionChoicesModel(
              id: 'basic_q2_b',
              choice: 'Triangle',
              isCorrectChoice: true,
            ),
            PostQuestionChoicesModel(
              id: 'basic_q2_c',
              choice: 'Circle',
              isCorrectChoice: false,
            ),
            PostQuestionChoicesModel(
              id: 'basic_q2_d',
              choice: 'Rectangle',
              isCorrectChoice: false,
            ),
          ],
        ),
        PostQuestionModel(
          id: 'basic_q3',
          index: 2,
          question: 'What should engineers do if a bridge design fails?',
          type: QuestionTypesEnum.multipleChoice,
          isFlagged: false,
          choices: [
            PostQuestionChoicesModel(
              id: 'basic_q3_a',
              choice: 'Give up',
              isCorrectChoice: false,
            ),
            PostQuestionChoicesModel(
              id: 'basic_q3_b',
              choice: 'Learn and improve',
              isCorrectChoice: true,
            ),
            PostQuestionChoicesModel(
              id: 'basic_q3_c',
              choice: 'Never test again',
              isCorrectChoice: false,
            ),
            PostQuestionChoicesModel(
              id: 'basic_q3_d',
              choice: 'Ignore it',
              isCorrectChoice: false,
            ),
          ],
        ),
      ],

      intermediate: [
        PostQuestionModel(
          id: 'int_q1',
          index: 0,
          question: 'Which part of a suspension bridge is under tension?',
          type: QuestionTypesEnum.multipleChoice,
          isFlagged: false,
          choices: [
            PostQuestionChoicesModel(
              id: 'int_q1_a',
              choice: 'Towers',
              isCorrectChoice: false,
            ),
            PostQuestionChoicesModel(
              id: 'int_q1_b',
              choice: 'Cables',
              isCorrectChoice: true,
            ),
            PostQuestionChoicesModel(
              id: 'int_q1_c',
              choice: 'Road surface',
              isCorrectChoice: false,
            ),
            PostQuestionChoicesModel(
              id: 'int_q1_d',
              choice: 'Pillars',
              isCorrectChoice: false,
            ),
          ],
        ),
        PostQuestionModel(
          id: 'int_q2',
          index: 1,
          question: 'Why do engineers use triangular supports?',
          type: QuestionTypesEnum.multipleChoice,
          isFlagged: false,
          choices: [
            PostQuestionChoicesModel(
              id: 'int_q2_a',
              choice: 'They are cheaper',
              isCorrectChoice: false,
            ),
            PostQuestionChoicesModel(
              id: 'int_q2_b',
              choice: 'They spread forces evenly',
              isCorrectChoice: true,
            ),
            PostQuestionChoicesModel(
              id: 'int_q2_c',
              choice: 'They look nice',
              isCorrectChoice: false,
            ),
            PostQuestionChoicesModel(
              id: 'int_q2_d',
              choice: 'They are easy to draw',
              isCorrectChoice: false,
            ),
          ],
        ),
        PostQuestionModel(
          id: 'int_q3',
          index: 2,
          question: 'Which of the following can cause a bridge to fail?',
          type: QuestionTypesEnum.multipleChoice,
          isFlagged: false,
          choices: [
            PostQuestionChoicesModel(
              id: 'int_q3_a',
              choice: 'Too much load',
              isCorrectChoice: true,
            ),
            PostQuestionChoicesModel(
              id: 'int_q3_b',
              choice: 'Too many triangles',
              isCorrectChoice: false,
            ),
            PostQuestionChoicesModel(
              id: 'int_q3_c',
              choice: 'Too much paint',
              isCorrectChoice: false,
            ),
            PostQuestionChoicesModel(
              id: 'int_q3_d',
              choice: 'Too many workers',
              isCorrectChoice: false,
            ),
          ],
        ),
      ],

      advanced: [
        PostQuestionModel(
          id: 'adv_q1',
          index: 0,
          question: 'In a beam bridge, which part is in compression?',
          type: QuestionTypesEnum.multipleChoice,
          isFlagged: false,
          choices: [
            PostQuestionChoicesModel(
              id: 'adv_q1_a',
              choice: 'Top',
              isCorrectChoice: true,
            ),
            PostQuestionChoicesModel(
              id: 'adv_q1_b',
              choice: 'Bottom',
              isCorrectChoice: false,
            ),
            PostQuestionChoicesModel(
              id: 'adv_q1_c',
              choice: 'Both top and bottom',
              isCorrectChoice: false,
            ),
            PostQuestionChoicesModel(
              id: 'adv_q1_d',
              choice: 'None',
              isCorrectChoice: false,
            ),
          ],
        ),
        PostQuestionModel(
          id: 'adv_q2',
          index: 1,
          question: 'Why are arches strong in bridge design?',
          type: QuestionTypesEnum.multipleChoice,
          isFlagged: false,
          choices: [
            PostQuestionChoicesModel(
              id: 'adv_q2_a',
              choice: 'They use only tension',
              isCorrectChoice: false,
            ),
            PostQuestionChoicesModel(
              id: 'adv_q2_b',
              choice: 'They push compression into the ground',
              isCorrectChoice: true,
            ),
            PostQuestionChoicesModel(
              id: 'adv_q2_c',
              choice: 'They require no supports',
              isCorrectChoice: false,
            ),
            PostQuestionChoicesModel(
              id: 'adv_q2_d',
              choice: 'They use steel cables',
              isCorrectChoice: false,
            ),
          ],
        ),
        PostQuestionModel(
          id: 'adv_q3',
          index: 2,
          question: 'Which material is strong mainly in compression?',
          type: QuestionTypesEnum.multipleChoice,
          isFlagged: false,
          choices: [
            PostQuestionChoicesModel(
              id: 'adv_q3_a',
              choice: 'Steel',
              isCorrectChoice: false,
            ),
            PostQuestionChoicesModel(
              id: 'adv_q3_b',
              choice: 'Concrete',
              isCorrectChoice: true,
            ),
            PostQuestionChoicesModel(
              id: 'adv_q3_c',
              choice: 'Rubber',
              isCorrectChoice: false,
            ),
            PostQuestionChoicesModel(
              id: 'adv_q3_d',
              choice: 'Wood',
              isCorrectChoice: false,
            ),
          ],
        ),
        PostQuestionModel(
          id: 'adv_q4',
          index: 3,
          question: 'What is buckling?',
          type: QuestionTypesEnum.multipleChoice,
          isFlagged: false,
          choices: [
            PostQuestionChoicesModel(
              id: 'adv_q4_a',
              choice: 'Breaking under tension',
              isCorrectChoice: false,
            ),
            PostQuestionChoicesModel(
              id: 'adv_q4_b',
              choice: 'Bending under too much compression',
              isCorrectChoice: true,
            ),
            PostQuestionChoicesModel(
              id: 'adv_q4_c',
              choice: 'Snapping of cables',
              isCorrectChoice: false,
            ),
            PostQuestionChoicesModel(
              id: 'adv_q4_d',
              choice: 'Tilting sideways',
              isCorrectChoice: false,
            ),
          ],
        ),
      ],
    ),
  );

  Future<void> addEleTopic(Map<String, dynamic> topicData) async {
    try {
      topicData = {
        'ageRange': {'min': 10, 'max': 14},
        'durationMinutes': 45,
        'title': 'Paper Tower Challenge: Strength in Shapes',
        'theoryContent': {
          'basic': [
            {
              'type': 'text',
              'title': 'Sample Title',
              'content':
                  'A tower must stand tall without falling. Engineers use shapes to make towers strong, even when they are made of light materials like paper.',
            },
            {
              'type': 'textWithImage',
              'imageURL':
                  'https://images.unsplash.com/photo-1603354350317-6f7aaa5911c5?q=80&w=1600&auto=format&fit=crop',
              'content':
                  'Cylinders are stronger than flat sheets of paper because they spread the weight around evenly.',
            },
            {
              'type': 'image',
              'caption':
                  'Triangles give strength to tall structures by balancing forces.',
              'imageURL':
                  'https://images.unsplash.com/photo-1564769663267-959f73d2efaa?q=80&w=1600&auto=format&fit=crop',
            },
            {
              'type': 'video',
              'caption':
                  'Watch how different paper shapes handle weight when stacked.',
              'videoURL':
                  'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
            },
            {
              'type': 'textWithLink',
              'link': 'https://edutainstem.eu/',
              'content':
                  'Discover simple experiments about strength in shapes.',
            },
          ],
          'intermediate': [
            {
              'type': 'text',
              'title': 'Sample Title - Intermediate',
              'content':
                  'Towers must resist two main forces: compression (pushing down) and buckling (bending under load).',
            },
            {
              'type': 'textWithImage',
              'imageURL':
                  'https://images.unsplash.com/photo-1497435334941-8c899ee9e8e9?q=80&w=1600&auto=format&fit=crop',
              'content':
                  'Engineers use repeating patterns like trusses to distribute weight across the whole structure.',
            },
            {
              'type': 'image',
              'caption':
                  'Skyscrapers combine steel frames, concrete, and shape-based designs to stay strong and tall.',
              'imageURL':
                  'https://images.unsplash.com/photo-1467987506553-8f3916508521?q=80&w=1600&auto=format&fit=crop',
            },
            {
              'type': 'video',
              'caption':
                  'How engineers test model towers for balance and load distribution.',
              'videoURL':
                  'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
            },
            {
              'type': 'textWithLink',
              'link': 'https://edutainstem.eu/',
              'content': 'Read about civil engineering and modern skyscrapers.',
            },
          ],
          'advanced': [
            {
              'type': 'text',
              'content':
                  'Stability depends on center of gravity, base width, and load distribution. Narrow bases cause instability while wide bases distribute forces effectively.',
            },
            {
              'type': 'textWithImage',
              'imageURL':
                  'https://images.unsplash.com/photo-1519881402168-6c1a9b0b33d5?q=80&w=1600&auto=format&fit=crop',
              'content':
                  'Tall towers balance slenderness ratio (height to base width). Too tall and narrow increases risk of buckling.',
            },
            {
              'type': 'image',
              'caption':
                  'Paper towers mimic real skyscraper principles—using columns, braces, and load paths.',
              'imageURL':
                  'https://images.unsplash.com/photo-1499955085172-a104c9463ece?q=80&w=1600&auto=format&fit=crop',
            },
            {
              'type': 'video',
              'caption': 'Testing towers under wind and vibration simulations.',
              'videoURL':
                  'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
            },
            {
              'type': 'textWithLink',
              'link': 'https://edutainstem.eu/',
              'content':
                  'Explore how skyscraper engineers prevent collapse with modern innovations.',
            },
          ],
        },
        'tags': ['Science', 'Technology', 'Engineering', 'Mathematics', 'SEL'],
        'description':
            'This 45-minute hands-on activity challenges learners aged 10–14 to build the tallest paper tower possible. By folding, rolling, and arranging paper, students explore how shapes like cylinders and triangles create stability and strength. They test their towers under weight, make improvements, and reflect on why some designs perform better. The activity builds problem-solving, collaboration, and resilience while connecting everyday materials to real-world engineering concepts in skyscraper design.',
      };

      await FirebaseFirestore.instance.collection('ele').add(topicData);

      print("✅ Topic added successfully to 'ele' collection.");
    } catch (e) {
      print('❌ Failed to add topic: $e');
      rethrow;
    }
  }

  Future<void> addSampleLessonToEle() async {
    try {
      await FirebaseFirestore.instance
          .collection(FirebaseConstants.ele.name)
          .add(sampleLesson90.toJson());

      print("✅ Sample lesson added successfully to 'ele' collection.");
    } catch (e) {
      print('❌ Failed to add sample lesson: $e');
      rethrow;
    }
  }

  Future<void> getRoomDetails(Map<String, dynamic> topicData) async {
    try {
      final result = await FirebaseFirestore.instance
          .collection(FirebaseConstants.room.name)
          .doc('zzLB3TVghIj9INHrdWoX')
          .get();

      await it<JsonDownloadService>().saveJson(input: result.data() ?? {});

      print("✅ Topic added successfully to 'ele' collection.");
    } catch (e) {
      print('❌ Failed to add topic: $e');
      rethrow;
    }
  }

  Future<void> getELEDetails(Map<String, dynamic> topicData) async {
    try {
      final result = await FirebaseFirestore.instance
          .collection(FirebaseConstants.ele.name)
          .doc('AWL5WvdbWY1QqdgASDEq')
          .get();

      await it<JsonDownloadService>().saveJson(input: result.data() ?? {});

      print("✅ Topic added successfully to 'ele' collection.");
    } catch (e) {
      print('❌ Failed to add topic: $e');
      rethrow;
    }
  }
}
