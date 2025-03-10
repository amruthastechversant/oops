<cfcomponent displayname="Login">

    <cfset variables.username="">
    <cfset variables.password="">
    <cfset variables.error_msg="">
    <cfset variables.success_msg="">
    <cffunction  name="init" access="public" returnType="Login">
        <cfargument  name="username" type="string">
        <cfargument  name="password" type="string">

        <cfset variables.username=arguments.username>
        <cfset variables.password=arguments.password>

        <cfreturn this>
    </cffunction>

    <cffunction  name="validateUser" access="public" returnType="boolean">
            <cfset isValid="false">
        <cfif variables.username EQ "user" and variables.password EQ "123">
            <cfset isValid="true">
        </cfif>
        <cfreturn isValid>
    </cffunction>
</cfcomponent>