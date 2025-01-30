import 'package:flutter/material.dart';
import 'package:workers_right/screen/catalog_page.dart';

void main() {
  runApp(const LaborRightsApp());
}

class LaborRightsApp extends StatelessWidget {
  const LaborRightsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Labor Rights',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CatalogPage(),
    );
  }
}

// Expanded Static Data with Detailed Explanations

final Map<String, IconData> categoryIcons = {
  "Fundamental Rights": Icons.gavel,
  "Workplace Rights": Icons.work,
  "Collective Bargaining & Representation": Icons.people,
  "Social Protection & Benefits": Icons.security,
  "Workplace Equality & Inclusion": Icons.accessibility,
};

final Map<String, List<Map<String, String>>> laborRights = {
  "Fundamental Rights": [
    {
      "title": "Freedom of Association",
      "description":
          "Workers have the right to freely form and join trade unions of their choice without interference. This includes the right to collectively bargain with employers to improve working conditions, wages, and benefits. Suppressing this right can lead to labor exploitation and an imbalance of power between workers and employers."
    },
    {
      "title": "Elimination of Forced Labor",
      "description":
          "All forms of forced or compulsory labor must be abolished. This includes slavery, human trafficking, and coercive employment practices where workers are made to work under threat, debt bondage, or intimidation. Forced labor violates human dignity and international labor standards."
    },
    {
      "title": "Abolition of Child Labor",
      "description":
          "Children should not be employed in work that deprives them of their childhood, interferes with their education, or is harmful to their health and development. The worst forms of child labor include forced child labor, child trafficking, and work in hazardous conditions."
    },
    {
      "title": "Elimination of Discrimination",
      "description":
          "No worker should face discrimination based on race, gender, religion, nationality, disability, or any other status. Fair treatment must be ensured in hiring, compensation, promotions, and workplace policies. Discrimination leads to inequality and suppresses economic and social growth."
    },
    {
      "title": "Right to Equal Pay",
      "description":
          "All workers should receive equal pay for equal work, regardless of gender, ethnicity, or nationality. This ensures fairness and prevents wage discrimination in the workplace."
    }
  ],
  "Workplace Rights": [
    {
      "title": "Right to Safe Work",
      "description":
          "Employers must provide a safe and healthy work environment. This includes implementing safety measures, providing protective equipment, and ensuring compliance with health and safety regulations. Unsafe workplaces lead to injuries, diseases, and fatalities that can be prevented through proper precautions."
    },
    {
      "title": "Right to Fair Wage",
      "description":
          "Workers deserve fair compensation that meets their basic needs and supports a decent standard of living. Minimum wage laws, equal pay for equal work, and overtime compensation must be upheld to ensure economic stability and social justice. Unfair wages contribute to poverty and exploitation."
    },
    {
      "title": "Right to Rest and Leisure",
      "description":
          "Employees have the right to reasonable working hours, paid leave, and adequate breaks during their work shifts. Overwork and lack of rest lead to burnout, decreased productivity, and negative health impacts. Governments and employers must enforce proper work-life balance policies."
    },
    {
      "title": "Protection from Unjust Dismissal",
      "description":
          "No worker should be unfairly dismissed from their job without proper justification and due process. Dismissals should only occur for valid reasons such as misconduct or redundancy, with appropriate notice periods and severance pay. Wrongful terminations undermine job security and labor rights."
    },
    {
      "title": "Right to Maternity and Paternity Leave",
      "description":
          "Workers should have access to paid maternity and paternity leave to care for their newborns without fear of job loss. Supporting parental leave fosters work-life balance and child well-being."
    }
  ],
  "Collective Bargaining & Representation": [
    {
      "title": "Right to Collective Bargaining",
      "description":
          "Workers should be able to negotiate terms of employment, working conditions, and benefits collectively. This strengthens worker representation, improves job conditions, and fosters industrial peace. Employers must engage in good faith negotiations with worker representatives."
    },
    {
      "title": "Protection Against Retaliation",
      "description":
          "Workers who report workplace violations, discrimination, or unsafe conditions should be protected from retaliation, including wrongful termination, demotion, or harassment. Whistleblower protections ensure accountability and justice in the workplace."
    },
    {
      "title": "Right to Unionization",
      "description":
          "Workers have the right to form or join labor unions to protect their rights and negotiate better wages and conditions. Employers should not interfere with union activities or discourage workers from organizing."
    }
  ],
  "Social Protection & Benefits": [
    {
      "title": "Right to Social Security",
      "description":
          "Workers have the right to social security benefits such as pensions, disability support, and unemployment benefits. These protections help individuals maintain financial stability in times of economic hardship and old age, ensuring a dignified standard of living."
    },
    {
      "title": "Right to Healthcare",
      "description":
          "Employers and governments should provide access to healthcare services, including workplace medical care, health insurance, and occupational health programs. Healthy workers contribute to economic productivity and overall societal well-being."
    },
    {
      "title": "Right to Unemployment Benefits",
      "description":
          "Workers who lose their jobs due to layoffs or economic downturns should receive unemployment benefits to sustain themselves while seeking new employment opportunities."
    }
  ],
  "Workplace Equality & Inclusion": [
    {
      "title": "Gender Equality in the Workplace",
      "description":
          "Men and women must have equal access to job opportunities, fair pay, and career growth. Gender biases and workplace harassment should be actively eliminated to create an inclusive and diverse workforce."
    },
    {
      "title": "Rights of Disabled Workers",
      "description":
          "Workers with disabilities should have equal opportunities, reasonable workplace accommodations, and protections against discrimination. Inclusive policies benefit both businesses and communities by fostering diverse talent and innovation."
    },
    {
      "title": "LGBTQ+ Workplace Protections",
      "description":
          "LGBTQ+ workers must be protected from workplace discrimination, harassment, and unfair treatment. Employers should foster inclusive policies that respect all employees equally."
    }
  ]
};
