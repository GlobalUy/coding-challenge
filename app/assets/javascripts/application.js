// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require turbolinks
//= require jquery-ui
//= require bootstrap-sprockets
//= require select2
//= require_tree .
var configure_select2_combos = function() {

    $( "input.select2" ).each(function(){
        if($(this).data('select2-source') != null){
            $(this).select2({
                width: '100%',
                placeholder: $(this).data('placeholder'),
                theme: "bootstrap",
                    ajax: {
                    url: $(this).data('select2-source'),
                    dataType: 'json',
                    delay: 250,
                    data: function (term) {
                        if($(this).data('depends-on')) {
                            var depends_on = $(this).data('depends-on');
                            var selected = $('#' + depends_on).select2('data');
                            return {
                                parent_id: selected.id,
                                q: term
                            }
                        } else {
                            return {
                                q: term, // search term
                            };
                        }
                    },
                    results: function (data) {
                        return {
                            results: $.map(data, function (item) {
                                return {
                                    text: item.text,
                                    id: item.id
                                }
                            })
                        };
                    }
                },
                  minimumInputLength: 2
            });

            // default selected value
            if($(this).data('selected-id') && $(this).data('selected-text')){
                var selected_id = $(this).data('selected-id');
                var selected_text = $(this).data('selected-text');
                $(this).select2("data", { id: selected_id, text: selected_text });
            }
        }
    });

}
