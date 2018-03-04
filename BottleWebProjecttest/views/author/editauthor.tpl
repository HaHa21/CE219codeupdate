% include('./header.tpl', title='Bookstore')

 <body>
 % include('./dropdown.tpl')
<p class = "text-center">Hello! Today is {{ mydate }}</p>
 <form action = "/authors/{{author.id}}/update" method = "POST">
