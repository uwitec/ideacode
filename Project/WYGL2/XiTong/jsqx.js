﻿Ext.MyGrid=Ext.extend(Ext.grid.GridPanel ,{
xtype:"grid",
	title:"角色权限",
	store:{
		xtype:"jsonstore",
		autoLoad:true
	},
	width:814,
	height:450,
	columns:[
		{
			header:"编号",
			sortable:true,
			resizable:true,
			dataIndex:"data1",
			width:100
		},
		{
			header:"角色名称",
			sortable:true,
			resizable:true,
			dataIndex:"data2",
			width:100
		}
	],
	initComponent: function(){
		this.tbar=[
			{
				text:"添加"
			},
			{
				text:"修改"
			},
			{
				text:"删除"
			},
			{
				text:"设置权限"
			}
		]
		Ext.MyGrid.superclass.initComponent.call(this);
	}
})