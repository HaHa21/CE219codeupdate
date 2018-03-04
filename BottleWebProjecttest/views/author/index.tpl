% include('./header.tpl', title='Bookstore')

<body>
  <h1>Authors page</h1>
  <ul>
  %for author in authors:
  <li>

    <a href="/authors/{{author.id}}/">{{author.firstname}} {{author.lastname}}</a>
    <a href="/authors/{{author.id}}/edit">[Edit]</a>
    <a href="/authors/{{author.id}}/delete">[Delete]</a>
  </li>
  %end
  </ul>

  <a href="/authors/new">Add an author</a>
</body>
</html>