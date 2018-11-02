<div role="tabpanel" class="tab-pane fade" id="tab-8">
	<div class="row">
		<div class="form-group col-md-12">
			<label>Meta Keywords (Maks. 255 Karakter)</label>
			<textarea class="form-control" name="site_keyw" cols="30" rows="10"><?php echo isset($form_error) ? set_value("site_keyw") : $item->site_keyw; ?></textarea>
		</div>
		<div class="form-group col-md-12">
			<label>Meta Description (Maks. 255 Karakter)</label>
			<textarea class="form-control" name="site_desc" cols="30" rows="10"><?php echo isset($form_error) ? set_value("site_desc") : $item->site_desc; ?></textarea>
		</div>
	</div>
</div>