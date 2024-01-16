import 'package:flutter/foundation.dart';

import '../domain/logical_fallacy.dart';

class LogicalFallacyProvider extends ChangeNotifier {
  final List<LogicalFallacy> _fallacies = [
    LogicalFallacy(
        id: "1",
        title: "Ad Hominem",
        text: "Attacking the person instead of addressing the argument.",
        essay: 'The "ad hominem" fallacy occurs when an argument attacks the person making a claim rather than addressing the substance of the claim itself. Instead of engaging with the evidence or reasoning presented, the fallacious argument focuses on discrediting the individual by attacking their character, motives, or personal attributes. Ad hominem arguments can take the form of name-calling, insults, or irrelevant personal attacks. It is crucial to recognize and avoid this fallacy, as it distracts from the actual issues at hand and does not contribute to a meaningful or rational discussion. Evaluating claims should involve a careful examination of the evidence and reasoning presented rather than resorting to personal attacks on the person making the argument.'),
    LogicalFallacy(
      id: "2",
      title: "Strawman",
      text:
          "Misrepresenting or exaggerating someone's argument to make it easier to attack.",
      essay:
          'The "strawman" fallacy occurs when someone distorts or misrepresents an '
          'opponent\'s argument in a way that makes it easier to attack or refute, '
          'often by exaggerating or oversimplifying the original position. Instead '
          'of addressing the actual points made by the opponent, the person creating '
          'the strawman constructs a weaker or distorted version of the argument and '
          'then attacks that version instead. This fallacy is misleading because it '
          'mischaracterizes the opponent\'s position, making it easier to defeat in '
          'an argument. To engage in a fair and constructive debate, it\'s essential'
          ' to address the actual points and claims made by the other party rather '
          'than creating a distorted representation of their position.',
    ),
    LogicalFallacy(
        id: "3",
        title: "Appeal to Ignorance",
        text:
            "Asserting that a proposition is true because it hasn't been proven false, or vice versa.",
        essay: 'The "appeal to ignorance" is a logical fallacy that occurs when'
            ' someone argues that a claim is true because there is no evidence'
            ' proving it false, or vice versa. In other words, the fallacy'
            ' involves making a conclusion based on a lack of evidence, '
            'rather than on the presence of affirmative evidence. This '
            'reasoning is flawed because the absence of evidence does '
            'not necessarily indicate the truth or falsehood of a claim. '
            'It\'s important to recognize that just because something hasn\'t '
            'been proven false doesn\'t automatically make it true, and vice '
            'versa. Logical reasoning requires positive evidence to support a '
            'claim, rather than relying on the absence of evidence to draw conclusions.'),
    LogicalFallacy(
      id: "4",
      title: "False Dilemma",
      text:
          "Presenting only two options when there are more possible outcomes.",
      essay:
          'The "false dilemma" fallacy, also known as the "false dichotomy," '
          'occurs when someone presents a situation as if there are only two '
          'mutually exclusive options or choices, when in reality, there are '
          'other viable alternatives or possibilities. This fallacy '
          'oversimplifies complex issues by limiting the options to '
          'an either/or scenario, ignoring the potential for middle'
          ' ground or additional choices. By falsely framing the argument'
          ' in this way, the person using the false dilemma fallacy aims to'
          ' force others into accepting one of the presented options, often'
          ' to support a specific agenda or viewpoint. It\'s important to '
          'recognize that many situations involve a range of possibilities, '
          'and reducing them to just two extremes can lead to an inaccurate '
          'and incomplete understanding of the issue at hand.',
    ),
    LogicalFallacy(
      id: "5",
      title: "Slippery Slope",
      text:
          "Asserting that a relatively small first step will inevitably lead to a chain of related events.",
      essay:
          'The "slippery slope" fallacy occurs when an argument suggests that'
          ' a particular event or decision will inevitably lead to a series of '
          'negative consequences, usually without providing sufficient evidence'
          ' to support this chain of events. The fallacy implies that taking one'
          ' action will set off a sequence of uncontrollable and dire outcomes.'
          ' While it\'s valid to consider potential consequences of an action, '
          'the slippery slope fallacy exaggerates and lacks proper justification '
          'for the predicted chain of events. It oversimplifies complex situations'
          ' by ignoring potential mitigating factors and assumes a direct and '
          'unavoidable progression from one event to another. Critical thinking '
          'requires a more nuanced examination of causation and consequences '
          'rather than relying on an unsupported cascade of negative outcomes.',
    ),
    LogicalFallacy(
      id: "6",
      title: "Circular Reasoning",
      text: "Using the conclusion of an argument as one of its premises.",
      essay: 'Circular reasoning, also known as begging the question, is a '
          'logical fallacy in which the conclusion of an argument is '
          'essentially restated within one of its premises, without providing '
          'any new or independent evidence. The reasoning becomes circular '
          'because the argument relies on the very thing it is trying to '
          'prove. This fallacy creates an illusion of validity without '
          'actually supporting the conclusion with external evidence. Circular '
          'reasoning often takes the form of asserting that a statement is true '
          'because it is true, creating a self-referential loop that lacks substance. '
          'In sound arguments, premises should provide new information or evidence '
          'to support the conclusion, rather than merely repeating or assuming '
          'what is to be proven.',
    ),
    LogicalFallacy(
      id: "7",
      title: "Appeal to Authority",
      text:
          "Using the opinion of an authority figure as evidence in an argument.",
      essay: 'The "appeal to authority" fallacy occurs when an argument relies '
          'on the opinion or endorsement of an authority figure, rather than on'
          'the strength of the reasoning or evidence. Just because someone is '
          'an expert or holds a position of authority doesn\'t mean their opinion '
          'is always correct, and using their status as the sole basis for an '
          'argument is logically flawed. It\'s crucial to evaluate the substance '
          'of the evidence and the soundness of the reasoning, rather than '
          'accepting a claim simply because it comes from an authoritative '
          'source. A credible argument should stand on its own merit, supported'
          ' by relevant and valid evidence, rather than relying on the authority'
          ' of the person making the statement.',
    ),
    LogicalFallacy(
      id: "8",
      title: "Hasty Generalization",
      text: "Drawing a conclusion based on insufficient or biased evidence.",
      essay: 'The "hasty generalization" fallacy occurs when a conclusion is '
          'drawn from insufficient or biased evidence, often based on a '
          'limited sample size. In this fallacy, someone makes a broad '
          'generalization about a group, category, or phenomenon based '
          'on too few instances or selective examples. This reasoning '
          'is hasty because it fails to consider a representative and '
          'diverse range of cases, leading to an unreliable or inaccurate '
          'conclusion. Hasty generalizations often arise from hastily '
          'forming conclusions without adequate evidence, and they can'
          ' perpetuate stereotypes or reinforce biased views. To avoid '
          'this fallacy, it is important to gather a sufficiently '
          'comprehensive and representative sample before making '
          'generalizations about a larger population or category.',
    ),
    LogicalFallacy(
      id: "9",
      title: "Post Hoc (False Cause)",
      text:
          "Assuming that because one event followed another, the first event caused the second.",
      essay:
          'The "post hoc" fallacy, also known as the "post hoc, ergo propter hoc" '
          'fallacy, occurs when someone assumes that because one event precedes'
          ' another, the first event must have caused the second. In other words, '
          'it attributes causation based solely on the temporal sequence of events. '
          'However, correlation in time does not necessarily imply causation. The '
          'fallacy overlooks other possible explanations and assumes a cause-and-effect'
          ' relationship without sufficient evidence. While it is reasonable to '
          'consider the temporal sequence as a factor in establishing causation, '
          'a post hoc fallacy arises when this temporal relationship is the sole '
          'basis for the conclusion, without accounting for other relevant factors '
          'or evidence. Critical thinking requires a careful examination of'
          ' causation and consideration of alternative explanations.',
    ),
    LogicalFallacy(
      id: "10",
      title: "Red Herring",
      text:
          "Introducing irrelevant information to divert attention from the main issue.",
      essay: 'The "red herring" fallacy occurs when an argument introduces'
          ' irrelevant or distracting information to divert attention away '
          'from the main issue or point of contention. Essentially, a red'
          ' herring is a misleading or unrelated topic that is presented '
          'to steer the conversation away from the original subject. This'
          ' tactic is used to confuse or mislead the audience by introducing '
          'a side issue that may be emotionally charged or compelling but '
          'is ultimately inconsequential to the central argument. By doing '
          'so, the person employing the red herring fallacy attempts to'
          'sidetrack the discussion and avoid addressing the main issue '
          'at hand. Identifying and disregarding red herrings is crucial '
          'in maintaining focus on the core elements of a debate or discussion.',
    ),
    LogicalFallacy(
      id: "11",
      title: "Appeal to Tradition",
      text:
          "Arguing that something is right or good because it's been done that way for a long time.",
      essay: 'The "appeal to tradition" fallacy occurs when an argument asserts'
          ' that a claim or practice is true, correct, or superior solely'
          ' because it is a longstanding tradition. The fallacy relies on'
          ' the assumption that something is valuable or valid simply '
          'because it has been done a certain way for a long time. However,'
          ' the age or tradition of a belief or practice does not necessarily '
          'guarantee its correctness or relevance. This fallacious reasoning '
          'dismisses the need for critical evaluation or adaptation in light '
          'of new information or changing circumstances. It is important to '
          'assess the merits of an idea or practice on its own, considering'
          ' evidence and reasoning, rather than relying on its historical '
          'longevity as a basis for its validity.',
    ),
    LogicalFallacy(
      id: "12",
      title: "Appeal to Popularity (Bandwagon)",
      text:
          "Arguing that something is true or good because it's popular or widely accepted.",
      essay:
          'The "appeal to popularity" fallacy, also known as the "argumentum ad populum," '
              'occurs when an argument is presented as valid or true solely because a large'
              ' number of people believe it or accept it. The fallacy assumes that if something'
              ' is popular or widely accepted, it must be correct or true, neglecting '
              'the need for substantive evidence or sound reasoning. However, the popularity'
              ' of a belief does not necessarily correlate with its accuracy or validity.'
              ' Many widely accepted ideas throughout history have been later proven false. '
              'Critical thinking requires evaluating claims based on evidence and reasoning'
              ' rather than simply relying on the popularity of a belief within a given'
              ' population.',
    ),
    LogicalFallacy(
      id: "13",
      title: "Begging the Question",
      text: "Assuming the truth of the conclusion in one of the premises.",
      essay:
          'The "begging the question" fallacy occurs when an argument assumes '
              'the conclusion it is trying to prove, often by restating the'
              ' same idea in different words. In essence, the reasoning of '
              'the argument is circular, as it uses its own conclusion as a '
              'premise. This fallacy provides no real evidence or support '
              'for the claim but instead relies on the assumption that the '
              'conclusion is true from the outset. It creates an illusion of '
              'validity without addressing the actual issue at hand. '
              'To construct a sound argument, it is essential to provide '
              'evidence and reasoning that leads to a conclusion rather'
              ' than assuming the conclusion is true from the start.',
    ),
    LogicalFallacy(
      id: "14",
      title: "Appeal to Emotion",
      text: "Using emotional manipulation to win an argument.",
      essay: 'The "appeal to emotion" fallacy occurs when an argument relies on manipulating emotions, such as fear, pity, or joy, rather than presenting sound reasoning or evidence. This fallacious tactic aims to evoke strong emotional responses from the audience to distract them from the actual merits of the argument. While emotions can be a legitimate aspect of persuasion, relying solely on emotional appeal without substantive evidence or logical reasoning is a logical fallacy. A convincing argument should incorporate a balance of emotional appeal and rational discourse, addressing both the emotional and logical aspects of an issue to make a more compelling case.',
    ),
    LogicalFallacy(
      id: "15",
      title: "No True Scotsman",
      text:
          "Refusing to accept a counterexample to a universal claim by redefining the terms.",
      essay: 'The "No True Scotsman" fallacy is a type of ad hoc argument where someone attempts to protect a generalization or stereotype from counterexamples by modifying the definition in an arbitrary and self-serving way. The fallacy unfolds when a person makes a general claim, such as "All Scotsmen are honest," and when confronted with a counterexample, responds by excluding that example with a statement like, "Well, no true Scotsman would be dishonest." This modification of the original claim serves to shield it from being disproven, but it does so by shifting the goalposts and rendering the argument unfalsifiable. It\'s important to recognize this fallacy when engaging in discussions, as it can prevent meaningful dialogue and hinder a fair assessment of the original claim.',
    ),
    LogicalFallacy(
      id: "16",
      title: "Genetic Fallacy",
      text: "Judging the worth or validity of an argument based on its origin.",
      essay: 'The "Genetic Fallacy" is a logical error that occurs when the origin or history of an idea, belief, or argument is used to either support or reject its validity. Instead of evaluating the current merits of the claim, this fallacy focuses on its source. For example, dismissing a scientific theory because it originated from a particular individual or group with a controversial history would be committing the Genetic Fallacy. The fallacy assumes that the past of an idea determines its present worth, neglecting the need to assess the argument based on its current evidence and reasoning. It is important to separate the origins of an idea from its current validity to engage in fair and objective evaluation.',
    ),
    LogicalFallacy(
      id: "17",
      title: "Equivocation",
      text: "Using a term in different senses in an argument.",
      essay: 'The "equivocation" fallacy occurs when a key term or phrase in an argument is used with different meanings in different parts of the argument, leading to a misleading or ambiguous conclusion. This fallacy relies on the shifting meanings of words to create a false impression of consistency or coherence in the argument. For example, stating that "a fast car is a good car, and this car is fast, therefore it is a good car" is equivocal if "fast" is used to describe speed in one instance and reliability in another. To avoid equivocation, it is crucial to maintain consistency in the use of terms throughout an argument, ensuring that each instance refers to the same meaning to support a valid and coherent conclusion.',
    ),
    LogicalFallacy(
      id: "18",
      title: "Appeal to Nature",
      text: "Arguing that because something is natural, it is good or right.",
      essay: 'The "appeal to nature" fallacy occurs when an argument posits that something is good or desirable solely because it is natural or, conversely, that something is bad because it is unnatural. This fallacy assumes that whatever is natural is inherently better, healthier, or morally superior, disregarding the complexities of the issue at hand. The fallacy arises from an oversimplified and often romanticized view of nature, ignoring the fact that not everything natural is beneficial, and not everything unnatural is harmful. Evaluating the merits of an argument should involve a careful consideration of evidence, reason, and context rather than relying on the simplistic appeal to the naturalness or unnaturalness of something.',
    ),
    LogicalFallacy(
      id: "19",
      title: "Appeal to Fear",
      text: "Using fear to sway people's opinions.",
      essay: 'The "appeal to fear" fallacy occurs when an argument is built on instilling fear in the audience rather than providing sound reasoning or evidence. This tactic seeks to manipulate emotions, typically by portraying a frightening scenario, in order to persuade people to accept a particular conclusion or take a specific course of action. By playing on people\'s anxieties, this fallacy can divert attention from the actual merits of the argument and coerce individuals into making decisions based on emotional reactions rather than rational thought. To critically assess an argument, it\'s important to distinguish between legitimate concerns supported by evidence and the manipulative use of fear to sway opinions.',
    ),
    LogicalFallacy(
      id: "20",
      title: "Composition Fallacy",
      text: "Assuming that what is true of the parts is true of the whole.",
      essay: 'The "composition fallacy" occurs when someone wrongly assumes that what is true for the parts must also be true for the whole. In other words, it involves making an unwarranted inference about a group or a whole based on the characteristics or properties of its individual parts. This fallacy overlooks the potential complexities and interactions within the whole system, assuming that properties observed in the parts can be directly generalized to the entire entity. For example, asserting that because each part of a car is lightweight, the entire car must be lightweight commits the composition fallacy. To avoid this error, one should carefully consider the relationships and interactions within the whole system, recognizing that properties of individual components may not necessarily extend to the entirety.',
    ),
    LogicalFallacy(
      id: "21",
      title: "Division Fallacy",
      text: "Assuming that what is true of the whole is true of the parts.",
      essay: 'The "division fallacy" is the counterpart to the composition fallacy, occurring when one incorrectly assumes that what is true for the whole must also be true for its individual parts. This fallacy involves making an unwarranted inference about the characteristics or properties of individual components based on the characteristics of the entire group or system. For instance, assuming that because a sports team is highly successful, each player on the team must be exceptional commits the division fallacy. Just as in the composition fallacy, the error lies in oversimplifying and generalizing without considering the potential variations and complexities that exist within the individual elements of the whole. It\'s important to recognize that properties of the entire entity may not uniformly apply to each of its parts.',
    ),
    LogicalFallacy(
      id: "22",
      title: "False Analogy",
      text:
          "Drawing a comparison between two things that are not really alike.",
      essay: 'The "false analogy" fallacy occurs when an argument relies on an analogy that is too dissimilar to the situation it is meant to illustrate. While analogies can be useful for clarifying complex ideas, a false analogy misleads by suggesting that because two things are alike in certain respects, they are alike in others as well. This fallacy ignores the relevant differences between the two situations, leading to faulty reasoning and potentially inaccurate conclusions. It is important to ensure that analogies accurately reflect the similarities and differences between the two scenarios being compared to avoid the pitfalls of the false analogy fallacy.',
    ),
    LogicalFallacy(
      id: "23",
      title: "Texas Sharpshooter Fallacy",
      text: "Cherry-picking data clusters to suit an argument.",
      essay: 'The "Texas Sharpshooter Fallacy" occurs when someone cherry-picks specific data or events that seem to confirm a pattern and then draws conclusions based on that selective information. The fallacy is named after a hypothetical scenario where a shooter fires a volley of shots at a barn and then draws a target around the tightest cluster of bullet holes, creating the illusion of precision and skill. Similarly, in arguments, this fallacy arises when someone focuses only on data that supports their preconceived idea or hypothesis while ignoring broader patterns or random variations. It disregards the importance of considering all relevant information and can lead to misguided conclusions due to the selective nature of the presented evidence. Critical thinking requires a comprehensive examination of the data to avoid falling victim to the Texas Sharpshooter Fallacy.',
    ),
    LogicalFallacy(
      id: "24",
      title: "Appeal to Pity",
      text:
          "Trying to win support for an argument by exploiting feelings of pity or guilt.",
      essay: 'The "appeal to pity" fallacy occurs when an argument relies on evoking pity or sympathy from the audience rather than providing sound reasoning or evidence. This fallacy attempts to persuade by appealing to emotions rather than engaging in a rational discourse. While emotions can play a legitimate role in certain discussions, relying solely on pity as a means of persuasion can divert attention from the actual merits of the argument. It is important to critically assess claims based on evidence and reason, ensuring that emotional appeals do not substitute for substantive and logical support.',
    ),
    LogicalFallacy(
      id: "25",
      title: "Fallacy of Sunk Costs",
      text:
          "Continuing a behavior or endeavor as a result of previously invested resources.",
      essay: 'The "fallacy of sunk costs" occurs when individuals factor in the time, money, or resources they have already invested in a situation as a primary consideration for making decisions about that situation\'s future, even when those past investments should have no bearing on the decision. Essentially, people let their past investments influence their current choices, often leading to irrational decision-making. This fallacy overlooks the principle that rational decisions should be based on the prospective costs and benefits rather than past investments that cannot be recovered. It is important to assess situations objectively, focusing on the current circumstances and potential future outcomes rather than being unduly influenced by past investments that are irrelevant to the decision at hand.',
    ),
    LogicalFallacy(
      id: "26",
      title: "Anecdotal Fallacy",
      text:
          "Using personal anecdotes as evidence rather than strong, empirical evidence.",
      essay: 'The "anecdotal fallacy" occurs when an argument relies on personal anecdotes or isolated examples instead of presenting a comprehensive and statistically significant body of evidence. This fallacy arises when someone draws conclusions about a general pattern, trend, or claim based on individual, often emotionally charged, cases. While anecdotes can provide valuable insights, they are inherently limited in representing broader realities. Relying solely on anecdotes can lead to biased or inaccurate conclusions, as individual experiences may not be representative of the overall picture. A robust argument should be supported by a more extensive and diverse range of evidence to avoid the pitfalls of the anecdotal fallacy and ensure a more accurate and objective assessment of the issue at hand.',
    ),
    LogicalFallacy(
      id: "27",
      title: "Middle Ground Fallacy",
      text:
          "Asserting that a compromise between two positions must be correct.",
      essay: 'The "middle ground fallacy," also known as the "false compromise" or "argument to moderation," occurs when it is assumed that the middle point between two extreme positions must be the most reasonable or correct stance. This fallacy suggests that a compromise between two opposing views is inherently valid, regardless of the merits or evidence supporting each position. However, the middle ground may not necessarily represent the truth or the best solution, as the correctness of an idea should be evaluated on its own merits rather than its position relative to other extremes. The middle ground fallacy can stifle critical thinking by discouraging a thorough examination of the evidence and nuances surrounding a particular issue. It is essential to assess arguments based on their individual strengths and weaknesses rather than automatically favoring a compromise between opposing views.',
    ),
    LogicalFallacy(
      id: "28",
      title: "Loaded Question",
      text: "Asking a question that contains an assumption.",
      essay: 'The "loaded question" fallacy occurs when a question is posed in a way that assumes a particular answer or incorporates an unwarranted assumption. These questions are designed to lead the respondent to a specific response or to expose a presumed truth. Loaded questions can be manipulative, as they often carry hidden premises or biases that can trap the person answering. For example, asking, "Have you stopped cheating on exams?" assumes the person being asked has engaged in cheating without providing any evidence. Recognizing loaded questions is important in fair and constructive communication, as they can undermine objectivity and lead to misleading conclusions. It is crucial to scrutinize the assumptions embedded in a question and respond thoughtfully to avoid falling into the trap of the loaded question fallacy.',
    ),
    LogicalFallacy(
      id: "29",
      title: "Appeal to Consequences",
      text:
          "Arguing that a statement must be true or false based on its consequences.",
      essay: 'The "appeal to consequences" fallacy occurs when an argument asserts that a claim must be true or false based on the positive or negative consequences that would result if the claim were true or false. In other words, the argument suggests that because a particular outcome would be desirable or undesirable, the associated claim must be valid or invalid. However, the truth of a statement is not determined by its consequences. This fallacy neglects to evaluate the evidence or reasoning supporting the claim itself and instead relies on the perceived desirability or undesirability of the consequences. Critical thinking requires an examination of the evidence and logical coherence of a claim, independent of the outcomes it might lead to.',
    ),
    LogicalFallacy(
      id: "30",
      title: "Fallacy Fallacy",
      text:
          "Assuming that because an argument contains a fallacy, its conclusion must be false.",
      essay: 'The "Fallacy Fallacy" is a meta-fallacy that occurs when someone concludes that a particular claim or argument is false simply because it contains a logical fallacy. While recognizing and pointing out fallacies is an essential aspect of critical thinking, dismissing an entire argument solely based on the presence of a fallacy can be problematic. The Fallacy Fallacy overlooks the possibility that the conclusion of the argument might still be true or that there could be other sound reasons supporting the claim. It is important to address and correct fallacious reasoning, but one should not automatically reject the overall conclusion without considering the merits of the argument as a whole.',
    ),
  ]; // List of logical fallacies

  // Getter for the list of logical fallacies
  List<LogicalFallacy> get fallacies => _fallacies;

  // Add a new logical fallacy to the list
  void addFallacy(LogicalFallacy newFallacy) {
    _fallacies.add(newFallacy);
    notifyListeners();
  }
}
