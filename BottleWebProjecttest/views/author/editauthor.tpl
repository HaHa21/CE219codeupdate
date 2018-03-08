% include('./header.tpl', title='Bookstore')

 <body>
 % include('./dropdown.tpl')
<p class = "text-center">Hello! Today is {{ mydate }}</p>
 <form action = "/authors/{{author.id}}/update" method = "POST">
 <div class="col-sm-4 col-sm-offset-4 centered">
	 <div class = "form-group">
	   <label for =  "Book Id">Book Id</label>
	   <input type = "text"  class = "form-control" placeholder = "Book Id">
	 </div>
	
	 <div class = "form-group">
	   <label for = "Book author">Firstname</label>
	   <input type = "text"  class = "form-control" name = "firstname" placeholder = "First name">
	   
	 </div>

	  <div class = "form-group">
	   <label for = "Lastname">Lastname</label>
	   <input type = "text"  class = "form-control" name = "lastname" placeholder = "Last name">
	   
	 </div>

	 

	   <div class = "form-group">
	      <input type="submit" class="btn btn-success" value="Save" />
		 <input type="reset" class="btn btn-danger" value="Reset" />
	   </div>
	   
	 </div>
	  </div>
	</form>
 </form>