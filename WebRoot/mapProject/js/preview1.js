$(document).ready(function(){
	var settings = {
		'viewportWidth' : '100%',
		'viewportHeight' : '100%',
		'fitToViewportShortSide' : true,  
		'contentSizeOver100' : false,
		'startScale' : .3,
		'startX' : 2100,
		'startY' : 3490,
		'animTime' : 500,
		'draggInertia' : 10,
		'imgDir' : 'hubbleImgSrc/',
		'mainImgWidth' : 8889,
		'mainImgHeight' : 5000,
		'intNavEnable' : true,
		'intNavPos' : 'B',
		'intNavAutoHide' : false,
		'intNavMoveDownBtt' : true,
		'intNavMoveUpBtt' : true,
		'intNavMoveRightBtt' : true,
		'intNavMoveLeftBtt' : true,
		'intNavZoomBtt' : true,
		'intNavUnzoomBtt' : true,
		'intNavFitToViewportBtt' : true,
		'intNavFullSizeBtt' : true,
		'mapEnable' : true,
		'mapPos' : 'BL',
		'popupShowAction' : 'click',
		'testMode' : false
	};
	
	$('#myDiv').lhpGigaImgViewer(settings, 'MyHotspots');
	
	$("#myDiv").resizable({
		resize: function(event, ui) {
			$('#resizeIco').hide();
			$(this).lhpGigaImgViewer('adaptsToContainer');
		}
	});
});