# gson_issues
(de)serialization issues with Gson

## CommandBox
Clone into a folder, `cd` into it using CommandBox and type `start`.

## Issues
Input:
```
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
```
Output:
```
{
    "myarray": [
        {
            "booleanCast2": false,
            "null": null,
            "booleanString2": "yes",
            "doubleCast": 5.44,
            "nullString": "null",
            "int": "123",
            "intCast": 123,
            "boolean": "false",
            "boolean2": "true",
            "intString": "123",
            "double": "5.44",
            "doubleString": "5.44",
            "booleanCast": true,
            "booleanString": "no"
        }
    ]
}
```
