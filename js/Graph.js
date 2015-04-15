/**
 * Simple pie graph to demonstrate data returned by One Stop Transparency Shop
 * table linking
 */
Ext.define('Transparency.view.main.Graph', {
    extend: 'Ext.Panel',
    xtype: 'pie-basic',
    tite: 'Graph',


    width: 650,

    initComponent: function() {
        var me = this;

        this.myDataStore = Ext.create('Ext.data.JsonStore', {
            fields: ['vendor', 'total' ],
            data: [
                {
            "vendor": "Temple University",
            "contributions": "2415",
            "total": "2628870",
            "avg": "1088.5590"
        },
        {
            "vendor": "Duane Morris LLP",
            "contributions": "1351",
            "total": "2308920",
            "avg": "1709.0452"
        },
        {
            "vendor": "Verizon",
            "contributions": "2066",
            "total": "728566",
            "avg": "352.6457"
        },
        {
            "vendor": "Pennoni Associates Inc.",
            "contributions": "1380",
            "total": "648935",
            "avg": "470.2428"
        },
        {
            "vendor": "Saul Ewing LLP",
            "contributions": "328",
            "total": "586900",
            "avg": "1789.3293"
        },
        {
            "vendor": "The Graham Company",
            "contributions": "190",
            "total": "519074",
            "avg": "2731.9684"
        },
        {
            "vendor": "Cozen O'Connor",
            "contributions": "2256",
            "total": "481830",
            "avg": "213.5771"
        },
        {
            "vendor": "Thomas Jefferson University",
            "contributions": "342",
            "total": "397290",
            "avg": "1161.6667"
        },
        {
            "vendor": "Archer & Greiner",
            "contributions": "456",
            "total": "391800",
            "avg": "859.2105"
        },
        {
            "vendor": "Dilworth Paxson LLP",
            "contributions": "232",
            "total": "385774",
            "avg": "1662.8190"
        }
            ]
        });


        me.items = [{
            xtype: 'polar',
            width: '100%',
            height: 500,
            store: this.myDataStore,
            insetPadding: 50,
            innerPadding: 20,
            legend: {
                docked: 'right'
            },
            interactions: ['rotate', 'itemhighlight'],
            sprites: [{
                type: 'text',
                text: 'Contributions by city vendors',
                font: '22px Helvetica',
                width: 100,
                height: 30,
                x: 40, // the sprite x position
                y: 20  // the sprite y position
            }, {
                type: 'text',
                text: 'Data: Hackathon Test data',
                font: '10px Helvetica',
                x: 12,
                y: 425
            }, {
                type: 'text',
                text: 'Source: Internet',
                font: '10px Helvetica',
                x: 12,
                y: 435
            }],
            series: [{
                type: 'pie',
                angleField: 'total',
                label: {
                    field: 'vendor',
                    display: 'outside',
                    calloutLine: {
                        length: 60,
                        width: 3
                        // specifying 'color' is also possible here
                    }
                },
                highlight: true,
                tooltip: {
                    trackMouse: true,
                    renderer: function(storeItem, item) {
                        this.setHtml(storeItem.get('vendor') + ': ' + storeItem.get('total') + '%');
                    }
                }
            }]
        }];

        this.callParent();
    }
});
