component extends="lib.fw1.40.one"{
	this.name="stack-demo";
	this.sessionManagement=true;
	this.sessionType="j2ee";
	this.datasource="stackdb";

	//TODO: Fix mappings so these can be moved out of the web root
	//this.mappings = {
		//lib = "/../lib",
		//model = "/../model"
	//};

	this.ormEnabled=true;
	this.ormSettings={
		dbcreate="update",
		dialect="MySQL",
		cfclocation="/model/beans"
	};

	// FW/1 settings
	variables.framework = {
		action = 'action',
		defaultSection = 'main',
		defaultItem = 'default',
		subsystemsFolder: "subsystems",
		siteWideLayoutSubsystem: "common",
		error = 'main.error',
		generateSES = false,
		SESOmitIndex = false,
		diEngine = 'di1',
		diComponent = 'lib.fw1.40.ioc',
		diLocations = 'model, controllers',
		diConfig = { },
		routes = [ ],
		subsystems = {
			module = ''
		}
	};

	function setupApplication() { }

	function setupEnvironment( env ) { }

	function setupSession() { }

	function setupRequest() {
		if(structKeyExists(url, 'reload')){
			setupApplication();
		}
	}

	function setupResponse( rc ) { }

	function setupSubsystem( module ) { }

	function setupView( rc ) { }

}
