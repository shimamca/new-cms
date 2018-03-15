<?php 
$required = "<font color='#FF0000' size='1'>*</font>";
$id = $_REQUEST['id'];
$res = $newsObj->getNewsById($id); 
$total = $res['NO_OF_ITEMS'];
$title = outText($res['oDATA'][0]['title']);
$category = outText($res['oDATA'][0]['category']);

?>
<div class="well">
  <div class="col-sm-8">Update Article &amp; Events</div>
  <div class="col-sm-4"><a href="<?=$_curpage?>">&laquo; Back</a></div>
</div>
<div class="container">
  <div id="validation_div" class="validation_error" align="center"></div>
  <form name="frm" action="NewsEventsAction.php" method="post" onsubmit="return news_valid(this)" enctype="multipart/form-data" class="form-inline">
    <input type="hidden" name="act" value="updatenews" />
    <input type="hidden" name="id" value="<?=$res['oDATA'][0]['id'];?>" />
    <div id="validation_div" class="validation_error" align="center"></div>
    <table width="100%" border="0" cellspacing="0" cellpadding="3" align="center">
      
      <tr>
        <td align="left"><label>Publish Date </label>
          <?=$required?> <br />
        <input type="text" id="publish_date" name="publish_date" readonly="true" value="<?=outText($res['oDATA'][0]['publish_date']);?>" class="btn btn-default btn-sm"/>
          <a href="javascript:NewCssCal('publish_date','ddmmyyyy','dropdown',true,'12')"><img src="images/cal.gif" width="16" height="16" alt="Pick a date"></a> 
		  
		  
		  </td>
      </tr>
    </table>
     <!--  Category  -->
    <div class="p5">
      <label>Category</label>
      <div class="pt5">
        <select name="category">
        <option value="">Select</option>
         <option value="Events"  <?php if($category == "Events"){ echo 'selected="selected"';}?>>Events</option>
          <option value="Article"  <?php if($category == "Article"){ echo 'selected="selected"';}?>>Article</option>
        </select>
        
        </div>
    </div>
    <!-- FILE UPLAOD -->
    <div id="file" class="p5">
      <label>Upload file</label>
      <div class="pt5">
        <input type="file" name="file_name" onchange="javascript:return validNewsFile(this.value)" value=""/>
        <span style="color:#990000; font-style:italic;">(Only Image allowed)</span> <a href="../documents/<?=outText($res['oDATA'][0]['file_name'])?>" target="_blank">view</a></div>
    </div>
	
	<div>
      <label>Title <?=$required?></label>
      <div class="p5">
        <textarea name="title" id="title" style="width:670px;height: 40px;"><?=$title?></textarea> 
      </div>
    </div>
	<!-- DESCRIPTION -->
    <div id="desc" class="p5">
      
      <label>Description</label>
      <?php
		include_once("includes/fckeditor/fckeditor.php") ;
		echo "\n";
		$cntdesc = outText($res['oDATA'][0]['description']);
		$ctrl_name = 'description';
		$sBasePath = 'includes/fckeditor/';
		$oFCKeditor = new FCKeditor($ctrl_name);
		$oFCKeditor->Height = "400px";
		$oFCKeditor->Width = "100%";
		$oFCKeditor->BasePath = $sBasePath;
		$oFCKeditor->Value =$cntdesc;
		$oFCKeditor->Create();
	 ?>
    </div>
	
    <div align="center" class="p5">
      <input type="submit" name="submit" value="Update" class="button" /> <br>
	 
	  
    </div>    
  </form>
</div>
