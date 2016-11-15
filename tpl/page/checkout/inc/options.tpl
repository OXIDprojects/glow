[{block name="checkout_user_options"}]
   <div class="row" id="user_options">
      <div class="col-xs-12 col-sm-6">
         [{block name="checkout_options_login"}]
            [{include file="form/login.tpl"}]
         [{/block}]
      </div>

      <div class="col-xs-12 col-sm-6">
         [{block name="checkout_options_reg"}]
            <form action="[{$oViewConf->getSslSelfLink()}]" method="post">
               <div class="hidden">
                  [{$oViewConf->getHiddenSid()}]
                  [{$oViewConf->getNavFormParams()}]
                  <input type="hidden" name="cl" value="user">
                  <input type="hidden" name="fnc" value="">
                  <input type="hidden" name="option" value="3">
               </div>

               <div class="panel panel-default" id="optionRegistration">
                  <div class="panel-heading">
                     <h3 class="panel-title">[{oxmultilang ident="OPEN_ACCOUNT"}]</h3>
                  </div>
                  <div class="panel-body">
                     [{block name="checkout_options_reg_text"}]
                        [{oxifcontent ident="oxregistrationdescription" object="oCont"}]
                        [{$oCont->oxcontents__oxcontent->value}]
                        [{/oxifcontent}]
                     [{/block}]
                  </div>
                  <div class="panel-footer text-right">
                     <button class="btn btn-primary submitButton nextStep" type="submit">[{oxmultilang ident="NEXT"}] <i class="fa fa-caret-right"></i></button>
                  </div>
               </div>
            </form>
         [{/block}]
      </div>

      <div class="col-xs-12">
         [{block name="checkout_options_noreg"}]
            [{if $oView->getShowNoRegOption()}]
               <form action="[{$oViewConf->getSslSelfLink()}]" method="post">
                  <div class="hidden">
                     [{$oViewConf->getHiddenSid()}]
                     [{$oViewConf->getNavFormParams()}]
                     <input type="hidden" name="cl" value="user">
                     <input type="hidden" name="fnc" value="">
                     <input type="hidden" name="option" value="1">
                  </div>

                  <div class="panel panel-default" id="optionNoRegistration">
                     <div class="panel-heading">
                        <h3 class="panel-title">[{oxmultilang ident="PURCHASE_WITHOUT_REGISTRATION"}]</h3>
                     </div>
                     <div class="panel-body">
                        [{block name="checkout_options_noreg_text"}]
                           <p>[{oxmultilang ident="DO_NOT_WANT_CREATE_ACCOUNT"}]</p>
                           [{if $oView->isDownloadableProductWarning()}]
                              <p class="errorMsg">[{oxmultilang ident="MESSAGE_DOWNLOADABLE_PRODUCT"}]</p>
                           [{/if}]
                        [{/block}]
                     </div>
                     <div class="panel-footer text-right">
                        <button class="btn btn-primary submitButton nextStep" type="submit">[{oxmultilang ident="NEXT"}] <i class="fa fa-caret-right"></i></button>
                     </div>
                  </div>
               </form>
            [{/if}]
         [{/block}]
      </div>

      [{oxscript add='$(".col-sm-6 .panel-body","#user_options").matchHeight();'}]
   </div>
[{/block}]