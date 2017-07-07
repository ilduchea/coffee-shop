# README

# Coffee Shop

## Description

#### _**This site is designed for a coffee distributer, allowing them to display their products and have customers submit reviews on individual products**_

#### _**By Tyler Stephenson, July 07, 2017**_

### Setup/Installation Requirements
* clone <link to repo>
* cd <local repo>
* run this series of commands:
  * `$ bundle install`
  * `$ rails db:create`
  * `$ rails db:migrate db:test:prepare`
  * `$ rails db:seed`
  * `$ rails s`
* navigate to localhost:3000 in your prefered web browser.

## Planning

1. Specs
  * Use Bootstrap for base styling.
  * user model.
      * name - string
      * email - string
      * password_hash - string
      * password_salt - string
      * admin - boolean
      * timestamps
  * user validations.
    * presence and uniqueness of email


  * product model.
      * name - string
      * cost - number
      * origin - string
      * description - string
      * timestamps
  * product validations.
    * presence of name
    * presence of cost
    * presence of origin
  * product relationships
    * has many reviews

  * review model.
      * author - string
      * body - string
      * product_id - integer
      * timestamps
  * review validations.
    * presence of author
    * presence of content_body
  * review relationships
    * belongs to product

  * seeding using Faker
    * 50 products
    * 250 reviews

2. User Stories

  * Authentication and Authorization
    * The company has decided their site requires two types of accounts: basic user accounts, and administrator accounts.
    * Basic users must be able to leave reviews on products/services (more info below).
    * Only administrators will have the option to add, edit, or delete products/services, and delete user reviews.

  * Landing Page
    * The site needs a visually-appealing landing page with a welcome message, and basic information about the company.
    * It should include navigation options for users to make their way around the site (including the login page) too.

  * Products/Services Page
    * It also needs an area where users may view all products or services they offer.
    * Admins must have an option to add new products/services.
      * At the very least, each product/service should include a name, description, and price. But you're encouraged to add more properties specific to the product/service your site offers.

  * Detail Page
    * All users should be able to click an individual product's entry to view that particular product or service's detail page.
    * The detail page should include all product/service details, including its image.
    * Authenticated basic users should have an option to leave a comment or review about a product.
    * Administrators should have the option to edit or delete any service or product.
    * Administrators should also have the option to delete inappropriate user reviews or comments.

4. UX/UI
  * Include and modify bootstrap/materialize/Sass etc.
  * Develop custom style

5. Polish
  * Refactor
  * Make README awesome

### Known Bugs
No known bugs at this time.

## Support and Contact details
* Tyler Stephenson
* ilduchea@gmail.com

### Technologies Used

* Ruby
* Rails
* HTML5
* CSS
* Bootstrap
* jQuery

### License

*This is web page is licensed under the MIT License.*

Copyright (c) 2017 **Tyler Stephenson**
