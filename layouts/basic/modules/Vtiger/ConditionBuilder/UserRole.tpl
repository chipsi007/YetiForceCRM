{*<!-- {[The file is published on the basis of YetiForce Public License 3.0 that can be found in the following directory: licenses/LicenseEN.txt or yetiforce.com]} -->*}
{strip}
	{assign var=FIELD_VALUES value=explode('##', $VALUE)}
	<div class="tpl-List-Field-UserRole picklistSearchField">
		<select class="js-picklist-field select2 form-control js-condition-builder-value"
				title="{\App\Language::translate($FIELD_MODEL->getFieldLabel(), $MODULE)}"
				name="{$FIELD_MODEL->getFieldName()}" multiple="multiple">
			<optgroup class="p-0">
				<option value="">{\App\Language::translate('LBL_SELECT_OPTION')}</option>
			</optgroup>
			{foreach key=PICKLIST_VALUE item=PICKLIST_NAME from=$FIELD_MODEL->getPicklistValues()}
				<option value="{$PICKLIST_VALUE}" {if in_array($PICKLIST_VALUE, $FIELD_VALUES)} selected {/if}>{\App\Purifier::encodeHtml($PICKLIST_NAME)}</option>
			{/foreach}
		</select>
	</div>
{/strip}
