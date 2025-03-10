<cfcomponent name="book" access="public" returnType="any">
    <cfset variables.instance=structNew()>

    <cffunction  name="init" returnType="any" hint="constructor of base class">

        <cfargument  name="title" type="string" required="true">
        <cfargument  name="author" type="string" required="true">
        <cfargument  name="price" type="string" required="true">
     

        <cfset variables.instance.title=arguments.title>
        <cfset variables.instance.author=arguments.author>
        <cfset variables.instance.price=arguments.price>

        <cfreturn this>
    </cffunction>

    <cffunction  name="getTitle" type="string">
        <cfreturn variables.instance.title>
    </cffunction>
    <cffunction  name="getAuthor" type="string">
        <cfreturn variables.instance.author>
    </cffunction>
    <cffunction  name="getPrice" type="string">
        <cfreturn variables.instance.price>
    </cffunction>

</cfcomponent>