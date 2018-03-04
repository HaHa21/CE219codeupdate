 % include('./header.tpl', title='Bookstore')

 <body>
 % include('./dropdown.tpl')
 <p class = "text-center">Hello! Today is {{ mydate }}</p>
 <form action = "/books/create" method = "POST">
	<div class="col-sm-4 col-sm-offset-4 centered">
	 <div class = "form-group">
	   <label>title</label>
	   <input type = "text" name = "title" />
	  
	 </div>
	 <div class = "form-group"> 
	   <label>year: </label>
	   <input type = "text" name = "year" />

	 </div>

	 <div class = "form-group">
	   <label for = "author">Book author</label>
	   <select name="author">
	   %for a in authors:
	     <option value = "{{a.id}}"> {{a.first_name}} {{a.last_name}} </option>
	   %end
	   </select>
	   
	 </div>

	  <div class = "form-group">
	   <label for = "Publisher">Book Publisher</label>
	   <select name="publisher">
	     %for p in publishers:
		   <option value="{{p.id}}">{{p.name}}</option>
		 %end
	   </select>
	   
	 </div>

	 <div class = "form-group">
	   <label for =  "genre">Genre</label>
	   <select name="genre">
	     %for g in genres:
		  <option value="{{g.id}}">{{g.name}}</option>
	     %end
		</select>
	 </div>

	  <div class = "form-group">
	   <label for = "Year">Year</label>
	   <input type = "text" name = "year" class = "form-control" placeholder = "year" value = " ">
	   
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