% include('./header.tpl', title='Bookstore')

 <body>
 % include('./dropdown.tpl')
<p class = "text-center">Hello! Today is {{ mydate }}</p>
 <form action = "/books/{{book.id}}/update" method = "POST">
	<div class="col-sm-4 col-sm-offset-4 centered">
	 <div class = "form-group">
	   <label for =  "Book Id">Book Id</label>
	   <input type = "text"  class = "form-control"  placeholder = "Book Id">
	 </div>
	 <div class = "form-group"> 
	   <label for = "Book title">Book title</label>
	   <input type = "text"  name = "Title" class = "form-control" value = {{book.title}} placeholder = "Book title">
	 </div>

	 <div class = "form-group">
	   <label for = "Book author">Book author</label>
	   <input type = "text" name = "Author" class = "form-control" value = {{book.authors}} placeholder = "Book author">
	   
	 </div>

	  <div class = "form-group">
	   <label for = "Publisher">Publisher</label>
	   <input type = "text"  name = "Publisher" class = "form-control" value = {{book.publishers}} placeholder = "Publisher">
	   
	 </div>

	 <div class = "form-group">
	   <label for =  "genre">Genre</label>
	   <input type = "text"  name = "Genre" class = "form-control" value = {{book.genres}} placeholder = "Genre">
	   
	 </div>

	  <div class = "form-group">
	   <label for = "Year">Year</label>
	   <input type = "text" name = "Year" class = "form-control" value = {{book.year}} placeholder = "year">
	   
	 </div>

	   <div class = "form-group">
	     <input type="submit" class="btn btn-success" value="Save" />
		 <input type="reset" class="btn btn-danger" value="Reset" />
	   </div>
	   
	 </div>
	  </div>
	</form>
 </form>
 </body>
 </html>
