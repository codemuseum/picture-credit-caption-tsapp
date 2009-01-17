var PictureCreditCaptionEdit = {
  init: function() {
    TSEditor.registerOnEdit('picture-credit-caption', function(el) { PictureCreditCaptionEdit.insantiate(el) });
  },
  insantiate: function(el) {
    TS.Assets.Selector.register(el);
  }
}
PictureCreditCaptionEdit.init();