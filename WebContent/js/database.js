$(function(){
	$('#system').addClass('active');
	$('#menu_secret').addClass('active');
});

function leftMenuClick(event, dataType, menuName) {
	$('#leftMenu .list-group-item').removeClass('active');
	$('#leftMenuName').html(menuName);
	var menu = event.target;
	$(menu).addClass('active');
}

function initDatabaseTable(dataType) {
	$('#databaseTable').bootstrapTable({		
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
	    columns: [
	    {  
	        field: 'id',  
	        title: 'Item ID'  
	    }, {  
	        field: 'name',  
	        title: 'Item Name'  
	    }, {  
	        field: 'price',  
	        title: 'Item Price'  
	    }]
	});
}