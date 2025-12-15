import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edutainstem/core/constants/firebase_constants.dart';
import 'package:edutainstem/core/services/json_download_service.dart';
import 'package:edutainstem/injection.dart';

class DevFirebaseFunctions {
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
}
