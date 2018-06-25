<form class="form-horizontal validate" action="[{$oViewConf->getSslSelfLink()}]" name="order" method="post">
    <div class="hidden">
        [{assign var="aErrors" value=$oView->getFieldValidationErrors()}]
        [{$oViewConf->getHiddenSid()}]
        [{$oViewConf->getNavFormParams()}]
        <input type="hidden" name="fnc" value="registeruser">
        <input type="hidden" name="cl" value="register">
        <input type="hidden" name="lgn_cook" value="0">
        <input type="hidden" id="reloadAddress" name="reloadaddress" value="">
        <input type="hidden" name="option" value="3">
    </div>
    <div class="row">
        <div class="col-xs-12">
            <p class="alert alert-info text-center">[{oxmultilang ident="COMPLETE_MARKED_FIELDS"}]</p>
        </div>
        <div class="col-xs-12 col-md-5">
            <div class="col-sm-push-4 col-sm-8"><h3>[{oxmultilang ident="ACCOUNT_INFORMATION"}]</h3></div>
            <div class="col-xs-12"></div>
            [{include file="form/fieldset/user_account.tpl"}]

            [{if $oView->isActive('PsLogin')}]
                <div class="form-group">
                    <label class="control-label col-lg-3">[{oxmultilang ident="TERMS_AND_CONDITIONS"}]</label>
                    <div class="col-lg-9">
                        <input type="hidden" name="ord_agb" value="0">
                        <div class="checkbox">
                            <label>
                                <input id="orderConfirmAgbBottom" type="checkbox" class="checkbox" name="ord_agb" value="1">
                                [{oxifcontent ident="oxagb" object="oCont"}]
                                [{oxmultilang ident="FORM_REGISTER_IAGREETOTERMS1"}]
                                    <a href="#" data-toggle="modal" data-target="#popup1">[{oxmultilang ident="TERMS_AND_CONDITIONS"}]</a>
                                [{oxmultilang ident="FORM_REGISTER_IAGREETOTERMS3"}],&nbsp;
                                [{/oxifcontent}]
                                [{oxifcontent ident="oxrightofwithdrawal" object="oCont"}]
                                [{oxmultilang ident="FORM_REGISTER_IAGREETORIGHTOFWITHDRAWAL1"}]
                                    <a href="#" data-toggle="modal" data-target="#popup2">[{$oCont->oxcontents__oxtitle->value}]</a>
                                [{oxmultilang ident="FORM_REGISTER_IAGREETORIGHTOFWITHDRAWAL3"}]
                                [{/oxifcontent}]
                            </label>
                        </div>
                    </div>
                </div>
                [{oxifcontent ident="oxagb" object="oContent"}]
                    <div class="modal fade" id="popup1" tabindex="-1" role="dialog" aria-labelledby="popup1Label" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <span class="h4 modal-title" id="popup1Label">[{$oContent->oxcontents__oxtitle->value}]</span>
                                </div>
                                <div class="modal-body">[{$oContent->oxcontents__oxcontent->value}]</div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">[{oxmultilang ident="DD_CLOSE_MODAL"}]</button>
                                </div>
                            </div>
                        </div>
                    </div>
                [{/oxifcontent}]

                [{oxifcontent ident="oxrightofwithdrawal" object="oContent"}]
                    <div class="modal fade" id="popup2" tabindex="-1" role="dialog" aria-labelledby="popup2Label" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <span class="h4 modal-title" id="popup2Label">[{$oContent->oxcontents__oxtitle->value}]</span>
                                </div>
                                <div class="modal-body">[{$oContent->oxcontents__oxcontent->value}]</div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">[{oxmultilang ident="DD_CLOSE_MODAL"}]</button>
                                </div>
                            </div>
                        </div>
                    </div>
                [{/oxifcontent}]
            [{/if}]
        </div>
        <div class="col-xs-12 col-md-7">
            <hr class="visible-xs visible-sm">
            <div class="col-sm-push-4 col-sm-8"><h3>[{oxmultilang ident="BILLING_ADDRESS"}]</h3></div>
            <div class="col-xs-12"></div>
            [{include file="form/fieldset/user_billing.tpl"}]
        </div>
    </div>
</form>
