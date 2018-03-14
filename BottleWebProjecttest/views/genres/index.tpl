% include('./header.tpl', title='Bookstore')

<body>
  <h1>Genre Web Store</h1>
  <ul>
  %for genre in genre:
  <li>

    <a href="/genres/{{genre.id}}/">{{genre.name}}</a>
    <a href="/genres/{{genre.id}}/edit">[Edit]</a>
    <a href="/genres/{{genre.id}}/delete">[Delete]</a>
  </li>
  %end
  </ul>

  <a href="/genres/new">Add a Genre</a>
</body>
</html>
