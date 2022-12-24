import 'package:flutter/material.dart';

import 'package:gerador_de_cv/resume/resume.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gerador de CV'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Nome'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Endereço'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Telefone'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Resumo profissional'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Experiência profissional'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Educação'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Habilidades'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Prêmios e realizações'),
            ),
            RaisedButton(
              child: Text('Gerar CV'),
              onPressed: () {
                // Generate the resume
                final resume = generateResume(
                  'John Smith',
                  '123 Main Street',
                  '555-555-5555',
                  'john@example.com',
                  'I am a highly skilled software developer with over 10 years of experience in the industry. I have a strong track record of delivering high-quality software on time and on budget, and I am always looking for ways to improve my skills and stay up-to-date with the latest technologies.',
                  '- Software Developer, ABC Company (2015-present)
                    - Led the development of several successful software projects, including a project that increased revenue by 20%
                    - Mentored junior developers and provided technical leadership for the team
                    - Implemented best practices for code review and testing to ensure high-quality code
                  - Software Developer, XYZ Company (2010-2015)
                    - Developed and maintained several software applications for clients in various industries
                    - Worked closely with clients to understand their needs and deliver solutions that met their expectations',
                  '- Bachelor of Science in Computer Science, University of California, Berkeley (2010)
                    - Graduated with honors
                    - Coursework included data structures, algorithms, software engineering, and computer systems',
                  '- Proficient in Java, C++, and Python
                    - Experience with a variety of web development frameworks such as Django and Ruby on Rails
                    - Skilled in database design and management using MySQL and PostgreSQL
                    - Strong understanding of software design patterns and best practices',
                  '- Awarded "Employee of the Year" in 2020
                    - Won the "Best Software Project" award in 2019
                    - Received a patent for a software development tool in 2018'
                );
                // Display the resume
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: SingleChildScrollView(
                      child: Text(resume),
                    ),
                    actions: [
                      FlatButton(
                        child: Text('Fechar'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}