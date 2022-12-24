String generateResume(
  String name,
  String address,
  String phone,
  String email,
  String summary,
  String experience,
  String education,
  String skills,
  String awards,
) {
  final sb = StringBuffer();
  sb.writeln('Nome: $name');
  sb.writeln('Endereço: $address');
  sb.writeln('Telefone: $phone');
  sb.writeln('Email: $email');
  sb.writeln();
  sb.writeln('Resumo profissional:');
  sb.writeln(summary);
  sb.writeln();
  sb.writeln('Experiência profissional:');
  sb.writeln(experience);
  sb.writeln();
  sb.writeln('Educação:');
  sb.writeln(education);
  sb.writeln();
  sb.writeln('Habilidades:');
  sb.writeln(skills);
  sb.writeln();
  sb.writeln('Prêmios e realizações:');
  sb.writeln(awards);
  return sb.toString();