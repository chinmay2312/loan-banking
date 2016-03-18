
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN">
<!-- Editors & translators, please, edit target.en.tmpl, not .html -->

<html lang=en>
 <head profile="http://www.w3.org/2006/03/hcard">
  <title>CSS: a tabbed interface</title>


  <style type="text/css">

div.tabs {
  min-height: 2em;		/* No height: can grow if :target doesn't work */
  position: relative;		/* Establish a containing block */
  line-height: 1;		/* Easier to calculate with */
  z-index: 0}			/* So that we can put other things behind */
div.tabs > div {  display: inline}		/* We want the buttons all on one line */
div.tabs > div > a {
  color: white;		
  background: black;	/* Looks more like a button than a link */
  		/* Active tabs are light gray */
  padding: 0.2em;		/* Some breathing space */
  border: 0.1em outset #BBB;	/* Make it look like a button */
  border-bottom: 0.1em solid #CCC} /* Visually connect tab and tab body */
div.tabs > div:not(:target) > a {
  border-bottom: none;		/* Make the bottom border disappear */
  background: #999}		/* Inactive tabs are dark gray */
div.tabs > div:target > a,	/* Apply to the targeted item or... */
:target #default2 > a {		/* ... to the default item */
  border-bottom: 0.1em solid #CCC; /* Visually connect tab and tab body */
  background: black}		/* Active tab is light gray */
div.tabs > div > div {
    background: black;
  	/* Light gray */
  z-index: -2;			/* Behind, because the borders overlap */
  left: 0; top: 1.3em;		/* The top needs some calculation... */
  bottom: 0; right: 0;		/* Other sides flush with containing block */
  overflow: auto;		/* Scroll bar if needed */
  padding: 0.3em;		/* Looks better */
  border: 0.1em outset #BBB}	/* 3D look */
div.tabs > div:not(:target) > div { /* Protect CSS1 & CSS2 browsers */
  position: absolute }		/* All these DIVs overlap */
div.tabs > div:target > div, :target #default2 > div {
  position: absolute;		/* All these DIVs overlap */
  z-index: -1}			/* Raise it above the others */

div.tabs :target {
  outline: none}
</style>

 <body>
<br>
   <div class=example>
    <div class=tabs>
    
     <div id=default2>
     	<a href="GetPersonal.jsp" target="iframe_a">1.Get Eligibility</a>
     </div>
     
     <div id=default2>
		<a target="iframe_a">2.Decide To Apply</a>
     </div>

     <div id=default2> 
     	<a target="iframe_a">3.Complete Application</a>
     </div>
     
     <div id=default2> 
     	<a target="iframe_a">4.Upload Documents</a>
     </div>
     
     <br><br>
     
    </div>
   </div>
   <iframe width="100%" height="600px" src="GetPersonal.jsp" name="iframe_a"></iframe>
   




  <!-- Keep this comment at the end of the file
Local variables:
mode: sgml
sgml-declaration:"~/SGML/HTML4.dcl"
sgml-default-doctype-name:"html"
sgml-minimize-attributes:t
sgml-nofill-elements:("pre" "style" "br")
End:
-->
