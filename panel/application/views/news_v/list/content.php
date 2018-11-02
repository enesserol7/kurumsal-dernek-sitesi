<div class="row">
    <div class="col-md-12">
        <h4 class="m-b-lg">
        	Haber Listesi
            <?php if (isAllowedWriteModule()) { ?>
        	   <a href="<?php echo base_url("news/new_form"); ?>" class="pull-right btn btn-outline btn-primary btn-sm"><i class="fa fa-plus"></i>Yeni Ekle</a>
            <?php } ?>
        </h4>
    </div><!-- END column -->
    <div class="col-md-12">
        <div class="widget p-lg">
        	<?php if (empty($items)) { ?>
        		<div class="alert alert-info text-center">
					<h5 class="alert-title">Kayıt Bulunamadı</h5>
					<p>Burada herhangi bir veri bulunmamaktadır. Ekleme için lütfen <a href="<?php echo base_url("news/new_form"); ?>">tıklayınız...</a></p>
				</div>
        	<?php }else { ?>
            <table class="table table-hover table-striped table-bordered content-container">

                <thead>
                    <th class="order"><i class="fa fa-reorder"></i></th>
                    <th class="w50">#id</th>
                    <th>Başlık</th>
                    <th>url</th>
                    <!--<th>Açıklama</th>-->
                    <th>Haber Türü</th>
                    <th>Görsel</th>
                    <th>Durumu</th>
                    <th>İşlem</th>
                </thead>
                <tbody class="sortable" data-url="<?php echo base_url("news/rankSetter"); ?>">
                	<?php foreach ($items as $item) { ?>
                		<tr id="ord-<?php echo $item->id; ?>">
                            <td class="order"><i class="fa fa-reorder"></i></td>
                        	<td class="w50 text-center">#<?php echo $item->id; ?></td>
                        	<td><?php echo $item->title; ?></td>
                            <td><?php echo $item->url; ?></td>
                        	<!--<td><?php echo $item->description; ?></td>-->
                            <td class="text-center"><?php echo $item->news_type; ?></td>
                            <td class="text-center w300">
                                <?php if ($item->news_type == "image") { ?>
                                    <img width="75" src="<?php echo get_picture($viewFolder, $item->img_url, "750x450"); ?>" alt="" class="img img-responsive">
                                <?php }else if($item->news_type == "video") { ?>
                                    <iframe width="300" src="//www.youtube.com/embed/<?php echo $item->video_url; ?>" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                                <?php } ?>
                            </td>
                        	<td class="text-center w100">
                        		<input
                                    data-url="<?php echo base_url("news/isActiveSetter/$item->id"); ?>" 
                        			class="isActive" 
                        			type="checkbox" 
                        			data-switchery 
                        			data-color="#10c469" 
                        			<?php echo ($item->isActive) ? "checked" : ""; ?> 
                        		/>
                        	</td>
                        	<td class="text-center w200">
                                <?php if (isAllowedDeleteModule()) { ?>
                            	   <button data-url="<?php echo base_url("news/delete/$item->id"); ?>" class="btn btn-sm btn-danger btn-outline remove-btn"><i class="fa fa-trash"></i> Sil</button>
                                <?php } ?>
                                <?php if (isAllowedUpdateModule()) { ?>
                            	   <a href="<?php echo base_url("news/update_form/$item->id"); ?>" class="btn btn-sm btn-info btn-outline"><i class="fa fa-pencil-square-o"></i> Düzenle</a>
                                <?php } ?>
                        	</td>
                    	</tr>
                	<?php } ?>                    
                </tbody>

            </table>
        <?php } ?>
        </div><!-- .widget -->
    </div><!-- END column -->
</div>