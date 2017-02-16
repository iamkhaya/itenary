##### RoR Workflow
1. Create the controller
      ```ruby
      rails generate controller categories
      ```

2. Add resources to `config/route.rb`
      ```ruby
      resources :category
      ```

3. Define the new method in your controller
```ruby
def new
end
```

4. Create a matching template for the new action and use the form helper for the fields you want.
      ```ruby
      app/views/articles/new.html.erb
      ```

5. Add a create method in your controller
```ruby
def create
  @category = Category.new(category_params)
  @category.save
  redirect_to action: 'index'
end
```

6. Create the model
      ```ruby
      rails generate model Category name:string description:text
      ```

7. Create the index and show method in the controller with the corresponding view
      ```ruby
      def index
          @categories = Category.paginate(page: params[:page], per_page: 2).order('id Desc').all
      end

      def show
        @category = Category.find(params[:id])
      end
      ```

8. Create the edit & update method in the controller and the corresponding   template in the view
    ```ruby
    def create
      @category = Category.new(category_params)
      @category.save
      redirect_to action: 'index'
    end
    ```

9. Add delete links by adding a destroy method and
  ```ruby
  <%= link_to category_path(category), method: :delete, data: { confirm: 'Are you sure?' }, :class =>"btn btn-primary btn-xs" do  %>
  ```

9. Add links with
    ```ruby
    <%= link_to('categories', controller: '/categories#show') do %>
    ```

    Done ...You basic crud is done
