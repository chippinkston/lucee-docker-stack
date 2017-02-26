<div class="container">
	<h1>Test Build</h1>
	<cfoutput>
		<ul>
		<cfscript>
					for(i =1; i < 12; i++){
			echo('<li>' & i & '</li>');
		}
		try{
			m = entityLoadByPK('Message', 1);
			dump(m);
		}catch(any e){
			dump(e);
			abort;
		}
		</cfscript>
		</ul>
	</cfoutput>
</div>
