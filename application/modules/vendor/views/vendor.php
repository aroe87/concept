
<section class="content-header">
    <h1><small>Master Vendor</small></h1>
    <ol class="breadcrumb">
</section></br>
<section class="content">
    <div id="toolbar">
        <button id="add" class="btn btn-success">
            <i class="glyphicon glyphicon-add"></i> Add
        </button>
    </div>
    <table id="table"
           data-toolbar="#toolbar"
           data-toggle="table"
           data-search="true"
           data-show-refresh="true"
           data-show-toggle="true"
           data-show-columns="true"
           data-show-export="true"
           data-minimum-count-columns="2"
           data-show-pagination-switch="true"
           data-pagination="true"
           data-page-list="[10, 25, 50, 100, ALL]"
           data-show-footer="false"
           data-export-data-type="all"
           data-export-types="['excel']"
           data-height="600"
           data-url="<?php echo base_url(); ?>vendor/getData">
        <thead>
            <tr>
                <th data-field="id">ID</th>
                <th data-field="vendor_id">Vendor ID</th>
                <th data-field="vendor">Name</th>
				<th data-field="address1">Address</th>
				<th data-field="cp">Contact Person</th>
				<th data-field="phone">Phone</th>
            </tr>
        </thead>
    </table>
	<div class="modal"><!-- Place at bottom of page --></div>
</section>
<script>
    var $table = $('#table');
    var $add = $('#add');
    $table.on('click-row.bs.table', function (row, $element) {
	window.open("<?php echo base_url(); ?>vendor/form/id/"+$element.id,'_parent');
    });
    $add.on('click',function(){
	window.open("<?php echo base_url(); ?>vendor/form",'_parent');
    });
</script>
