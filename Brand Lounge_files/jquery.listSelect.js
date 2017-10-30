/*
* MultiSelect v0.2
* Copyright (c) 2011 Louis Cuny
*
* Dual licensed under the MIT and GPL licenses:
*    http://www.opensource.org/licenses/mit-license.php
*    http://www.gnu.org/licenses/gpl.html
*
*/

(function($) {
    var msMethods = {
        'init': function(options) {
            this.settings = {
                disabledClass: 'disabled',
                emptyArray: false,
                callbackOnInit: false,
                keepOrder: false,
                backgroundHeight: 225,
                selBackgroundHeight: 225,
                height: 223,
                selHeight: 223,
                width: 225,
                applyIcons: false,
                containerID: '#ms-searchable-form'
            };
            if (options) {
                this.settings = $.extend(this.settings, options);
            }
            var multiSelects = this;
            multiSelects.hide();

            multiSelects.each(function() {
                var ms = $(this);

                if (ms.next('.ms-container').length == 0) {
                    ms.attr('id', ms.attr('id') ? ms.attr('id') : 'ms-' + Math.ceil(Math.random() * 1000));

                    var container = $('<div id="ms-' + ms.attr('id') + '" class="ms-container"></div>'),
                    selectableContainer = $('<div class="ms-selectable" style="width:' + multiSelects.settings.width + 'px;height:' + multiSelects.settings.backgroundHeight + 'px"></div>'),
                    selectedContainer = $('<div class="ms-selection" style="width:' + multiSelects.settings.width + 'px;height:' + multiSelects.settings.selBackgroundHeight + 'px"></div>'),
                    selectableUl = $('<ul class="ms-list" style="width:' + multiSelects.settings.width + 'px;height:' + multiSelects.settings.height + 'px"></div>'),
                    selectedUl = $('<ul class="ms-list" style="width:' + multiSelects.settings.width + 'px;height:' + multiSelects.settings.selHeight + 'px"></div>');

                    if (multiSelects.settings.emptyArray) {
                        if (ms.find("option[value='']").length == 0) {
                            ms.prepend("<option value='' selected='selected'></option>");
                        } else {
                            ms.find("option[value='']").attr('selected', 'selected');
                        }
                    }
                    ms.data('settings', multiSelects.settings);

                    var optgroupLabel = null,
                    optgroupId = null,
                    optgroupCpt = 0;

                    ms.find('optgroup,option').each(function() {
                        if ($(this).is('optgroup')) {
                            optgroupLabel = $(this).attr('label');
                            optgroupId = 'ms-' + ms.attr('id') + '-optgroup-' + optgroupCpt;
                            selectableUl.append($('<li class="ms-optgroup-container" id="' +
                                  optgroupId + '"><ul class="ms-optgroup"><li class="ms-optgroup-label">' +
                                  optgroupLabel + '</li></ul></li>'));
                            optgroupCpt++;
                        }
                        if ($(this).is("option:not(option[value=''])")) {
                            var klass = $(this).attr('class') ? ' ' + $(this).attr('class') : '';

                            //MH 23-Aug-2013
                            //Hack to add type lists
                            var type = $(this).attr('data-type');
                            
                            //MH 23-Aug-2013
                            //Hack to add icons for permission lists
                            var img = '';
                            if (ms.data("settings").applyIcons == true) {
                                if (type.toUpperCase() == "USER")
                                    img = '<img src="images/selectList/user.png" />';
                                else
                                    img = '<img src="images/selectList/group.png" />';
                            }


                            var selectableLi = $('<li class="ms-elem-selectable' + klass + '" ms-value="' + $(this).val() + '" data-type="' + type + '">' + img + $(this).text() + '</li>');

                            if ($(this).attr('title'))
                                selectableLi.attr('title', $(this).attr('title'));
                            if ($(this).attr('disabled') || ms.attr('disabled')) {
                                selectableLi.attr('disabled', 'disabled');
                                selectableLi.addClass(multiSelects.settings.disabledClass);
                            }
                            selectableLi.click(function() {
                                ms.multiSelect('select', $(this).attr('ms-value'));
                            });
                            var container = optgroupId ? selectableUl.children('#' + optgroupId).find('ul').first() : selectableUl;
                            container.append(selectableLi);
                        }
                    });
                    if (multiSelects.settings.selectableHeader) {
                        selectableContainer.append(multiSelects.settings.selectableHeader);
                    }
                    selectableContainer.append(selectableUl);
                    if (multiSelects.settings.selectedHeader) {
                        selectedContainer.append(multiSelects.settings.selectedHeader);
                    }
                    selectedContainer.append(selectedUl);
                    container.append(selectableContainer);
                    container.append(selectedContainer);
                    ms.after(container);
                    ms.find('option:selected').each(function() {
                        ms.multiSelect('select', $(this).val(), 'init');
                    });
                }
            });
        },
        'refresh': function() {
            $("#ms-" + $(this).attr("id")).remove();
            $(this).multiSelect("init", $(this).data("settings"));
        },
        'select': function(value, method) {
            var ms = this,
          selectedOption = ms.find('option[value="' + value + '"]'),
          text = selectedOption.text(),
          klass = selectedOption.attr('class'),
          titleAttr = selectedOption.attr('title'),
          typeAttr = selectedOption.attr('data-type');


            //MH 23-Aug-2013
            //Hack to add icons for permission lists
            var img = '';
            if (ms.data("settings").applyIcons == true) {
                if (typeAttr.toUpperCase() == "USER")
                    img = '<img src="images/selectList/user.png" />';
                else
                    img = '<img src="images/selectList/group.png" />';
            }

            var selectedLi = $('<li class="ms-elem-selected' + (klass ? ' ' + klass : '') + '" ms-value="' + value + '" data-type="' + typeAttr + '">' + img + text + '</li>'),
          selectableUl = $('#ms-' + ms.attr('id') + ' .ms-selectable ul'),
          selectedUl = $('#ms-' + ms.attr('id') + ' .ms-selection ul'),
          selectableLi = selectableUl.children('li[ms-value="' + value + '"]'),
          haveToSelect = ((!selectableLi.hasClass(ms.data('settings').disabledClass)) ||
                          (selectableLi.hasClass(ms.data('settings').disabledClass) && method == 'init')) &&
                          value != '' &&
                          ((method == 'init' && selectedOption.attr('selected')) ||
                            (method != 'init' && !selectedOption.attr('selected')))

            if (haveToSelect) {
                var parentOptgroup = selectableLi.parent('.ms-optgroup');
                if (parentOptgroup.length > 0)
                    if (parentOptgroup.children('.ms-elem-selectable:not(:hidden)').length == 1)
                    parentOptgroup.children('.ms-optgroup-label').hide();
                selectableLi.addClass('ms-selected');
                selectableLi.hide();
                selectedOption.attr('selected', 'selected');
                if (titleAttr) {
                    selectedLi.attr('title', titleAttr)
                }
                if (selectableLi.hasClass(ms.data('settings').disabledClass)) {
                    selectedLi.addClass(ms.data('settings').disabledClass);
                } else {
                    selectedLi.click(function() {
                        ms.multiSelect('deselect', $(this).attr('ms-value'));
                    });
                }

                var selectedUlLis = selectedUl.children('.ms-elem-selected');
                if (method != 'init' && ms.data('settings').keepOrder && selectedUlLis.length > 0) {

                    var getIndexOf = function(value) {
                        elems = selectableUl.children('.ms-elem-selectable');
                        return (elems.index(elems.closest('[ms-value="' + value + '"]')));
                    }

                    var index = getIndexOf(selectedLi.attr('ms-value'));
                    if (index == 0)
                        selectedUl.prepend(selectedLi);
                    else {
                        for (i = index - 1; i >= 0; i--) {
                            if (selectedUlLis[i] && getIndexOf($(selectedUlLis[i]).attr('ms-value')) < index) {
                                $(selectedUlLis[i]).after(selectedLi);
                                break;
                            } else if (i == 0) {
                                $(selectedUlLis[i]).before(selectedLi);
                            }
                        }
                    }
                } else {
                    selectedUl.append(selectedLi);
                }

                if (ms.find("option[value='']")) {
                    ms.find("option[value='']").removeAttr('selected');
                }
                if (method == "select_all" && parentOptgroup.children('.ms-elem-selectable').length > 0) {
                    parentOptgroup.children('.ms-optgroup-label').hide();
                }
                if (method != 'init' || ms.data('settings').callbackOnInit) {
                    selectedUl.trigger('change');
                    selectableUl.trigger('change');
                    if (typeof ms.data('settings').afterSelect == 'function' && (method != 'init' || ms.data('settings').callbackOnInit)) {
                        ms.data('settings').afterSelect.call(this, value, text);
                    }
                }
            }

            //MH 30 May 2013
            //Ensure List is Sorted by Alpha no matter the case
            //Also need to ensure groups are always at the top for permission screens
            var mylist = $($(this).data("settings").containerID + " .ms-selection .ms-list");
            var listitems = mylist.children('li').get();
            listitems.sort(function(a, b) {

                var aTestString = $(a).attr('data-type').charAt(0);
                var bTestString = $(b).attr('data-type').charAt(0);

                isDigit = (aTestString >= '0' && aTestString <= '9');

                var aString = $(a).text().toUpperCase();
                var bString = $(b).text().toUpperCase();

                if (!isDigit) {
                    if (aString == "EVERYONE") aTestString = "e";
                    if (bString == "EVERYONE") bTestString = "e";
                    aString = aTestString + aString;
                    bString = bTestString + bString;
                }


                return aString.localeCompare(bString);
            })
            $.each(listitems, function(idx, itm) { mylist.append(itm); });

        },
        'deselect': function(value) {
            var ms = this,
          selectedUl = $('#ms-' + ms.attr('id') + ' .ms-selection ul'),
          selectedOption = ms.find('option[value="' + value + '"]'),
          selectedLi = selectedUl.children('li[ms-value="' + value + '"]');

            if (selectedLi) {
                var selectableUl = $('#ms-' + ms.attr('id') + ' .ms-selectable ul'),
            selectedUl = $('#ms-' + ms.attr('id') + ' .ms-selection ul'),
            selectableLi = selectableUl.children('li[ms-value="' + value + '"]'),
            selectedLi = selectedUl.children('li[ms-value="' + value + '"]');

                var parentOptgroup = selectableLi.parent('.ms-optgroup');
                if (parentOptgroup.length > 0) {
                    parentOptgroup.children('.ms-optgroup-label').addClass('collapse').show();
                    parentOptgroup.children('.ms-elem-selectable:not(.ms-selected)').show();
                }
                selectedOption.removeAttr('selected');
                selectableLi.show();
                selectableLi.removeClass('ms-selected');
                selectedLi.remove();
                if (ms.data('settings').emptyArray && selectedUl.children('li').length == 0) {
                    if (ms.find("option[value='']")) {
                        ms.find("option[value='']").attr('selected', 'selected');
                    }
                }
                selectedUl.trigger('change');
                selectableUl.trigger('change');
                if (typeof ms.data('settings').afterDeselect == 'function') {
                    ms.data('settings').afterDeselect.call(this, value, selectedLi.text());
                }
            }

            //MH 30 May 2013
            //Ensure List is Sorted by Alpha
            //Also need to ensure groups are always at the top for permission screens
            var mylist = $($(this).data("settings").containerID + " .ms-selection .ms-list");
            var listitems = mylist.children('li').get();
            listitems.sort(function(a, b) {

                var aTestString = $(a).attr('ms-type').charAt(0);
                var bTestString = $(b).attr('ms-type').charAt(0);

                isDigit = (aTestString >= '0' && aTestString <= '9');

                var aString = $(a).text().toUpperCase();
                var bString = $(b).text().toUpperCase();

                if (!isDigit) {
                    if (aString == "EVERYONE") aTestString = "e";
                    if (bString == "EVERYONE") bTestString = "e";
                    aString = aTestString + aString;
                    bString = bTestString + bString;
                }


                return aString.localeCompare(bString);
            })
            $.each(listitems, function(idx, itm) { mylist.append(itm); });
        },
        'select_all': function(visible) {
            var ms = this,
          selectableUl = $('#ms-' + ms.attr('id') + ' .ms-selectable ul');

            ms.find("option:not(option[value=''])").each(function() {
                var value = $(this).val();
                if (visible) {
                    var selectableLi = selectableUl.children('li[ms-value="' + value + '"]');
                    if (selectableLi.filter(':visible').length > 0) {
                        ms.multiSelect('select', value, 'select_all');
                    }
                } else {
                    ms.multiSelect('select', value, 'select_all');
                }
            });
        },
        'deselect_all': function() {
            var ms = this;
            ms.find("option:not(option[value=''])").each(function() {
                ms.multiSelect('deselect', $(this).val(), 'deselect_all');
            });
        }
    };

    $.fn.multiSelect = function(method) {
        if (msMethods[method]) {
            return msMethods[method].apply(this, Array.prototype.slice.call(arguments, 1));
        } else if (typeof method === 'object' || !method) {
            return msMethods.init.apply(this, arguments);
        } else {
            if (console.log) console.log('Method ' + method + ' does not exist on jquery.multiSelect');
        }
        return false;
    };
})(jQuery);
