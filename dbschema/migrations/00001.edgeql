CREATE MIGRATION m1ulxtmwp3ocjbbp7wpizxknzotlgxqswmlawwkc36bjg7v4el75sq
    ONTO initial
{
  CREATE TYPE default::User {
      CREATE REQUIRED PROPERTY email -> std::str;
      CREATE REQUIRED PROPERTY social_num -> std::int32;
      CREATE CONSTRAINT std::exclusive ON ((.email, .social_num));
      CREATE PROPERTY misc -> std::json;
  };
};
