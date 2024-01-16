import 'package:flutter/foundation.dart';
import 'package:myapp/domain/debate.dart';

class DebateProvider extends ChangeNotifier {

    



  final List<Debate> _debates = [ 
    Debate(
        id: "1",
        thesis: "The existence of God is a logical fallacy.",
        openingStatement1:"The argument from design posits that the intricate complexity observed in the universe is indicative of a deliberate designer. Advocates of this argument often point to the intricacies of biological systems, the precision of physical constants, and the overall order and structure of the cosmos as evidence for an intelligent creator. \n\nHowever, a critical examination reveals inherent flaws in this reasoning, primarily stemming from the assumption that there is no natural explanation for complexity. \n\nOne of the fundamental flaws in the argument from design lies in its reliance on the idea that complexity cannot arise naturally. This assumption neglects the well-established principles of natural selection and evolution. Charles Darwin's theory of evolution by natural selection provides a comprehensive framework for understanding the development of complex biological structures over time. Through the process of random variation and natural selection, organisms evolve to adapt to their environments, leading to the emergence of intricate and specialized features. The diversity and complexity of life on Earth can be explained by the gradual accumulation of small, advantageous changes through generations. Moreover, advancements in fields such as physics and cosmology have provided natural explanations for certain aspects of the universe's complexity. The precision of physical constants, often cited as evidence for design, can be understood through theories like the anthropic principle. This principle suggests that our observations are influenced by the necessity of conditions suitable for the existence of observers – intelligent life. In other words, the constants of the universe are within the narrow range necessary for life because, had they been different, observers like us would not exist to ponder them. The argument from design also faces challenges from the perspective of comparative religion and cultural diversity. Different cultures throughout history have posited various gods or supernatural forces as the designers of the universe. The diversity of these beliefs suggests that attributing the complexity of the universe to a specific designer is a subjective interpretation influenced by cultural and religious frameworks rather than empirical evidence. Furthermore, the argument from design tends to invoke a \"God of the gaps\" fallacy. This fallacy occurs when gaps in scientific knowledge are filled with the assumption of a divine explanation. As scientific understanding advances, these gaps diminish, and what was once attributed to a designer may find a natural explanation. History is replete with examples of phenomena initially considered inexplicable but later understood through scientific inquiry. In addition to natural explanations, the argument from design faces challenges from the presence of imperfections and inefficiencies in the natural world. If a designer created the universe with purpose and perfection, one would expect flawless and optimal designs. However, the biological world is rife with examples of imperfections, vestigial structures, and suboptimal solutions – phenomena that align more with evolutionary processes than with intentional design. In conclusion, the argument from design, while appealing on the surface, falters under scrutiny due to its flawed assumption that complexity requires a supernatural explanation. \n\nNatural processes, such as evolution and the anthropic principle, offer compelling and well-supported alternatives to the notion of an intelligent designer. \n\nAs scientific understanding continues to evolve, the gaps that once accommodated the argument from design are likely to be filled with natural explanations, further diminishing the credibility of this argument in explaining the complexity of the universe.",
        openingStatement2:
            "The argument from teleology states that the purposefulness of the universe is evidence of a designer. However, this argument is also flawed because it relies on the assumption that there is no natural explanation for purposefulness.",
        mainArgument1:
            "The argument from morality states that the existence of objective moral values is evidence of a designer. However, this argument is also flawed because it relies on the assumption that there is no natural explanation for objective moral values.",
        mainArgument2:
            "The argument from consciousness states that the existence of consciousness is evidence of a designer. However, this argument is also flawed because it relies on the assumption that there is no natural explanation for consciousness.",
        rebuttal1:
            "The argument from ignorance states that the existence of God is the only explanation for the unknown. However, this argument is flawed because it relies on the assumption that there is no natural explanation for the unknown.",
        rebuttal2:
            "The argument from faith states that the existence of God is a matter of faith. However, this argument is flawed because it relies on the assumption that there is no rational argument for the existence of God.",
        closingStatement1:
            "The existence of God is a matter of personal belief. There is no scientific evidence that can prove or disprove the existence of God.",
        closingStatement2:
            "Ultimately, the question of whether or not God exists is a matter of faith.",
        user1: '',
        user2: '',
        ),];

  List<Debate> get debates => _debates;

  void removeDebate(Debate debate) {
    _debates.remove(debate);
    notifyListeners();
  }

  void addDebate(Debate debate) {
    _debates.add(debate);
    notifyListeners();
  }
}