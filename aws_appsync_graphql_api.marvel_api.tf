resource "aws_appsync_graphql_api" "marvel_api" {
  authentication_type = "API_KEY"
  name                = var.api_name

  schema = <<EOF
type LoyaltyCard {
    id: ID!
  points: Int!
    user: User!
    partner: Partner!
}

type Mutation {
    register(input: UserInput): User
}

type Partner {
    id: ID!
    name: String!
}

type Query {
    getLoyaltyCard(id: ID!): LoyaltyCard
}

type User {
    id: ID!
    username: String!
    password: String!
    email: String!
}

input UserInput {
    username: String
    password: String
    email: String
}

schema {
    query: Query
    mutation: Mutation
}
EOF

}
