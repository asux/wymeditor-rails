WymeditorRails
===============
This project rocks and uses MIT-LICENSE.


Help
====
Installation
------------
Very simple!

* Add this line to Gemfile

```ruby
  gem 'wymeditor-rails'
```

* Add this line to `app/assets/javascripts/application.js

```js
  //= require jquery.wymeditor
```

Using with ActiveAdmin
-----------------------
With asset pipeling support, wymeditor can be easily integrated with active-admin.
After installing, all you need to do is write some javascript like this:

Lets say we have `articles` model whose `content` needs to be edited
* First bind `wymeditor` to textarea where content is present.

```js
  $('#article_content').wymeditor({ basePath: "/assets/" });
```

* Bind a callback to article submit button to reflect the content from editor
  before updating the article

```js
  $('#edit_article').submit(function() {
    $('#article_content').html($.wymeditors(0).xhtml());
    return true;
  });
```
