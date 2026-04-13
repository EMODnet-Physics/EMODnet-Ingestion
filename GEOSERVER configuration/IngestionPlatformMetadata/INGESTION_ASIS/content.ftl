<style>
:target ~ .hidden-when-not-target {
  display: none !important;
}

.hidden-when-blurred {
  display: none !important;
}
.hidden-when-blurred:target {display: block !important; }

.container{
width: 100%;
height: 100%;
display:flex;
flex-direction:column;
 }

</style>
<div class="container">

<div class="tabep"  style='width:100%;display:flex;flex-wrap:wrap;justify-content:flex-start;max-height: 200px;overflow: auto;'>
  <#list features as feature>
    <a href='#${feature._id.value}'>
    <button class="tablinksep">${feature.call_name.value}</button> </a>&nbsp
  </#list>
</div>
<!--div class="" style="display:flex;flex-wrap:wrap;justify-content: right;height:max-content;border: 0;border-right: 0;">
<img src="https://map.emodnet-physics.eu/platformpage/assets/images/cc.png" style="max-width:125px;max-height: 30px;">
</div-->

<#assign hiddenText = "hidden-when-blurred">
<#assign ls =  features?reverse>

<#list ls as feature>
 <#if feature?is_last>
   <#assign hiddenText = "hidden-when-not-target">
 </#if>

  <div id="${feature._id.value}" class="tabcontentep ${hiddenText}" style="flex-grow:1;width:99%px">
    <iframe loading="lazy" style="width: 100%;height: 100%;"  src="https://map.emodnet-physics.eu/platformpage/?platformid=${feature._id.value}&showInPopup=true&dest=ingestion";>
    </iframe>
  </div>
</#list>

</div>
