# Example:
# query = "{ post(id: 1){  title, rating } }"
# GraphqlSchema.execute(q)
# -> {"data"=>{"post"=>{"title"=>"first post", "rating"=>1}}}

# q = '{ post(id: 1){  title, rating, comments { body } } }'   
# -> {"data"=>{"post"=>{"title"=>"first post", "rating"=>1, "comments"=>[{"body"=>"coucou"}]}}}
GraphqlSchema = GraphQL::Schema.define do
  query(Types::QueryType)
end
