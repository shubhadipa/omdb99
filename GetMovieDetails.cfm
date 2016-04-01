<cfsetting showdebugoutput="no">
<cfheader name="Content-Type" value="application/json">

<!--- Create a variable for the URL --->
<cfset theURL = "http://www.omdbapi.com/?">

<cfif StructKeyExists(url,"movieTitle")>
	<cfset theURL = theURL & "t=" & #url.movieTitle#>
	
	<cfhttp url="#theURL#" charset="utf-8" method="get" result="movieResult">
	</cfhttp>
	<cfoutput>#movieResult.fileContent#</cfoutput>
<cfelse>
	<cfoutput>Please provide movie name in the URL. For e.g. movieTitle=Interstellar </cfoutput>
</cfif>