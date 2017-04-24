<cfscript>
gson = new gson();

mystruct = {
	"myarray" = [
		{
			"key1" = 123,
			"key2" = "123",
			"key3" = "no",
			"key4" = false,
			"key5" = "yes",
			"key6" = javacast("boolean", true),
			"key7" = true,
			"key8" = javacast("null", 0),
			"key9" = 5.44,
			"key10" = javacast("double", 5.44)
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