class User
  include Arkenstone::Document
  include Arkenstone::Timestamps
  include Arkenstone::Queryable

  url 'http://example.com/users/'
  attributes :name, :age, :gender, :bearded
  client_only_attributes :awesome
end
