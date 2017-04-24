<cfscript>
gson = new gson();

mystruct = {
	"myarray" = [
		{
			"int" = 123,
			"intString" = "123",
			"intCast" = javacast("int", 123),
			"booleanString" = "no",
			"boolean" = false,
			"booleanString2" = "yes",
			"booleanCast" = javacast("boolean", true),
			"booleanCast2" = javacast("boolean", false),
			"boolean2" = true,
			"null" = javacast("null", 0),
			"nullString" = "null",
			"double" = 5.44,
			"doubleString" = "5.44",
			"doubleCast" = javacast("double", 5.44)
		}
	]
};

writedump( gson.serializeJSON(mystruct) );

// mystring = '{"myarray":[{"key2":"123","key1":"123","key4":"false","key3":"no"}]}';
// data = gson.deserializeJSON( mystring );
// fails if not using 'duplicate'
// data = duplicate(data);
// writedump( data.myarray );

</cfscript>