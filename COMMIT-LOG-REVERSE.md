[Initializing Rails application \[83d0b1b\]](https://github.com/jeremyf/hydra-camp-devise-testing/commit/83d0b1bd12c42d50f49b27b32a9592aab41f18f5)

    NOTE: I am explicitly saying to not include test-unit. More on that in a
    bit.

    The following commands were run:
    $ rails new hydra-camp-devise-testing --skip-test-unit
    $ cd hydra-camp-devise-testing
    $ git init
    $ git add .


[Adding Gemfile.lock via bundle \[841cbee\]](https://github.com/jeremyf/hydra-camp-devise-testing/commit/841cbee672a2424fcf55ca5f5f65f36c3ddbcfc7)

    From http://bundler.io/

    Bundler maintains a consistent environment for ruby applications. It tracks
    an application's code and the rubygems it needs to run, so that an
    application will always have the exact gems (and versions) that it needs to
    run.

    aIf you were working on a gem, instead of an application, you would not 
    check-in your Gemfile.lock.

    The following commands were run:
    $ bundle
    $ git add Gemfile.lock


[Adding rspec-rails as a :test group dependency \[10cc60e\]](https://github.com/jeremyf/hydra-camp-devise-testing/commit/10cc60e38653fd87fc744e1f1260436df7b6a9a9)

    Project Hydra traditionally makes use of the Rspec testing framework.

    From http://rspec.info/ RSpec is testing tool for the Ruby programming
    language. Born under the banner of Behaviour-Driven Development, it is
    designed to make Test-Driven Development a productive and enjoyable
    experience with features like:

    * a rich command line program (the rspec command)
    * textual descriptions of examples and groups (rspec-core)
    * flexible and customizable reporting
    * extensible expectation language (rspec-expectations)
    * built-in mocking/stubbing framework (rspec-mocks)

    By declaring rspec-rails in the :test group, the gem is only available when
    the application is running in test.


[Bundling up rspec-rails and its dependencies. \[a8eeff2\]](https://github.com/jeremyf/hydra-camp-devise-testing/commit/a8eeff298ed250a131e6ed013c1b792505cec569)

    The following commands were run:
    $ bundle


[Initializing rspec for our application \[d312079\]](https://github.com/jeremyf/hydra-camp-devise-testing/commit/d312079a40d41e495efef8a06bb2886eac085e3c)

    The following commands were run:
    $ rails generate rspec:install


[Setting test framework generator to rspec \[8c9a2fd\]](https://github.com/jeremyf/hydra-camp-devise-testing/commit/8c9a2fde0f12d10506ed6c2f0dbc7b6a634597f0)

    By default Rails provides numerous generators. Other gems can also provide
    generators. Run `rails generate` or its synonym `rails g` to see a list of
    all the generators.

    Most generators will generate "production" code and "test" code. By setting
    our test framework to :rspec, the generators will – if they are written
    "properly" – create rspec files for us.

    http://guides.rubyonrails.org/generators.html#customizing-your-workflow


[Adding Devise 3.1.x to Gemfile \[3a6edea\]](https://github.com/jeremyf/hydra-camp-devise-testing/commit/3a6edea9bf638a1ff40b9f54fd7b8a1e304c2ed0)

    The `gem "devise", "~> 3.1.0"` declaration indicates that I only want to use
    versions of Devise that are in the 3.1.x family. I believe Devise is using
    to [semantic versioning](http://semver.org/)

    Devise is a "Flexible authentication solution for Rails with Warden." 
    https://github.com/plataformatec/devise

    Warden is a "General Rack Authentication Framework" 
    https://github.com/hassox/warden

    Rack is "a modular Ruby webserver interface" https://github.com/rack/rack 
    http://rack.github.io/


[Bundling up Devise and its dependencies. \[5578a15\]](https://github.com/jeremyf/hydra-camp-devise-testing/commit/5578a155d62d9d1518189ae7fe8cbdbfaa6415b1)

    Among other things, Devise added the following dependencies to our project.
       devise (3.1.0)
         bcrypt-ruby (~> 3.0)
         orm_adapter (~> 0.1)
         railties (>= 3.2.6, < 5)
         thread_safe (~> 0.1)
         warden (~> 1.2.3)

    The following commands were run:
    $ bundle


[Installing devise via generator \[53a16cc\]](https://github.com/jeremyf/hydra-camp-devise-testing/commit/53a16cc11e99b576195d78fdfbc69d94f8b165c4)

    As per https://github.com/plataformatec/devise#getting-started

    The following commands were run:
    $ rails generate devise:install


[Managing devise authentication via User model \[d275122\]](https://github.com/jeremyf/hydra-camp-devise-testing/commit/d275122e13a2c2930926fe34830091163883f226)

    It is convention that the User model be the model that persists passwords
    and negotiates authentication.

    As per https://github.com/plataformatec/devise#getting-started

    The following commands were run:
    $ rails generate devise User


[Running migrations for Devise's User \[3d5434e\]](https://github.com/jeremyf/hydra-camp-devise-testing/commit/3d5434e9f9444c70f47d6c2f71b53afe7dc8152d)

    More about migrations at http://guides.rubyonrails.org/migrations.html By
    running `rake db:migrate` we are applying Devise changes and additions to
    our *development* database.

    The following commands were run:
    $ rake db:migrate


[Adding user creation spec \[452e210\]](https://github.com/jeremyf/hydra-camp-devise-testing/commit/452e2108360b7accc70f0ccafc71d6c9a46aea63)

    A simple test against what Devise provides in the User model. While this is
    a somewhat contrived test, you should always test your application's
    interaction with underlying gems.


[Adding capybara to test arsenal \[7ed9643\]](https://github.com/jeremyf/hydra-camp-devise-testing/commit/7ed964371cd7d1020fd90856f040d59db31e007a)

    From https://github.com/jnicklas/capybara Capybara helps you test web
    applications by simulating how a real user would interact with your app. It
    is agnostic about the driver running your tests and comes with Rack::Test
    and Selenium support built in. WebKit is supported through an external gem.


[Bundling up capybara and its dependencies. \[8e20e93\]](https://github.com/jeremyf/hydra-camp-devise-testing/commit/8e20e93fc7733099044cdf68959fb302331fd8dc)

    Capybara adds the following dependencies. You'll likely want to remember
    nokogiri.
       capybara (2.1.0)
         mime-types (>= 1.16)
         nokogiri (>= 1.3.3)
         rack (>= 1.0.0)
         rack-test (>= 0.5.4)
         xpath (~> 2.0)

    From http://nokogiri.org Nokogiri (鋸) is an HTML, XML, SAX, and Reader
    parser. Among Nokogiri’s many features is the ability to search documents
    via XPath or CSS3 selectors.

    XML is like violence - if it doesn’t solve your problems, you are not using
    enough of it.

    The following commands were run:
    $ bundle


[Adding capybara to the spec_helper \[2055131\]](https://github.com/jeremyf/hydra-camp-devise-testing/commit/20551319a252a06014b1addb8cf6b6811b1a9317)

    https://github.com/jnicklas/capybara#using-capybara-with-rspec


[Adding the first thoughts on user signup \[3331d9d\]](https://github.com/jeremyf/hydra-camp-devise-testing/commit/3331d9d9ae5e11045507f9d729412bd1a5ce76ce)

    The describe do, it do is the foundational structure of rspec.
    "Describe" provides the context in which we are running our specs.
    "It" is the context for an expectation/assertion.


[Adding first spec step for viewing singup page \[245477b\]](https://github.com/jeremyf/hydra-camp-devise-testing/commit/245477b69940985035e475d15f667131f6000825)

    By using `rake routes` I was able to inspect what the existing routes were
    for my Rails application. It looks like '/users/sign_in' is the path to the
    Devise signup page.

    Once the change was made, I ran `rspec` and an 
    ActiveRecord::StatementInvalid exception was raised (see below).

    Rspec said that it could not find the 'users' table. This is because our
    *test* database has not been created. When `rake db:migrate` is run, only
    the *development* database was modified.

    So I ran `rake db:test:prepare` and then ran `rspec`.

    The following failure occurred when I ran `rspec`:

        Failures:

          1) user signup attempting to login without an account
            Failure/Error: visit('/users/sign_in')
            ActiveRecord::StatementInvalid:
              Could not find table 'users'

        Finished in 0.04759 seconds
       2 examples, 1 failure, 1 pending

        Failed examples:

        rspec ./spec/features/user_signup_spec.rb:4 # user signup…


[Adding second spec step for user sign up \[9e9436a\]](https://github.com/jeremyf/hydra-camp-devise-testing/commit/9e9436af37a92676eb331b5a468fcc750e6f2018)

    Filling out the sign in form, I needed to see what the page looked like, in
    particular what the DOM elements were.

    So I fired up the `rails server` (`rails s` is the synonym) and visited
    http://localhost:3000/users/sign_in. With my developer tools
    (Firebug or Developer Tools) I inspected the DOM and found the
    `form.edit_user` CSS selector to be reasonable.

    More information about targeting elements via Capybara:

    https://github.com/jnicklas/capybara#scoping


[Adding final step for validation \[318a9ea\]](https://github.com/jeremyf/hydra-camp-devise-testing/commit/318a9ea1baa2d3765b75e01c3a02c2da22e3fc0b)

    From https://github.com/plataformatec/devise#configuring-controllers

        Remember that Devise uses flash messages to let users know if sign
       in was successful or failed. Devise expects your application to
       call "flash[:notice]" and "flash[:alert]" as appropriate.

    I was expecting my application to implement some sort of FlashHash 
    rendering. For more on Rails' FlashHash, see the following: 
    http://guides.rubyonrails.org/action_controller_overview.html#the-flash

    Out of the box it does not. So I updated the application layout to include a
    naive implementation of the flash handler. It was copied directly from the
    Ruby on Rails Action Controller Overview Guide page.

    But how did I know the warning message should be "Invalid email or 
    password." My original expectation was:

    `page.should have_content('Missing')`

    Once I added the FlashHash handling, the error message changed from:

        Capybara::ExpectationNotMet:
         expected to find css "div" with text "Missing." but there were
         no matches. Also found "", "Email", "Password", "Remember me",
         "", which matched the selector but not all filters.

    To

        Capybara::ExpectationNotMet:
           expected to find css "div" with text "Missing." but there were
           no matches. Also found "Invalid email or password.", "",
           "Email", "Password", "Remember me", "", which matched the
           selector but not all filters.

    Notice the addition of "Invalid email or password." That is the message I
    was looking for.


[Adding and bundling capybara-selenium driver \[62fd046\]](https://github.com/jeremyf/hydra-camp-devise-testing/commit/62fd046f0a473624a422dcce4c9d5b563983ca18)

    I want to see what is happening in my capybara tests. With 
    capybara-selenium, the feature specs will run in a full browser
    (as opposed to a headless brwoser). Then we can see what our tests are 
    doing. https://github.com/jnicklas/capybara#selecting-the-driver

    The following commands were run:
    $ bundle


[Generating reverse commit log \[1583813\]](https://github.com/jeremyf/hydra-camp-devise-testing/commit/158381346754cabb2b573767f3bbda3c4034c749)

    Updating README to point to the commit log

    Script run:

    $ git log --reverse --pretty="[%s
    \[%h\]](https://github.com/jeremyf/hydra-camp-devise-testing/commit/%H)%n%n%w(80,4,4)%b%n"
    > COMMIT-LOG-REVERSE.md


