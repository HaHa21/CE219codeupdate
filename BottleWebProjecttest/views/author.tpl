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
	   <label for = "Book author">Firstname</label>
	   <input type = "text"  class = "form-control" placeholder = "First name">
	   
	 </div>

	  <div class = "form-group">
	   <label for = "Publisher">Publisher</label>
	   <input type = "text"  class = "form-control" placeholder = "Last name">
	   
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