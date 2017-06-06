Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :post do
    type Types::PostType
    argument :id, !types.ID
    description "Find a Post by ID"
    resolve ->(obj, args, ctx) { Post.find(args["id"]) }
  end
  
  field :comment do
    type Types::CommentType
    argument :id, !types.ID
    description "Find a Comment by ID"
    resolve ->(obj, args, ctx) do
      Comment.find(args["id"])
    end
  end
end
