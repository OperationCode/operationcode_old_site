(function() {
  $(document).on('ready page:load', function() {
    var batch_actions_selector;
    $(document).on('focus', '.datepicker:not(.hasDatepicker)', function() {
      var defaults, options;
      defaults = {
        dateFormat: 'yy-mm-dd'
      };
      options = $(this).data('datepicker-options');
      return $(this).datepicker($.extend(defaults, options));
    });
    $('.clear_filters_btn').click(function() {
      var param, params, regex;
      params = window.location.search.split('&');
      regex = /^(q\[|q%5B|q%5b|page|commit)/;
      return window.location.search = ((function() {
        var i, len, results;
        results = [];
        for (i = 0, len = params.length; i < len; i++) {
          param = params[i];
          if (!param.match(regex)) {
            results.push(param);
          }
        }
        return results;
      })()).join('&');
    });
    $('.filter_form').submit(function() {
      return $(this).find(':input').filter(function() {
        return this.value === '';
      }).prop('disabled', true);
    });
    $('.filter_form_field.select_and_search select').change(function() {
      return $(this).siblings('input').prop({
        name: "q[" + this.value + "]"
      });
    });
    $('#active_admin_content .tabs').tabs();
    if ((batch_actions_selector = $('.table_tools .batch_actions_selector')).length) {
      return batch_actions_selector.next().css({
        width: "calc(100% - 10px - " + (batch_actions_selector.outerWidth()) + "px)",
        'float': 'right'
      });
    }
  });

}).call(this);
