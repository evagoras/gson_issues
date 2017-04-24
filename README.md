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
			"null": null,
			"nullString": "null",
			"boolean": "false",
			"boolean2": "true",
			"booleanCast": true,
			"booleanCast2": false,
			"booleanString": "no"
			"booleanString2": "yes",
			"double": "5.44",
			"doubleCast": 5.44,
			"doubleString": "5.44",
			"int": "123",
			"intCast": 123,
			"intString": "123",
		}
	]
}
```
<img src="https://github.com/evagoras/gson_issues/blob/master/gson_issues.png" alt="Output">
