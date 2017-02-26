<html>
	<head>
		<title>Basic test build</title>

		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<!-- Latest compiled and minified JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

	</head>
	<body>
		<div class="container">
			<h1>Test Build</h1>
			<cfoutput>
				<ul>
				<cfscript>
					for(i =1; i < 12; i++){
						echo('<li>' & i & '</li>');
					}
				</cfscript>
				</ul>
			</cfoutput>
		</div>
	</body>
	<cfscript>
		dump(application);
		try{
			m = entityNew('Message');
			dump(m);
			m2 = entityLoadByPK('Message', 1);
			dump(m2);
		}catch(any e){
			dump(e);
		}
	</cfscript>
</html>