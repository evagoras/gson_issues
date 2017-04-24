component {

	public component function init( root ) {
		variables.gson = CreateObject("java", "com.google.gson.GsonBuilder")
			.serializeNulls()
			.create();
		var array = [ ];
		variables.arrayClass = array.getClass( );
		variables.structClass = CreateObject( "java", "java.util.LinkedHashMap" ).init( ).getClass( );
		return this;
	}

	public string function serializeJSON( required any source ) {
		// return variables.gson.toJson( source );
		return variables.gson.toJsonTree( source ).toString( );
	}

	public any function deserializeJSON( required string source ) {

		if (source eq "null"){
			return javaCast( "null", 0 );
		}
		source = Trim( source );
		var type = "";
		var firstChar = left( source, 1 );
		switch ( firstChar ) {
			case '{' :
				type = variables.structClass;
				break;
			case '[' :
				type = variables.arrayClass;
				break;
			default:
				return source;
				break;
		}
		return variables.gson.fromJson(source, type);
	}

}