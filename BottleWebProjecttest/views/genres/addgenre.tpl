% include('./header.tpl', title='Bookstore')

<body>
 % include('./dropdown.tpl')
 <p class = "text-center">Hello! Today is {{ mydate }}</p>
 <form action = "/genres/create" method = "POST" >
	<div class="col-sm-4 col-sm-offset-4 centered">
	 <div class = "form-group">
	   <label for =  "Book Id">Book Id</label>
	   <input type = "text"  class = "form-control" placeholder = "Book Id">
	 </div>
	
	 <div class = "form-group">
	   <label for = "name">Genre Name</label>
	   <input type = "text"  class = "form-control" name = "name" placeholder = "Genre Name">
	   
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
