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