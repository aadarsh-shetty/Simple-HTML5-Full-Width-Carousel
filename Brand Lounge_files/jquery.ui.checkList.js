

(function($) {
    $.widget("ui.checkList", {
        options: {
            listItems: [],
            selectedItems: [],
            effect: 'blink',
            onChange: {},
            objTable: '',
            icount: 0
        },

        _create: function() {
            var self = this, o = self.options, el = self.element;

            // generate outer div
            var container = $('<div/>').addClass('checkList');
            // generate content div to aid scrolling
            var content = $('<div/>').addClass('listContent');

            // generate toolbar
            var toolbar = $('<div/>').addClass('toolbar');

            var txtfilter = $('<input/>').attr('type', 'text').attr('placeholder', 'Filter...').addClass('txtFilter').keyup(function() {
                self._filter($(this).val());
			});

			toolbar.prepend($('<div/>').addClass('filterBox').css('padding-bottom', '.5rem').append(txtfilter));

            // generate list table object
            o.objTable = $('<table/>').addClass('table');
            container.append(toolbar);

            content.append(o.objTable);
			container.append('<table class="table"><tr><td><input type="checkbox" class="chkAll"></td><td><label>All</label></td></tr></table>');
			container.append(content);

			$(container).find(".chkAll").click(function() {
                var state = $(this).attr('checked');
                var setState = false;

                setState = (state == undefined) ? false : true;

                o.objTable.find('.chk:visible').attr('checked', setState);

                self._selChange();
            });
            
            el.append(container);

            self.loadList();
        },

        _addItem: function(listItem) {
            var self = this, o = self.options, el = self.element;

            var itemId = 'itm' + (o.icount++); // generate item id
            var itm = $('<tr/>');

            //MH 21-Nov-2012
            //Modified so the data in can contain 
            //a selected param. Allows us to preselect items in the list.

            if (listItem.selected == '1') {
                o.selectedItems.push({
                    text: $(this).attr('data-text'),
                    value: $(this).attr('data-value')
                });

                var chk = $('<input/>').attr('type', 'checkbox').attr('id', itemId)
								.addClass('chk')
								.attr('checked', 'checked')
								.attr('data-text', listItem.text)
								.attr('data-value', listItem.value);

                itm.append($('<td class="highlight" />').append(chk));

                var label = $('<label/>').attr('for', itemId).text(listItem.text);

                itm.append($('<td class="highlight" />').append(label));

            }
            else {
                var chk = $('<input/>').attr('type', 'checkbox').attr('id', itemId)
						.addClass('chk')
						.attr('data-text', listItem.text)
						.attr('data-value', listItem.value);

                itm.append($('<td/>').append(chk));

                var label = $('<label/>').attr('for', itemId).text(listItem.text);

                itm.append($('<td/>').append(label));
            }

            o.objTable.append(itm);

            // bind selection-change
            el.delegate('.chk', 'click', function() { self._selChange() });
        },

        loadList: function() {
            var self = this, o = self.options, el = self.element;

            o.objTable.empty();
            $.each(o.listItems, function() {
                self._addItem(this);
            });
        },

        _selChange: function() {
            var self = this, o = self.options, el = self.element;

            // empty selection
            o.selectedItems = [];

            // scan elements, find checked ones
            o.objTable.find('.chk').each(function() {

                if ($(this).attr('checked')) {
                    o.selectedItems.push({
                        text: $(this).attr('data-text'),
                        value: $(this).attr('data-value')
                    });
                    $(this).parent().addClass('highlight').siblings().addClass('highlight');
                } else {
                    $(this).parent().removeClass('highlight').siblings().removeClass('highlight');
                }
            });

            // fire onChange event
            o.onChange.call();
        },

        _filter: function(filter) {
            var self = this, o = self.options, el = self.element;

            o.objTable.find('.chk').each(function() {
                if ($(this).attr('data-text').toLowerCase().indexOf(filter.toLowerCase()) > -1) {
                    $(this).parent().parent().show(o.effect);
                }
                else {
                    $(this).parent().parent().hide(o.effect);
                }
            });
        },

        getSelection: function() {
            var self = this, o = self.options, el = self.element;
            return o.selectedItems;
        },

        setData: function(dataModel) {
            var self = this, o = self.options, el = self.element;
            o.listItems = dataModel;
            self.loadList();
            self._selChange();
        }
    });
})(jQuery); 