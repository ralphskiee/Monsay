
<?php  $username=$this->session->userdata('login_session');
if(! $username ){
redirect('login_controller/login_view');
}?>
<br/>
<div class="container-fluid allfont">
	<div class="row">
		<div class="col-lg-1">
		</div>
		<div class="col-lg-10">
				<div class="container">
					<h1 class="sectionfont">Sections</h1>
					<script type="text/javascript">
							$(document).ready(function(){

								$('#addmodalbtn').click(function(){  
							           $('#addform')[0].reset();  
							           $('.modal-title').text("Add Section");  
							           $('#sectionhid').val("Add");   
							      });    

							      var dataTable = $('#sectiontable').dataTable({  
							           "processing":true,  
							           "serverSide":true,
							           "scrollY": '500px',  
							           "order":[],  
							           "ajax":{  
							                url:"<?php echo base_url() . 'section_controller/fetch_user'; ?>",  
							                type:"POST"  
							           },  
							           "columnDefs":[  
							                {  
							                     "targets":[4],  
							                     "orderable":false,  
							                },  
							           ],  
							      });

							      $(document).on('click', '#action', function(event){  
							           event.preventDefault();
							           var sectid = $('#sectionidname').val();  
							           var sectname = $('#sectionname').val();  
							           var sectlevel = $('#sectionlevel').val();
							           var schedid = $('#scheduleid').val();
							           var secthid = $('#sectionhid').val();
							           var hiddenid = $('#hiddenid').val();  
							           
							           if(sectid != '' && sectname != '' && sectlevel != '' && schedid != '')  
							           {  
							                $.ajax({  
							                	type:"POST",
							                     url:"<?php echo base_url() . 'section_controller/sectionaction'; ?>",  
							                     data:{
							                     	id:sectid,
							                     	name:sectname,
							                     	lvl:sectlevel,
							                     	sceid:schedid,
							                     	hidden:secthid,
							                     	hidid:hiddenid
							                     }, 
							                     success:function(data)  
							                     {  
							                          alert(data);  
							                          $('#sectionmodal').modal('hide');  
							                          $('#sectiontable').DataTable().ajax.reload();  
							                     }  
							                });  
							           }  
							           else  
							           {  
							                alert("All Fields are Required"); 
							           }  
							      });

							      $(document).on('click','.edit', function(){  
							           var sid = $(this).attr("id");  
							           $.ajax({  
							                url:"<?php echo base_url() . 'section_controller/fetch_single_user'; ?>",  
							                method:"POST",  
							                data:{sid:sid},  
							                dataType:"json",  
							                success:function(data)  
							                {  	
							                	 $('#addform')[0].reset();
							                	 $('.modal-title').text("Edit Section"); 
							                     $('#sectionmodal').modal('show');  
							                     $('#sectionidname').val(data.sectionidname);
							                     $('#sectionname').val(data.sectionname);
							                     $('#sectionlevel').val(data.sectionlevel);
							                     $('#scheduleid').val(data.scheduleid); 
							                     $('#sectionhid').val("Edit");
							                     $('#hiddenid').val(sid); 
							                }  
							           });  
							      });  

							      $(document).on('click', '.delete', function(){  
							           var sid = $(this).attr("id");  
							           if(confirm("Are you sure you want to delete this?"))  
							           {  
							                $.ajax({  
							                     url:"<?php echo base_url(); ?>section_controller/deletesection",  
							                     method:"POST",  
							                     data:{sid:sid},  
							                     success:function(data)  
							                     {  
							                          alert(data);  
							                          $('#sectiontable').DataTable().ajax.reload();  
							                     }  
							                });  
							           }  
							           else  
							           {  
							                return false;       
							           }  
							      });        
							 });
						</script>
					<br>
					<div>
						<button id="addmodalbtn" class="btn addsubbtn" data-toggle="modal" data-target="#sectionmodal">Add Section</button>
					</div>
					<br>

					<table id="sectiontable" class="table table-striped">
						<thead class="thead-inverse">
							<tr>
								<th>Section ID</th>
								<th>Section Name</th>
								<th>Level</th>
								<th>Schedule ID</th>
								<th>Action</th>
							</tr>
						</thead>
					</table>
					<br>

				</div>

			<!--start of Section Modal -->
			<div class="container-fluid">
				<div class="modal fade" id="sectionmodal" tabindex="-1" role="dialog" aria-labelledby="addsectionmodal" aria-hidden="true">
				  	<div class="modal-dialog modal-lg" role="document">
				   		
				  		<form method="post" id="addform">
				   		<div class="modal-content">
							<div class="modal-header">
				        		<h1 class="modal-title" id="addsectionmodal"><b></b></h1>
				      			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
				         			<span aria-hidden="true">&times;</span>
				        		</button>
				      		</div>	

				      		<div class="modal-body">
									<div class="row form-group">
										<div class="col-md">
											<label for="sectionidname" class="col-form-label formmodalfont">Section ID</label>
											<input id="sectionidname" name="sectionidname" type="text" class="form-control" placeholder="section ID">
										</div>
										<div class="col-md">
											<label for="sectionname" class="col-form-label formmodalfont">Section Name</label>
											<input id="sectionname" name="sectionname" type="text" class="form-control" placeholder="section Name">
										</div>
										<div class="col-md">
											<label for="sectionlevel" class="col-form-label formmodalfont">Level</label>
											<select id="sectionlevel" name="sectionlevel" class="form-control">
											    <option value="Kinder">Kinder</option>
											    <option value="Preparatory">Preparatory</option>
											    <option value="Grade 1">Grade 1</option>
											    <option value="Grade 2">Grade 2</option>
											    <option value="Grade 3">Grade 3</option>
											    <option value="Grade 4">Grade 4</option>
											    <option value="Grade 5">Grade 5</option>
											    <option value="Grade 6">Grade 6</option>
											    <option value="Grade 7">Grade 7</option>
											    <option value="Grade 8">Grade 8</option>
											    <option value="Grade 9">Grade 9</option>
											    <option value="Grade 10">Grade 10</option>
											    <option value="Grade 11">Grade 11</option>
											    <option value="Grade 12">Grade 12</option>
										    </select>
										</div>
										<div class="col-md">
											<label for="scheduleid" class="col-form-label formmodalfont">Schedule ID</label>
											<input id="scheduleid" name="scheduleid" type="text" class="form-control" placeholder="Schedule ID">
											<input type="hidden" name="sectionhid" id="sectionhid" value="">
											<input type="hidden" name="hiddenid" id="hiddenid">
										</div>
									</div> 
					  		</div>

							<div class="modal-footer">
								<input type="submit" name="action" id="action" class="btn addsubbtn2" value="Proceed">
							</div>
							</form>
							</div>
						</div>
					</div>
				</div>
		</div>
		<div class="col-lg-1">
		</div>
	</div>
</div>
<br/>