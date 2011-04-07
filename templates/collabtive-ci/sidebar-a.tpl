<div id="content-right">


	{*Search*}
	<div class="content-right-in">
			<!-- DAMIAN START-->
			<h2 class="mysidebar">{#search#}</h2>
			<!-- DAMIAN END-->
			
			<form id = "search" method = "get" action = "managesearch.php" {literal} onsubmit="return validateStandard(this,'input_error');"{/literal}>
			<fieldset>
				<div class = "row">
					<input type="text" class = "text" id="query" name="query" />
				</div>
			
				<div id="choices"></div>
				<input type = "hidden" name = "action" value = "search" />
				
				<div id="indicator1" style="display:none;"><img src="templates/collabtive-ci/images/symbols/indicator_arrows.gif" alt="{#searching#}" /></div>
				
				<button type="submit" title="{#gosearch#}"></button>
			</fieldset>

			</form>
	</div>
	{*Search End*}
	
	
	{*Calendar*}
	<!-- DAMIAN START-->
	{* theCal.dayNames = ["{#monday#}","{#tuesday#}","{#wednesday#}","{#thursday#}","{#friday#}","{#saturday#}","{#sunday#}"]; *}
	<div class="content-right-in">	
		<h2 class="mysidebar">{#calendar#}</h2>
		<div id = "mycal_mini"></div>
		<script type = "text/javascript">
		theCal = new calendar({$theM},{$theY});
		theCal.dayNames = ["{#monday#}","{#tuesday#}","{#wednesday#}","{#thursday#}","{#friday#}","{#saturday#}","{#sunday#}"];
		theCal.monthNames = ["{#january#}","{#february#}","{#march#}","{#april#}","{#may#}","{#june#}","{#july#}","{#august#}","{#september#}","{#october#}","{#november#}","{#december#}"];
		theCal.getCal('mycal_mini');
		</script>
	</div>
	<!-- DAMIAN END-->
	

	{*Tag Cloud*}	
	{if $showcloud == "1"}
		{if $cloud != ""}
		<div class="content-right-in">	
			<!-- DAMIAN START-->
			<h2 class="mysidebar">{#tags#}</h2>
			<!-- DAMIAN END-->
			<div id = "tagcloud" class="cloud">
				{$cloud}
			</div>
		</div>		
		{/if}
	{/if}
	{*Tag Cloud End*}
	
	<!-- DAMIAN START-->
	{*Onlinelist*}
	{*
	<div class="content-right-in">		
			<h2 class="mysidebar">{#usersonline#}</h2>
			<div id="onlinelist">
				{$cloud}
			</div>
	</div>
	*}
	<!-- DAMIAN END-->
		
		{literal}
			  <script type = "text/javascript">
			  new Ajax.Autocompleter('query', 'choices', 'managesearch.php?action=ajaxsearch', {paramName:'query',minChars: 2,indicator: 'indicator1'});
		      var on = new Ajax.PeriodicalUpdater("onlinelist","manageuser.php?action=onlinelist",{method:'get',evalScripts:true,frequency:35});
	
	
			</script>
		{/literal}

	<!-- DAMIAN START-->
    {*Projects*}
    {if (isset($myprojects))}
        {if $projectnum > 0}
            <div class="content-right-in">      
                <h2 class="mysidebar">My Projects</h2>
                <div id="projectlist-sidebar">
                    <ul>
                        {section name=project loop=$myprojects}
                            <li><a href="manageproject.php?action=showproject&amp;id={$myprojects[project].ID}" title="{$myprojects[project].name}">
                                {if $myprojects[project].name != ""}
                                    {$myprojects[project].name|truncate:25:"...":true}
                                {else}
                                    {$myprojects[project].desc|truncate:25:"...":true}
                                {/if}
                                </a>
                        {/section}
                    </ul>
                </div>
            </div>
        {/if}
    {/if}   
	<!-- DAMIAN END-->
</div>