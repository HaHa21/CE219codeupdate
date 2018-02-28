 % include('header.tpl', title='Bookstore')

 <body>
 % include('dropdown.tpl')
 <p class = "text-center">Hello! Today is {{ mydate }}</p>
 <form >
	<div class="col-sm-4 col-sm-offset-4 centered">
	 <div class = "form-group">
	   <label for =  "Book Id">Book Id</label>
	   <input type = "text"  class = "form-control" placeholder = "Book Id">
	 </div>
	 <div class = "form-group"> 
	   <label for = "Book title">Book title</label>
	   <input type = "text"  class = "form-control" placeholder = "Book title">
	 </div>

	 <div class = "form-group">
	   <label for = "Book author">Book author</label>
	   <input type = "text"  class = "form-control" placeholder = "Book author">
	   
	 </div>

	  <div class = "form-group">
	   <label for = "Publisher">Publisher</label>
	   <input type = "text"  class = "form-control" placeholder = "Publisher">
	   
	 </div>

	 <div class = "form-group">
	   <label for =  "genre">Genre</label>
	   <input type = "text"  class = "form-control" placeholder = "Genre">
	   
	 </div>

	  <div class = "form-group">
	   <label for = "Year">Year</label>
	   <input type = "text"  class = "form-control" placeholder = "year">
	   
	 </div>

	   <div class = "form-group">
	     <button type="button" class="btn btn-success">Submit</button>
		 <button type="button" class="btn btn-danger">Reset</button>
	   </div>
	   
	 </div>
	  </div>
	</form>
 </form>
 </body>
 </html>