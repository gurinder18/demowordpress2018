(function($) {
    wp.customize.bind('ready', function() {
        var waitforformsubmit;
        var intialBtnVal = $('form #customize-header-actions #save').val();

        //change select form dropdown to -1 value
        if ($('#customize-control-gf_stla_hidden_field_for_form_id').length) {
            $('#customize-control-gf_stla_select_form_id select').val(-1);
        }

		var formId = $('#customize-control-gf_stla_select_form_id select').val();
		console.log( formId );
        //hide all the selection fields if no form selected
        $('body').on('click', '#accordion-panel-gf_stla_panel', function() {
            if ($('#customize-control-gf_stla_hidden_field_for_form_id').length) {
                $('#accordion-section-gf_stla_form_id_form_wrapper').hide();
                $('#accordion-section-gf_stla_form_id_form_header').hide();
                $('#accordion-section-gf_stla_form_id_form_title_description').hide();
                $('#accordion-section-gf_stla_form_id_submit_button').hide();
                $('#accordion-section-gf_stla_form_id_field_labels').hide();
                $('#accordion-section-gf_stla_form_id_field_descriptions').hide();
                $('#accordion-section-gf_stla_form_id_text_fields').hide();
                $('#accordion-section-gf_stla_form_id_dropdown_fields').hide();
                $('#accordion-section-gf_stla_form_id_radio_inputs').hide();
                $('#accordion-section-gf_stla_form_id_checkbox_inputs').hide();
                $('#accordion-section-gf_stla_form_id_paragraph_textarea').hide();
                $('#accordion-section-gf_stla_form_id_section_break_title_description').hide();
                $('#accordion-section-gf_stla_form_id_confirmation_message').hide();
                $('#accordion-section-gf_stla_form_id_error_message').hide();
                $('#accordion-section-gf_stla_form_id_addons').hide();
                $('#accordion-section-gf_stla_form_id_field_sub_labels').hide();
                $('#accordion-section-gf_stla_form_id_general_settings').hide();
                $('#accordion-section-gf_stla_form_id_list_field').hide();
                $('#accordion-section-gf_stla_form_id_placeholders').hide();
            }
        });

        //append form id in url and refresh the page
        $('body').on('change', '#customize-control-gf_stla_select_form_id select', function() {
            alert('Saving Form Selection. Start Styling after page refresh !!!');
            $('form #customize-header-actions #save').click();
            $('#customize-preview').removeClass('iframe-ready');
            $('#customize-preview iframe').hide();
            waitforformsubmit = setInterval(check_button_disabled, 1000);
        });

        function check_button_disabled() {
            if (!$('body.wp-customizer').hasClass('saving')) {
                clearInterval(waitforformsubmit);
                var reload_url_key = 'autofocus[panel]';
                var reload_url_value = 'gf_stla_panel';
                reload_url_key = encodeURIComponent(reload_url_key);
                reload_url_value = encodeURIComponent(reload_url_value);
                //get the search query from url, it starts after ?
                var kvp = document.location.search.substr(1).split('&');
                if (kvp == '') {
                    document.location.search = '?' + reload_url_key + '=' + reload_url_value;
                } else {
                    var i = kvp.length;
                    var x;
                    while (i--) {
                        x = kvp[i].split('=');
                        if (x[0] == reload_url_key) {
                            x[1] = reload_url_value;
                            kvp[i] = x.join('=');
                            break;
                        }
                    }
                    if (i < 0) {
                        kvp[kvp.length] = [reload_url_key, reload_url_value].join('=');
                    }
                    //this will reload the page, it's likely better to store this until finished
                    document.location.search = kvp.join('&');
                }
            }
        }

        //Auto save and refresh on reset style button
        $('body').on('click', '.gf-stla-reset-style-button', function() {
            alert(' Resetting Style !!!');
            $('form #customize-header-actions #save').click();
            $('#customize-preview').removeClass('iframe-ready');
            $('#customize-preview iframe').hide();
            waitforformsubmit = setInterval(check_button_disabled, 2000);
        });

        // Only show the background color  control when color is selected for background type.
        wp.customize('gf_stla_form_id_' + formId + '[form-wrapper][background-type]', function(setting) {
            wp.customize.control('gf_stla_form_id_' + formId + '[form-wrapper][background-color]', function(control) {
                console.log('this worked');
                var visibility = function() {
                    if ('color' === setting.get()) {
                        control.container.slideDown(180);
                    } else {
                        control.container.slideUp(180);
                    }
                };
                visibility();
                setting.bind(visibility);
            });
        });

        //  Only show the background color Transparency  control when color or gradient is selected for background type.
        wp.customize('gf_stla_form_id_' + formId + '[form-wrapper][background-type]', function(setting) {
            wp.customize.control('gf_stla_form_id_' + formId + '[form-wrapper][background-opacity]', function(control) {
                var visibility = function() {
                    if ('color' === setting.get() || 'gradient' === setting.get()) {
                        control.container.slideDown(180);
                    } else {
                        control.container.slideUp(180);
                    }
                };
                visibility();
                setting.bind(visibility);
            });
        });

        // Only show the background imgae when image is selected for background type
        wp.customize('gf_stla_form_id_' + formId + '[form-wrapper][background-type]', function(setting) {
            wp.customize.control('gf_stla_form_id_' + formId + '[form-wrapper][background-image]', function(control) {
                var visibility = function() {
                    if ('image' === setting.get()) {
                        control.container.slideDown(180);
                    } else {
                        control.container.slideUp(180);
                    }
                };
                visibility();
                setting.bind(visibility);
            });
        });

        // Only show the gradient color 1 control when gradient is selected for background type.
        wp.customize('gf_stla_form_id_' + formId + '[form-wrapper][background-type]', function(setting) {
            wp.customize.control('gf_stla_form_id_' + formId + '[form-wrapper][gradient-color-1]', function(control) {
                var visibility = function() {
                    if ('gradient' === setting.get()) {
                        control.container.slideDown(180);
                        console.log('gradient');
                    } else {
                        control.container.slideUp(180);
                    }
                };
                visibility();
                setting.bind(visibility);
            });
        });

        // Only show the gradient color 2 control when gradient is selected for background type.
        wp.customize('gf_stla_form_id_' + formId + '[form-wrapper][background-type]', function(setting) {
            wp.customize.control('gf_stla_form_id_' + formId + '[form-wrapper][gradient-color-2]', function(control) {
                var visibility = function() {
                    if ('gradient' === setting.get()) {
                        control.container.slideDown(180);
                    } else {
                        control.container.slideUp(180);
                    }
                };
                visibility();
                setting.bind(visibility);
            });
        });

        // Only show the  gradient direction control when gradient is selected for background type.
        wp.customize('gf_stla_form_id_' + formId + '[form-wrapper][background-type]', function(setting) {
            wp.customize.control('gf_stla_form_id_' + formId + '[form-wrapper][gradient-direction]', function(control) {
                var visibility = function() {
                    if ('gradient' === setting.get()) {
                        control.container.slideDown(180);
                    } else {
                        control.container.slideUp(180);
                    }
                };
                visibility();
                setting.bind(visibility);
            });
        });

    });

})(jQuery);