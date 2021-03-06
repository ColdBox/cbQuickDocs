/**
* I handle data related events
*/
component{

	property name="APISearchService" 		inject="id:APISearchService";
	property name="APIDataConvertorService" inject="id:APIDataConvertorService";


	function index(event,rc,prc){
		prc.xehConvertAPI = "cbquickdocs.data.convertAPI";
		prc.APIs = APISearchService.getAvailableAPIs();
		event.setView("data/index");
	}

	function convertAPI(event,rc,prc){

		APIDataConvertorService.convert(rc.apiURL);

		getPlugin("MessageBox").info("#rc.apiURL# has been converted and can now be used");

		setNextEvent('cbquickdocs.data.index');
	}


}
