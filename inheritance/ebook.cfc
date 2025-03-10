<cfcomponent name="ebook" access="public" returnType="any" extends="book">
    <cfproperty  name="DownloadUrl" type="string">
    <cfproperty  name="sizeMb" type="string">
    <cfproperty  name="title" type="string">
    <cfproperty  name="author" type="string">
    <cfproperty  name="price" type="string">

    <cfset variables.instance=structNew()>

    <cffunction  name="init" returnType="any" hint="constructor of child class">
        <cfargument  name="DownloadUrl" type="string" required="true">
        <cfargument  name="sizeMb"  type="string" required="true">
         <cfargument  name="title"  type="string" required="true">
        <cfargument  name="author"  type="string" required="true">
        <cfargument  name="price"  type="string" required="true">

        <cfscript>
        variables.instance.DownloadUrl=arguments.DownloadUrl;
        variables.instance.sizeMb=arguments.sizeMb;

        super.init(title=arguments.title,author=arguments.author,price=arguments.price);
        </cfscript>
         <cfreturn this>
    </cffunction>

    <cffunction  name="getDownloadUrl" type="string">
        <cfreturn variables.instance.DownloadUrl>
    </cffunction>

    <cffunction  name="getSizeMb" type="string">
        <cfreturn variables.instance.sizeMb>
    </cffunction>
</cfcomponent>