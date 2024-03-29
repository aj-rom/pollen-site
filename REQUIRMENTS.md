# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
  
## Relations
```RUBY
# User
has_many :retailers
has_many :product_reviews
has_many :products, through: :product_reviews

# Retailer
belongs_to :user
has_many :products
has_many :product_reviews, through: :products

# Product
belongs_to :retailer
has_many :product_reviews
has_many :users, through: :product_reviews

# Product Review
belongs_to :product
belongs_to :user
has_one :retailer, through: :product
```
- [X] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes)
- [X] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
- [X] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
- [X] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
- [X] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
- [X] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
- [X] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
- [X] Include signup (how e.g. Devise)
  - completed via third party only
- [X] Include login (how e.g. Devise)
  - completed via third party only
- [X] Include logout (how e.g. Devise)
- [X] Include third party signup/login (how e.g. Devise/OmniAuth)
- [X] Include nested resource show or index (URL e.g. users/2/recipes)
- [X] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
- [X] Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:
- [X] The application is pretty DRY
- [X] Limited logic in controllers
- [X] Views use helper methods if appropriate
- [X] Views use partials if appropriate
- [X] Follow [Rails Style Guide](https://github.com/rubocop/rails-style-guide) and the [Ruby Style Guide](https://github.com/rubocop/ruby-style-guide)
