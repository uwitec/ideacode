﻿Ext.namespace('Ext.Hudongsoft');

Ext.Hudongsoft.xxfytjlbGrid=Ext.extend(Ext.grid.GridPanel ,{
xtype:"grid",
	title:"详细费用统计列表",
	store:{
		xtype:"jsonstore",
		
	},
	width:843,
	height:560,
	columns:[
		{
			header:"序号",
			sortable:true,
			resizable:true,
			dataIndex:"data1",
			width:40
		},
		{
			header:"编码",
			sortable:true,
			resizable:true,
			dataIndex:"data2",
			width:100
		},
		{
			header:"客户名称",
			sortable:true,
			resizable:true,
			dataIndex:"data3",
			width:100
		},
		{
			header:"所属工业园",
			sortable:true,
			resizable:true,
			dataIndex:"",
			width:100
		},
		{
			header:"所属房产",
			sortable:true,
			resizable:true,
			dataIndex:"",
			width:100,
			format:"m/d/Y"
		},
		{
			header:"合同开始时间",
			sortable:true,
			resizable:true,
			dataIndex:"",
			width:100
		},
		{
			header:"合同结束时间",
			sortable:true,
			resizable:true,
			dataIndex:"",
			width:100
		},
		{
			header:"消费项目",
			sortable:true,
			resizable:true,
			dataIndex:"",
			width:100
		},
		{
			header:"月份",
			sortable:true,
			resizable:true,
			dataIndex:"",
			width:70,
			format:"m/d/Y"
		},
		{
			header:"费用",
			sortable:true,
			resizable:true,
			dataIndex:"",
			width:50,
			format:"0,000.00"
		}
	],
	initComponent: function(){
		this.tbar=[
			{
				xtype:"label",
				text:"名称："
			},
			{
				xtype:"textfield",
				fieldLabel:"标签"
			},
			{
				xtype:"label",
				text:"工业园："
			},
			{
				xtype:"combo",
				triggerAction:"all",
				fieldLabel:"标签",
				width:70
			},
			{
				xtype:"label",
				text:"类型："
			},
			{
				xtype:"combo",
				triggerAction:"all",
				fieldLabel:"标签",
				width:70
			},
			{
				xtype:"label",
				text:"费用类型："
			},
			{
				xtype:"combo",
				triggerAction:"all",
				fieldLabel:"标签",
				width:70
			},
			{
				xtype:"label",
				text:"日期："
			},
			{
				xtype:"datefield",
				fieldLabel:"标签"
			},
			{
				text:"搜索"
			}
		]
		Ext.Hudongsoft.xxfytjlbGrid.superclass.initComponent.call(this);
	}
})