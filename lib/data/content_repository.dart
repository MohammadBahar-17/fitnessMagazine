import 'package:fitness_magazine/models/content_models.dart';
import 'package:flutter/material.dart';

class ContentRepository {
  List<FeaturedArticle> getFeaturedArticles() {
    return [
      FeaturedArticle(
        title: 'اليك 10 فوائد صحية مذهلة لزيت الأفوكادو الذي يعزز صحتك وجمالك',
        summary:
            'يحتوي زيت الأفوكادو على أحماض دهنية مفيدة تعزز صحة القلب وتغذي البشرة والشعر وتحارب الالتهابات...',
        content:
            'يحتوي زيت الأفوكادو على أحماض دهنية مفيدة وفيتامينات مهمة مثل فيتامين E وK، تساعد على خفض الكولسترول الضار وزيادة الكولسترول الجيد. كما يحتوي على مضادات أكسدة تحمي من الأمراض المزمنة، وله خصائص ترطيب عالية للبشرة الجافة وتغذية الشعر التالف. يُعدّ خيارًا مثاليًا لنظام غذائي صحي وعناية طبيعية.',
        imagePath:
            'https://images.unsplash.com/photo-1743883325575-783014a39a8b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwyfHx8ZW58MHx8fHx8',
        category: 'تغذية',
        themeColor: const Color(0xFfB4cf66),
      ),
      FeaturedArticle(
        title:
            'فقر الدم وأسبابه: دليلك للتعرف على العلامات المبكرة والعلاج الفعّال',
        summary:
            'فقر الدم هو حالة صحية شائعة تؤدي إلى ضعف عام في الجسم وتحتاج إلى اهتمام غذائي وطبي...',
        content:
            'فقر الدم هو حالة تحدث عندما لا يحتوي الدم على ما يكفي من خلايا الدم الحمراء السليمة أو الهيموغلوبين، مما يؤدي إلى ضعف نقل الأكسجين. من أسبابه نقص الحديد، أو فيتامين B12، أو أمراض مزمنة. تشمل أعراضه التعب والدوخة وضيق التنفس. يمكن علاجه من خلال التغذية المناسبة والمكملات حسب توجيه الطبيب.',
        imagePath:
            'https://plus.unsplash.com/premium_photo-1673518604468-d9d697fb3dce?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8ZnJ1dGllc3xlbnwwfHwwfHx8MA%3D%3D',
        category: 'صحة',
        themeColor: const Color(0xFF79bde8),
      ),
      FeaturedArticle(
        title: 'فوائد زيت الزنجبيل للشعر: السر الطبيعي لشعر قوي وكثيف',
        summary:
            'زيت الزنجبيل يعزز نمو الشعر ويمنع تساقطه بفضل تركيبته الغنية بالمغذيات ومضادات الأكسدة...',
        content:
            'زيت الزنجبيل غني بمضادات الأكسدة والفيتامينات مثل فيتامين B6 والمغنيسيوم، مما يساعد على تحسين الدورة الدموية في فروة الرأس وتحفيز نمو الشعر. كما يعمل على تقوية بصيلات الشعر وتقليل القشرة والحكة. يعتبر علاجًا طبيعيًا فعّالًا للحفاظ على صحة وجمال الشعر.',
        imagePath:
            'https://images.unsplash.com/photo-1599940859674-a7fef05b94ae?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Z2luZ2VyfGVufDB8fDB8fHww',
        category: 'جمال',
        themeColor: const Color(0xFFf05e8e),
      ),
      FeaturedArticle(
        title:
            'لماذا تمارين الكارديو وحدها لا تكفي لفقدان الوزن؟ تعرف على السر',
        summary:
            'رغم أهمية الكارديو في تحسين اللياقة، إلا أن فقدان الوزن يتطلب دمج عدة أنواع من التمارين والنظام الغذائي...',
        content:
            'تمارين الكارديو مثل المشي والجري تساعد في حرق السعرات الحرارية وتحسين صحة القلب، لكنها وحدها غير كافية لفقدان الوزن بشكل فعّال. ينصح بدمجها مع تمارين القوة لزيادة الكتلة العضلية ورفع معدل الأيض. بالإضافة إلى ذلك، يلعب النظام الغذائي دورًا أساسيًا في تحقيق نتائج مستدامة.',
        imagePath:
            'https://images.unsplash.com/photo-1556817411-31ae72fa3ea0?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fHNwb3J0fGVufDB8fDB8fHww',
        category: 'لياقة',
        themeColor: const Color(0xFFfccd0a),
      ),
    ];
  }

