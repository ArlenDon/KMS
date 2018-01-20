$(function(){
	$('#system').addClass('active');
	initDeptTreeview();
	initUserTable();
	initDeptAddFormValidator();
	initDeptEditFormValidator();
});

function initDeptTreeview(){
/*	var json = [{
		text:"中船重工第七一七研究所",		
		nodes:[
		       {
		    	   text:"所领导"
		       },
			{
		    	   text:"行政办公室"
			},
			{
				text:"党委政治工作办公室"
			},
			{
				text:"综合计划处"   
			},
			{
				text:"行政办公室"
			},
			{
				text:"战略发展部",
				nodes:[
				       {
				    	   text:"市场一处"
				       },
				       {
				    	   text:"市场二处"
				       },
				       {
				    	   text:"市场三处"
				       }
				       ]
			},
			{
				text:"装备保障部"
			},
			{
				text:"财务部"
			},
			{
				text:"质量与技术部",
				nodes:[
				       {
				    	   text:"质技部（部办）"
				       },
				       {
				    	   text:"质技部（质量处）"
				       },
				       {
				    	   text:"质技部（计量检测中心）"
				       },
				       {
				    	   text:"质技部（检验科）"
				       }
				       ]
			}
		]
	}];
	
	$('#treeview').treeview({
        color: "#428bca",
        expandIcon: 'glyphicon glyphicon-chevron-right',
        collapseIcon: 'glyphicon glyphicon-chevron-down',
        data: json,
        onNodeSelected: function (event, node) {
        	
        }
      });
	$('#treeview').treeview('selectNode', [ 0, { silent: true } ]);*/
	
	 $.ajax({
         type: "Post",
         url: "../user/searchDepartment",
         data:{deptState:1},
         dataType: "json",
         success: function (jsonData) {
        	 var jsonDataTree = transData(jsonData, 'nodeId', 'nodeParentId', 'nodes');  
        	 initDeptTree(jsonDataTree);
        	 addContextMenu(jsonData);
         },
         error: function () {
        	 toastr.error("AJAX请求服务器资源失败"); 
         }
     });
}
var selectedNodeId = 0;
function initDeptTree(jsonDataTree) {
	$('#treeview').treeview({
        data: jsonDataTree,         // 数据源
        color: "#428bca",
        expandIcon: 'glyphicon glyphicon-chevron-right',
        collapseIcon: 'glyphicon glyphicon-chevron-down',                 
        onNodeSelected: function (event, data) {
        	selectedNodeId = data.nodeId;
//        	$('#treeview').treeview('selectNode', [ data.nodeId, { silent: true } ]);
//            alert(data.nodeId);
        },
        onNodeUnselected: function (event, data){
        	
        }
    });
	$('#treeview').treeview('selectNode', [ selectedNodeId, { silent: true } ]);
	
}

function addContextMenu(jsonData) {
	var menu = new BootstrapMenu('#treeview .node-treeview', {
		  /* a function to know which row was the context menu opened on,
		   * given the selected DOM element. When this function is defined,
		   * every user-defined action callback receives its return value as
		   * an argument. */
		  fetchElementData: function($rowElem) {
/*		    var rowId = $rowElem.data('deptId');    
		    return jsonData[rowId];*/
		    return $('#treeview').treeview('getSelected')[0];
		  },
		  actions: [{
		    name: '添加部门',
//		    iconClass: 'glyphicon glyphicon-plus',
		    onClick: function(row) {		    	
		    	$('#deptAddModal').modal('show');
		    }
		  }, 
		  {
		    name: '编辑部门',
//		    iconClass: 'glyphicon glyphicon-pencil',
		    onClick: function(row) {
		    	$('#deptEditModal').modal('show');
		    }
		  }, 
		  {
		    name: '删除部门',
//			    iconClass: 'glyphicon glyphicon-pencil',
		    onClick: function(row) {
		      toastr.info("'Edit description' clicked on '" + row.name + "'");
		    },
	        /*isEnabled*/isShown: function(row) {
	        	if (row.nodes == null) {
	        		return true;
	        	}
	        	else {
	        		return false;
	        	}
	        }
		 }, 
		 {
		    name: '部门排序',
//				    iconClass: 'glyphicon glyphicon-pencil',
		    onClick: function(row) {
		      toastr.info("'Edit description' clicked on '" + row.name + "'");
		    }
		  }, 
		  {
		    name: '添加用户',
//				    iconClass: 'glyphicon glyphicon-pencil',
		    onClick: function(row) {
		      toastr.info("'Edit description' clicked on '" + row.name + "'");
		    }
		  }
		  ]
		});
}

