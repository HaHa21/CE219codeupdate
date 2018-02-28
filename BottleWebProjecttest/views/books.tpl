 % include('header.tpl', title='Bookstore')

 <body>
 % include('dropdown.tpl')
 <p class = "text-center">Hello! Today is {{ mydate }}</p>
 <form action = "/books/create" method = "POST">
	<div class="col-sm-4 col-sm-offset-4 centered">
	 <div class = "form-group">
	   <label for =  "Book Id">Book Id</label>
	   <input type = "text"  class = "form-control" placeholder = "Book Id" value = " ">
	 </div>
	 <div class = "form-group"> 
	   <label for = "Book title">Book title</label>
	   <input type = "text"  name = "Title" class = "form-control" placeholder = "Book title" value = " ">
	 </div>

	 <div class = "form-group">
	   <label for = "Book author">Book author</label>
	   <input type = "text" name = "Authors" class = "form-control" placeholder = "Book author" value = " ">
	   
	 </div>

	  <div class = "form-group">
	   <label for = "Publisher">Publisher</label>
	   <input type = "text"  name = "Publishers" class = "form-control" placeholder = "Publisher" value = " ">
	   
	 </div>

	 <div class = "form-group">
	   <label for =  "genre">Genre</label>
	   <input type = "text"  name = "Genres" class = "form-control" placeholder = "Genre" value = " ">
	   
	 </div>

	  <div class = "form-group">
	   <label for = "Year">Year</label>
	   <input type = "text" name = "Year" class = "form-control" placeholder = "year" value = " ">
	   
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