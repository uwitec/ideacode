﻿Ext.namespace('Ext.Hudongsoft')

Ext.Hudongsoft.zphtglGrid=Ext.extend(Ext.grid.GridPanel ,{
xtype:"grid",
	title:"合同列表",
	store:new Ext.data.JsonStore({
		url: 'ajax/zlgl/zphtgl.aspx?action=list',
		root : 'data',
		totalProperty : 'totalProperty',
		fields:[
		    'id','编码','客户名称','所属工业园','所属房产','合同开始时间','合同结束时间','合同状态','操作时间','备注'
		]	
	}),
	width:792,
	height:560,
	columns:[
		{
			header:"序号",
			sortable:true,
			resizable:true,
			dataIndex:"id",
			width:100
		},
		{
			header:"编码",
			sortable:true,
			resizable:true,
			dataIndex:"编码",
			width:200
		},
		{
			header:"客户名称",
			sortable:true,
			resizable:true,
			dataIndex:"客户名称",
			width:100
		},
		{
			header:"所属工业园",
			sortable:true,
			resizable:true,
			dataIndex:"所属工业园",
			width:100
		},
		{
			header:"所属房产",
			sortable:true,
			resizable:true,
			dataIndex:"所属房产",
			width:100
		},
		{
			header:"合同开始时间",
			sortable:true,
			resizable:true,
			dataIndex:"合同开始时间",
			width:150
		},
		{
			header:"合同结束时间",
			sortable:true,
			resizable:true,
			dataIndex:"合同结束时间",
			width:150,
			format:"m/d/Y"
		},
		{
			header:"合同状态",
			sortable:true,
			resizable:true,
			dataIndex:"合同状态",
			width:100
		}
	],
	
	listeners : {
   	    celldblclick: function(grid, rowIndex, columnIndex, e) {
        var r = grid.store.getAt(rowIndex);	
        grid.showDetailWindow(false, r.data);
	    }
	
	},
	
	showDetailWindow: function (add, data) { // 显示详细窗体: add: 是否是新增数据, data: 数据参数
	    var self = this;
	    var form = new Ext.FormPanel({	
            padding: 10,
            width:366,
            items: [{
                xtype: 'hidden',
                name: 'id'
            },
            {
                fieldLabel: '编码',
                name: '编码',
                width:226,
                allowBlank:false,
                xtype: 'textfield'				                           
            },
             {
                fieldLabel: '客户名称',
                name: '客户名称',
                width:226,
                allowBlank:false,
                xtype: 'textfield'				                           
            },
            
            {
                fieldLabel: '所属工业园',
                name: '所属工业园',
                width:226,
                allowBlank:false,
                xtype: 'textfield'				                           
            },{
                fieldLabel: '所属房产',
                name: '所属房产',
                width:226,
                allowBlank:false,
                xtype: 'textfield'				                           
            },
            {
                fieldLabel: '合同开始时间',
                name: '合同开始时间',
                width:226,
                allowBlank:false,
                xtype: 'textfield'				                           
            },
            {
                fieldLabel: '合同结束时间',
                name: '合同结束时间',
                width:226,
                allowBlank:false,
                xtype: 'textfield'				                           
            },
            {
                fieldLabel: '操作时间',
                name: '操作时间',
                width:226,
                disabled:true,
                allowBlank:false,
                xtype: 'textfield'				                           
            },
            {
                fieldLabel: '备注',
                name: '备注',
                width:226,
                height:60,
                allowBlank:false,
                xtype: 'textfield'				                           
            }
           
            ],
            buttons: [{
                text: '保存',
                iconCls: 'icon-save',
                handler: function (c) {                                
                    form.getForm().submit({
                        url: 'ajax/zlgl/zphtgl.aspx',
                        params: {
                            action: add?'add':'update'
                        },
                        success: function (form, action) {  
                            console.log(action.response.responseText);                                      
                            w.close();
                            self.store.reload();
                        }
                    });
                }
            },{
                text: '取消',
                iconCls: 'icon-cancel',
                handler: function (c) {
                    w.close();
                }
            }]
        });
        if (!add && data) {
            form.getForm().setValues(data);
        }
        
	    var w = new Ext.Window({
	        title: '添加合同',				        
	        items:[
	            form
	        ]
	    });
	    w.show();
	    
	},
	
	initComponent: function(){    
	    var self = this;
	    this.bbar = new Ext.PagingToolbar({
	        pageSize: 20,
	        store: self.store,
	        displayInfo: true,
	        plugins: [new Ext.ux.ProgressBarPager()]
	    });
	    var lx_store = new Ext.data.JsonStore({
		    autoLoad:true,
		    url: "ajax/zlgl/zphtgl.aspx?action=find_gyy_fclx",
		    fields: ['lx']
		});
		this.tbar=[		    
			{
				text:"新增合同",
				iconCls: 'icon-group-create',
				handler: function () {
                    self.showDetailWindow(true, null);
				}
			},
			{
				text:"修改合同",
				iconCls: 'icon-group-update',
				handler: function() {
				    var r = self.getSelectionModel().getSelected();
				    if (r) {
				        self.showDetailWindow(false, r.data);
				    }				    
				}
			},
			{
				text:"删除合同",
				iconCls: 'icon-group-delete',
				handler: function () {
				    var r = self.getSelectionModel().getSelected();
				    if (r) {
				        Ext.Msg.confirm('删除合同','确定要删除选中合同吗？',function(btn){
							if(btn == 'yes') {
								Ext.Ajax.request({
									url:'ajax/zlgl/zphtgl.aspx?action=delete',
									success:function(){
										Ext.Msg.alert('删除合同','合同删除成功！');
										self.store.reload();
									},
									params:{id: r.get('id')}
								});
							}
						});
				    }				    
				}
			},
			{
				text:"编辑固定消费项目",
				iconCls: 'icon-xieGenJin'
			},
			{
				xtype:"label",
				text:"名称："
			},
			{
				xtype:"textfield",
				fieldLabel:"标签",
				width:120
			},
			{
				xtype:"label",
				text:"工业园："
			},
			{
				xtype:"combo",
				triggerAction:"all",
				fieldLabel:"标签",
				width: 100,
				editable: false,
				store: new Ext.data.JsonStore({
				    autoLoad:true,
				    url: "ajax/zlgl/zphtgl.aspx?action=fclx_list",
				    fields: ['gyyName']
				}),
				displayField: 'gyyName',
				valueField: 'gyyName',
				listeners: {
				    'select' : function(combo, record,index){
				        lx_store.reload({params : {
				            gyy: combo.value
				        }});
				    }
				}
			},
			{
				xtype:"label",
				text:"类型："
			},
			{
				xtype:"combo",
				editable: false,
				width: 100,
				triggerAction:"all",
				fieldLabel:"标签",
				store: lx_store,
				displayField: 'lx',
				valueField: 'lx'
			},
			{
				xtype:"label",
				text:"号码："
			},
			{
				xtype:"textfield",
				fieldLabel:"标签",
				width:120
			},
			{
				text:"搜索",
				iconCls: 'icon-query'
			}
		];
		self.store.load();
		Ext.Hudongsoft.zphtglGrid.superclass.initComponent.call(this);
	}
})