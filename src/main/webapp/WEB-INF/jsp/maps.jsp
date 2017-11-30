<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/common/header.jsp" />

<style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #mapPage {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
    </style>

<script>
	
</script>


<div class="jumbotron"
	style="background-image: url('img/homepage/homepage.jpg')">
	<section class="homePage container-fluid">
		<h2 id="title-text-homepage" class="center">
			<style>
@import url('https://fonts.googleapis.com/css?family=Work+Sans');
</style>
			Local Brews
		</h2>
		<div class="row">
			<div class="brewery col-sm-12 col-md-12">
				<div class="iframe-container">
					<div id="mapPage" class="img-rounded"></div>
				</div>
			</div>
		</div>
	</section>
</div>

<script
	src="https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/markerclusterer.js">
</script>
<script async defer
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBQJt8sM0_cDCBf16mHs46XUmxHJg22JHY&callback=initMap"></script>
<c:import url="/WEB-INF/jsp/common/footer.jsp" />