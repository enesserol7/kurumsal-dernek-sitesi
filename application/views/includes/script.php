<script src="<?php echo base_url("assets/"); ?>js/jquery.min.js"></script>
<script src="<?php echo base_url("assets/"); ?>js/bootstrap.min.js"></script>
<script src="<?php echo base_url("assets/"); ?>js/SmoothScroll.min.js"></script>
<!-- js for team section -->
<script src="<?php echo base_url("assets/"); ?>js/index.js"></script>
<!-- /js for team section -->
<!-- js for banner -->
<script type="text/javascript" src="<?php echo base_url("assets/"); ?>js/zslider-1.0.1.js"></script>
<script type="text/javascript">
		var slider = $('.slider').zslider({
			imagePanels: $('.slider-panel'),
			ctrlItems: $('.slider-item'),
			ctrlItemHoverCls: 'slider-item-selected',
			//panelHoverShowFlipBtn: false,
			flipBtn: {
				container: $('.slider-page'),
				preBtn: $('.slider-pre'), 
				nextBtn: $('.slider-next')
			},
			callbacks: {
				animate: function(imagePanels, ctrlItems, fromIndex, toIndex) {
					return true;
				}
			}
		});
</script>