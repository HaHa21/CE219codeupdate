% include('./header.tpl', title='Bookstore')

<body>
  <h1>Book Web Store</h1>
  <ul>
  %for book in books:
  <li>

    <a href="/books/{{book.id}}/">{{book.title}}</a>
    <a href="/books/{{book.id}}/edit">[Edit]</a>
    <a href="/books/{{book.id}}/delete">[Delete]</a>
  </li>
  %end
  </ul>

  <a href="/books/new">Add a Book</a>
</body>
</html>