  List<Article> getNutritionArticles() {
    return [
      Article(
        title: 'المسموحات والممنوعات في رمضان: دليلك لصيام صحي ومتوازن',
        summary:
            'مع حلول شهر رمضان، يجب معرفة ما يمكن تناوله وما يجب تجنبه للحفاظ على طاقة الجسم...',
        content:
            'هناك العديد من النصائح الغذائية المهمة لشهر رمضان. من المسموحات تناول التمر والماء عند الإفطار لتزويد الجسم بالطاقة بسرعة، بالإضافة إلى تناول الخضروات والبروتينات الخفيفة. أما الممنوعات فتشمل الإفراط في تناول الحلويات والأطعمة المقلية والمشروبات الغازية، لأنها تسبب الخمول وزيادة الوزن.',
        imagePath:
            'https://images.unsplash.com/photo-1532550907401-a500c9a57435?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cHJvdGVpbnxlbnwwfHwwfHx8MA%3D%3D',
        themeColor: const Color(0xFfB4cf66),
      ),
      Article(
        title: 'فوائد تناول وجبة السحور: كيف تحافظ على طاقتك أثناء الصيام؟',
        summary:
            'السحور هو الوجبة الأساسية التي تمد الجسم بالطاقة طوال النهار وتقلل من الشعور بالجوع والعطش...',
        content:
            'تناول وجبة السحور يساعد على تزويد الجسم بالطاقة خلال ساعات الصيام الطويلة. ينصح بتناول أطعمة غنية بالألياف مثل الشوفان، والبروتينات مثل البيض، والكربوهيدرات المعقدة مثل الخبز الأسمر. كما يُفضل تجنب الأطعمة المالحة والبهارات التي تسبب العطش. السحور المتوازن يُعدّ مفتاحًا لصيام صحي.',
        imagePath:
            'https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Zm9vZHxlbnwwfHwwfHx8MA%3D%3D',
        themeColor: const Color(0xFfB4cf66),
      ),
      Article(
        title: 'أطعمة تجعل الصيام أصعب: تجنبها لتضمن يومًا مريحًا وصحيًا',
        summary:
            'بعض الأغذية تزيد من الشعور بالعطش أو الجوع خلال النهار، مما يؤثر على راحة الصائم...',
        content:
            'من أبرز الأطعمة التي تجعل الصيام أكثر صعوبة هي الأطعمة المالحة مثل المخللات والجبن المالح، والأطعمة المقلية التي تُثقل المعدة، والحلويات الغنية بالسكر التي تسبب ارتفاع وهبوط مفاجئ في مستوى الطاقة. كما أن المشروبات المحتوية على الكافيين تسبب الجفاف وتزيد من العطش.',
        imagePath:
            'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfHx8MA%3D%3D',
        themeColor: const Color(0xFfB4cf66),
      ),
    ];
  }

  List<Article> getHealthArticles() {
    return [
      Article(
        title: 'البروكلي لمحاربة الحساسية الجلدية: خضار خارق بفوائد مذهلة',
        summary:
            'البروكلي ليس فقط غنيًا بالعناصر الغذائية بل أيضًا يساعد على تقليل أعراض الحساسية والتهاب الجلد...',
        content:
            'البروكلي غني بمضادات الأكسدة مثل السلفورافين والمركبات المضادة للالتهابات، والتي تساعد في تخفيف أعراض الحساسية الجلدية مثل الحكة والاحمرار. كما أنه يحتوي على فيتامين C الذي يعزز المناعة ويقلل من الالتهابات، مما يجعله خيارًا ممتازًا لدعم صحة البشرة والجسم.',
        imagePath:
            'https://plus.unsplash.com/premium_photo-1702403157830-9df749dc6c1e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8YnJvY2NvbGl8ZW58MHx8MHx8fDA%3D',
        themeColor: const Color(0xFF79bde8),
      ),
      Article(
        title:
            'لماذا ينصح بشرب ٨ أكواب ماء يوميًا؟ السر وراء الصحة والعمر الطويل',
        summary:
            'الماء هو أساس الحياة، وشرب الكمية المناسبة يوميًا يحسن صحة الجسم ويزيد من طاقته...',
        content:
            'شرب كمية كافية من الماء يوميًا يعزز وظائف الأعضاء الحيوية ويحافظ على ترطيب الجسم، مما يساعد الكلى في التخلص من السموم. كما أن الماء يحسن من مرونة البشرة ويقلل من التجاعيد، ويدعم صحة القلب والدماغ. لذلك، يُنصح بشرب 8 أكواب من الماء أو أكثر حسب النشاط البدني والطقس.',
        imagePath:
            'https://plus.unsplash.com/premium_photo-1681930071839-e5fbf9fae636?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8d2F0ZXJ8ZW58MHx8MHx8fDA%3D',
        themeColor: const Color(0xFF79bde8),
      ),
    ];
  }

  List<Article> getBeautyArticles() {
    return [
      Article(
        title: 'كثرة الاستحمام تضر بشرة الأطفال: نصائح لحمايتها من الجفاف',
        summary:
            'الاستحمام الزائد قد يُفقد بشرة الأطفال زيوتها الطبيعية، مما يؤدي إلى التهيج والحساسية...',
        content:
            'الاستحمام المتكرر للأطفال، خاصة باستخدام الماء الساخن أو الصابون القوي، قد يؤدي إلى جفاف البشرة وتهيجها. للحفاظ على نعومة البشرة، يُفضل تقليل عدد مرات الاستحمام واستخدام زيوت طبيعية مثل زيت اللوز أو زيت جوز الهند بعد الاستحمام للحفاظ على الترطيب وتغذية البشرة.',
        imagePath:
            'https://images.unsplash.com/photo-1522337360788-8b13dee7a37e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8aGFpcnxlbnwwfHwwfHx8MA%3D%3D',
        themeColor: const Color(0xFFf05e8e),
      ),
    ];
  }

  List<Article> getFitnessArticles() {
    return [
      Article(
        title:
            'ما هي الذاكرة العضلية؟ وكيف يمكنك تعزيزها للعودة السريعة إلى التمرين؟',
        summary:
            'الذاكرة العضلية تساعد الجسم على استرجاع قوته بعد الانقطاع عن التمارين بشكل أسرع...',
        content:
            'الذاكرة العضلية هي قدرة العضلات على استعادة شكلها وقوتها السابقة بعد الانقطاع عن التمارين. يتم تطويرها من خلال التمارين المستمرة على المدى الطويل. عند العودة للتمرين بعد التوقف، يستعيد الجسم القدرة على الأداء بسرعة بفضل هذه الذاكرة. التغذية الغنية بالبروتين، الراحة الكافية، والانتظام في التمرين تدعم هذه العملية.',
        imagePath:
            'https://images.unsplash.com/photo-1526506118085-60ce8714f8c5?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Z3ltfGVufDB8fDB8fHww',
        themeColor: const Color(0xFFfccd0a),
      ),
    ];
  }
}
