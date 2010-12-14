<html>
<head>
  <title><g:message code="diff.heading"/></title>
  <meta name="layout" content="main"/>
</head>
<body>
<div class="nav">
  <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
</div>
<div>
  <g:if test="${flash?.error}">
    <div class="message errors">
      ${flash?.error}
    </div>
  </g:if>
  <g:if test="${flash?.message}">
    <div class="message">
      ${flash?.message}
    </div>
  </g:if>
</div>
<h2><g:message code="diff.heading"/></h2>
<div>&nbsp;</div>
<g:form>
  <table>
    <tr>
      <td><g:message code="diff.reference.database.label"/>&nbsp;<g:select name="referenceDatabase" optionKey="id" optionValue="name" value="${referenceDatabaseInfo?.id}" from="${grails.multitenant.dbmanager.domain.MtDbInfo.list()}" noSelection="['':'-Choose a Reference-']"/></td>
      <td><g:message code="diff.source.database.label"/>&nbsp;<g:select name="sourceDatabase" optionKey="id" optionValue="name" value="${sourceDatabaseInfo?.id}" from="${grails.multitenant.dbmanager.domain.MtDbInfo.list()}" noSelection="['0':'-All-']"/></td>
    </tr>
  </table>
  <div>&nbsp;</div>
  <div>
    <g:actionSubmit value="${message(code:'submit.button')}" action="diff"/>
  </div>
  <div>&nbsp;</div>
  <g:render template="/mtDbDiff/diffResult" model="[result:result,sourceDatabaseInfo:sourceDatabaseInfo,referenceDatabaseInfo:referenceDatabaseInfo]"/>
</g:form>
</body>
</html>