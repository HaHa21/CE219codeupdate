% include('./header.tpl', title='Bookstore')

<body>
  <h1>Publishers Web Store</h1>
  <ul>
  %for publisher in publisher:
  <li>

    <a href="/publishers/{{publisher.id}}/">{{publisher.publishername}}</a>
    <a href="/publishers/{{publisher.id}}/edit">[Edit]</a>
    <a href="/publishers/{{publisher.id}}/delete">[Delete]</a>
  </li>
  %end
  </ul>

  <a href="/publishers/new">Add a Publisher</a>
</body>
</html>
