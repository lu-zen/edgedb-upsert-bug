module default {
  type User {
    required property email -> str;
    required property social_num -> int32;
    property misc -> json;

    constraint exclusive on ((.email, .social_num));
  }
}
