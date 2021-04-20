# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [ ] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes)
- [ ] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
- [ ] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
- [ ] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
- [ ] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
- [ ] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
- [ ] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
- [ ] Include signup (how e.g. Devise)
- [ ] Include login (how e.g. Devise)
- [ ] Include logout (how e.g. Devise)
- [ ] Include third party signup/login (how e.g. Devise/OmniAuth)
- [ ] Include nested resource show or index (URL e.g. users/2/recipes)
- [ ] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
- [ ] Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [ ] Views use partials if appropriate


# Requirements for Project Completion

- [X] Use the Ruby on Rails Framework

## Models
> - [ ] Include at least one `has_many`, at least one `belongs_to`, and at least two `has_many :through` relationships
>   - TODO: Description on how this is completed HERE
> - [ ] Include a many-to-many relationship implemented with `has_many :through` associations. 
    The join table must include a user-submittable attribute — that is to say, some attribute other than its foreign keys that can be submitted by the app's user
    
- [ ] All models have validations that ensure malformed data cannot be saved.
- [ ] Include an active record scope method. (.where & .order) for example.

## Authentication
- [ ] Has signup, login, logout actions
- [ ] Can sign up/in with only an email and password
- [ ] Can sign up with an Omniauth Strategy - (Facebook, Google, Etc.)


## Nested Resources
- [ ] Must have a nested `new` route ~ via retailers adding new products
- [ ] Must include a nested index or show route. (show all retailers products or specific product)

## Forms
- [ ] Must correctly display validation errors
  - [ ] Use the `field_with_errors` class on form fields
  - [ ] Error messages descriving the validation must be present within the view
    
## DRY ( DO NOT REPEAT YOURSELF )
- [ ] Logic present in the controllers should be encapsulated as methods within models
- [ ] Views should use helpers methods and partials whenever appropriate
- [ ] Follow [Rails Style Guide](https://github.com/rubocop/rails-style-guide) and the [Ruby Style Guide](https://github.com/rubocop/ruby-style-guide)