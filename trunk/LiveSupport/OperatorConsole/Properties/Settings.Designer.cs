﻿//------------------------------------------------------------------------------
// <auto-generated>
//     此代码由工具生成。
//     运行库版本:2.0.50727.1433
//
//     对此文件的更改可能会导致不正确的行为，并且如果
//     重新生成代码，这些更改将会丢失。
// </auto-generated>
//------------------------------------------------------------------------------

namespace LiveSupport.OperatorConsole.Properties {
    
    
    [global::System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.VisualStudio.Editors.SettingsDesigner.SettingsSingleFileGenerator", "9.0.0.0")]
    internal sealed partial class Settings : global::System.Configuration.ApplicationSettingsBase {
        
        private static Settings defaultInstance = ((Settings)(global::System.Configuration.ApplicationSettingsBase.Synchronized(new Settings())));
        
        public static Settings Default {
            get {
                return defaultInstance;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        public global::System.Collections.Specialized.StringCollection CannedMsg {
            get {
                return ((global::System.Collections.Specialized.StringCollection)(this["CannedMsg"]));
            }
            set {
                this["CannedMsg"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        public global::System.Collections.Specialized.StringCollection PresetLinks {
            get {
                return ((global::System.Collections.Specialized.StringCollection)(this["PresetLinks"]));
            }
            set {
                this["PresetLinks"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("True")]
        public bool PlaySoundOnChatReq {
            get {
                return ((bool)(this["PlaySoundOnChatReq"]));
            }
            set {
                this["PlaySoundOnChatReq"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("False")]
        public bool PlaySoundOnChatMsg {
            get {
                return ((bool)(this["PlaySoundOnChatMsg"]));
            }
            set {
                this["PlaySoundOnChatMsg"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("False")]
        public bool GetWebRequestOffline {
            get {
                return ((bool)(this["GetWebRequestOffline"]));
            }
            set {
                this["GetWebRequestOffline"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("False")]
        public bool StartWithWindows {
            get {
                return ((bool)(this["StartWithWindows"]));
            }
            set {
                this["StartWithWindows"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        public global::System.DateTime OperatorLoginTime {
            get {
                return ((global::System.DateTime)(this["OperatorLoginTime"]));
            }
            set {
                this["OperatorLoginTime"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("")]
        public string OperatorName {
            get {
                return ((string)(this["OperatorName"]));
            }
            set {
                this["OperatorName"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("")]
        public string OperatorPassword {
            get {
                return ((string)(this["OperatorPassword"]));
            }
            set {
                this["OperatorPassword"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("False")]
        public bool RememberPassword {
            get {
                return ((bool)(this["RememberPassword"]));
            }
            set {
                this["RememberPassword"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("False")]
        public bool AutoLogin {
            get {
                return ((bool)(this["AutoLogin"]));
            }
            set {
                this["AutoLogin"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.SpecialSettingAttribute(global::System.Configuration.SpecialSetting.WebServiceUrl)]
        [global::System.Configuration.DefaultSettingValueAttribute("http://test.zxkefu.cn/Operator.asmx")]
        public string OperatorConsole_LiveChatWS_Operator {
            get {
                return ((string)(this["OperatorConsole_LiveChatWS_Operator"]));
            }
            set {
                this["OperatorConsole_LiveChatWS_Operator"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("http://www.zxkefu.cn")]
        public string URL {
            get {
                return ((string)(this["URL"]));
            }
            set {
                this["URL"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("http://www.zxkefu.cn/GetBackPassword.aspx \r\n")]
        public string SearchPasswordURL {
            get {
                return ((string)(this["SearchPasswordURL"]));
            }
            set {
                this["SearchPasswordURL"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("http://www.zxkefu.cn/Licence.aspx ")]
        public string RegisterURL {
            get {
                return ((string)(this["RegisterURL"]));
            }
            set {
                this["RegisterURL"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("test")]
        public string FtpUser {
            get {
                return ((string)(this["FtpUser"]));
            }
            set {
                this["FtpUser"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("test")]
        public string FtpPasssword {
            get {
                return ((string)(this["FtpPasssword"]));
            }
            set {
                this["FtpPasssword"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("ftp://125.67.234.12/upload")]
        public string FtpURL {
            get {
                return ((string)(this["FtpURL"]));
            }
            set {
                this["FtpURL"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("")]
        public string WSUser {
            get {
                return ((string)(this["WSUser"]));
            }
            set {
                this["WSUser"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("True")]
        public bool ShowCloseReminder {
            get {
                return ((bool)(this["ShowCloseReminder"]));
            }
            set {
                this["ShowCloseReminder"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("True")]
        public bool CloseState {
            get {
                return ((bool)(this["CloseState"]));
            }
            set {
                this["CloseState"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("http://www.zxkefu.cn/download/operatorconsole-t.msi")]
        public string UpdateUrl {
            get {
                return ((string)(this["UpdateUrl"]));
            }
            set {
                this["UpdateUrl"] = value;
            }
        }
    }
}