function initUserTable() {
	$('#usersTable').bootstrapTable({  
		/*url: 'data1.json',  */
		
		toolbar: '#toolbar', 
		striped: true,
		cache: false,
		pagination: true,
		sortable: true,                     
	    sortOrder: "asc",
	    sortName : 'id',
	    sidePagination: "client",
		pageNumber:1,
		pageSize: 10,
		pageList: [10, 25, 50, 100],
		search: true,
		strictSearch: true,
		showRefresh: true,
		showColumns: true,
		minimumCountColumns: 2,
		clickToSelect: true,
		
		locale:'zh-CN',
		
	    columns: [{
            checkbox: true
        },{  
	        field: 'id',  
	        title: 'Item ID'  
	    }, {  
	        field: 'name',  
	        title: 'Item Name'  
	    }, {  
	        field: 'price',  
	        title: 'Item Price'  
	    }],
	    
	    data: [{  
	        id: 1,  
	        name: 'Item 1',  
	        price: '$1'  
	    }, {  
	        id: 2,  
	        name: 'Item 2',  
	        price: '$2'  
	    }, {  
	        id: 3,  
	        name: 'Item 2',  
	        price: '$2'  
	    }, {  
	        id: 4,  
	        name: 'Item 2',  
	        price: '$2'  
	    }, {  
	        id: 5,  
	        name: 'Item 2',  
	        price: '$2'  
	    }, {  
	        id: 6,  
	        name: 'Item 2',  
	        price: '$2'  
	    }, {  
	        id: 7,  
	        name: 'Item 2',  
	        price: '$2'  
	    }, {  
	        id: 8,  
	        name: 'Item 2',  
	        price: '$2'  
	    }, {  
	        id: 9,  
	        name: 'Item 2',  
	        price: '$2'  
	    }, {  
	        id: 10,  
	        name: 'Item 2',  
	        price: '$2'  
	    }, {  
	        id: 11,  
	        name: 'Item 2',  
	        price: '$2'  
	    }, {  
	        id: 12,  
	        name: 'Item 2',  
	        price: '$2'  
	    }
	    ]  
	});
}

function initDeptAddFormValidator() {
	$('#deptAddForm').bootstrapValidator({	
		message:'This value is not valid',
		feedbackIcons:{
			valid:'glyphicon glyphicon-ok',
			invalid:'glyphicon glyphicon-remove',
			validating: 'glyphicon glyphicon-refresh'
		},
		excluded: ':disabled', 
		fields:{
			deptAddName:{
				message:'部门名称验证失败',
				validators:{
					notEmpty:{
						message:'部门名称不能为空'
					}
				}
			}
		}
	}).on('success.form.bv', function(e) {
        // Prevent form submission
        e.preventDefault();

        $.ajax({
        	url:"../user/addDepartment",
        	async:false,
        	type:"POST",
        	data:{deptName:$("#deptAddName").val(),parentId:$('#treeview').treeview('getSelected')[0].deptId},
        	dataType: "text",
            success: function (result) {
            	if (result == "1") {
            		toastr.info("上级部门已被删除");
            		$('#deptAddModal').modal('hide');
            		initDeptTreeview();
            	}
            	else if (result == "2") {
            		toastr.info("部门名称重复");
            	}
            	else if (result == "3") {
            		toastr.success("部门添加成功");
            		$('#deptAddModal').modal('hide');
            		initDeptTreeview();
            		
            	}
            	else {
            		toastr.error("部门添加失败");
            	}
            },
            error: function () {
            	toastr.error("AJAX请求服务器资源失败");             
            }
        	
        });
    });
}

$('#validateDeptAddBtn').click(function() {
    $('#deptAddForm').bootstrapValidator('validate');
});

$('#deptAddModal').on('show.bs.modal', function() {
	$('#deptAddForm').data('bootstrapValidator').resetForm(true);
});


function initDeptEditFormValidator() {
	$('#deptEditForm').bootstrapValidator({	
		message:'This value is not valid',
		feedbackIcons:{
			valid:'glyphicon glyphicon-ok',
			invalid:'glyphicon glyphicon-remove',
			validating: 'glyphicon glyphicon-refresh'
		},
		excluded: ':disabled', 
		fields:{
			deptEditName:{
				message:'部门名称验证失败',
				validators:{
					notEmpty:{
						message:'部门名称不能为空'
					}
				}
			}
		}
	}).on('success.form.bv', function(e) {
        // Prevent form submission
        e.preventDefault();
        var obj = $('#treeview').treeview('getSelected')[0];
        var name = $("#deptEditName").val().trim();
        if (obj.deptName == name) {
        	toastr.info("部门名称未作修改");
        	return;
        }
        $.ajax({
        	url:"../user/editDepartment",
        	async:false,
        	type:"POST",
        	data:{deptId:obj.deptId,deptName:name,parentId:obj.nodeParentId,deptLevel:obj.deptLevel},
        	dataType: "text",
            success: function (result) {
            	if (result == "1") {
            		toastr.info("上级部门已被删除");
            		$('#deptEditModal').modal('hide');
            		initDeptTreeview();
            	}
            	else if (result == "2") {
            		toastr.info("部门名称重复");
            	}
            	else if (result == "3") {
            		toastr.success("部门编辑成功");
            		$('#deptEditModal').modal('hide');
            		initDeptTreeview();
            		
            	}
            	else {
            		toastr.error("部门编辑失败");
            	}
            },
            error: function () {
            	toastr.error("AJAX请求服务器资源失败");             
            }
        	
        });
    });
}

$('#validateDeptEditBtn').click(function() {
    $('#deptEditForm').bootstrapValidator('validate');
});

$('#deptEditModal').on('show.bs.modal', function() {
	$('#deptEditForm').data('bootstrapValidator').resetForm(true);
	$("#deptEditName").val($('#treeview').treeview('getSelected')[0].deptName);
});