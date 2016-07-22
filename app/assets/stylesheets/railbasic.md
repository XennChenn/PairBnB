to create model & migration at the same time 

```
$rails g model listing name:string price:integer ...
$rails g controller listings new create edit update destroy index show

$rails g migration create_listings
```

config/routes.rb resources :listings, only: [:show, :index, ....]
<= render 'form' %> #form has to be partial html erb file
app/views/layout/application.html.erb

```
<div id="flash">
    <% flash.each do |key, value| %>
    <div class="flash <%= key %>"><%= value %></div>
    <% end %>
</div>
```