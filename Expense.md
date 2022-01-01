dataTable
=========
edit gem file
# datatable
	gem 'jquery-datatables-rails', github: 'rweng/jquery-datatables-rails'

# bootstrap
	gem 'bootstrap-sass', '~> 3.3.5'

bundle install

 Run the install generator:

rails generate jquery:datatables:install bootstrap3

This will add to the corresponding asset files

# app/assets/javascripts/application.js
	//= require dataTables/jquery.dataTables
	//= require dataTables/bootstrap/3/jquery.dataTables.bootstrap

# app/assets/stylesheets/application.css
	*= require dataTables/bootstrap/3/jquery.dataTables.bootstrap

Initialize your datatables using these option:

	$('#datatable').dataTable({
  		// ajax: ...,
  		// autoWidth: false,
  		// pagingType: 'full_numbers',
  		// processing: true,
  		// serverSide: true,

  		// Optional, if you want full pagination controls.
  		// Check dataTables documentation to learn more about available options.
  		// http://datatables.net/reference/option/pagingType
	});

edit index.html

	<table id="transactions" class="table table-striped table-hover">  

edit transactions.coffee

	jQuery ->
        $('#transactions').dataTable({
        pagingType: 'full_numbers', 
        order: [[ 0, "asc" ],[ 1, "asc" ]]
        })

edit transactions.scss

	@import "bootstrap";        

Solve having to refresh dataTable all the time problem
======================================================
Modify application.html.erb from

      <%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track' => true %>
      <%= javascript_include_tag 'application', 'data-turbolinks-track' => true %>

to

      <%= stylesheet_link_tag    'application' %>
      <%= javascript_include_tag 'application' %>

and disable turbolinks in application.js

	//  require turbolinks