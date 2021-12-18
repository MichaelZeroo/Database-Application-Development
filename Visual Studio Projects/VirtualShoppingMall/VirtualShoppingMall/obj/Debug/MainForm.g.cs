﻿#pragma checksum "..\..\MainForm.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "FF1C17A4222680FD9FE219D4C6FC139CDB23F93A"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;
using VirtualShoppingMall;


namespace VirtualShoppingMall {
    
    
    /// <summary>
    /// MainForm
    /// </summary>
    public partial class MainForm : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 10 "..\..\MainForm.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Menu mainMenu;
        
        #line default
        #line hidden
        
        
        #line 11 "..\..\MainForm.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.MenuItem MICustomer;
        
        #line default
        #line hidden
        
        
        #line 20 "..\..\MainForm.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.MenuItem MIVendor;
        
        #line default
        #line hidden
        
        
        #line 22 "..\..\MainForm.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.MenuItem SAPMItem;
        
        #line default
        #line hidden
        
        
        #line 24 "..\..\MainForm.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.MenuItem APMItem;
        
        #line default
        #line hidden
        
        
        #line 26 "..\..\MainForm.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.MenuItem UPMItem;
        
        #line default
        #line hidden
        
        
        #line 32 "..\..\MainForm.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.MenuItem MIMallOwner;
        
        #line default
        #line hidden
        
        
        #line 36 "..\..\MainForm.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.StackPanel mainPanel;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/VirtualShoppingMall;component/mainform.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\MainForm.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.mainMenu = ((System.Windows.Controls.Menu)(target));
            return;
            case 2:
            this.MICustomer = ((System.Windows.Controls.MenuItem)(target));
            return;
            case 3:
            this.MIVendor = ((System.Windows.Controls.MenuItem)(target));
            return;
            case 4:
            this.SAPMItem = ((System.Windows.Controls.MenuItem)(target));
            
            #line 23 "..\..\MainForm.xaml"
            this.SAPMItem.Click += new System.Windows.RoutedEventHandler(this.SAPMItem_Click);
            
            #line default
            #line hidden
            return;
            case 5:
            this.APMItem = ((System.Windows.Controls.MenuItem)(target));
            
            #line 24 "..\..\MainForm.xaml"
            this.APMItem.Click += new System.Windows.RoutedEventHandler(this.APMItem_Click);
            
            #line default
            #line hidden
            return;
            case 6:
            this.UPMItem = ((System.Windows.Controls.MenuItem)(target));
            
            #line 26 "..\..\MainForm.xaml"
            this.UPMItem.Click += new System.Windows.RoutedEventHandler(this.UPMItem_Click);
            
            #line default
            #line hidden
            return;
            case 7:
            this.MIMallOwner = ((System.Windows.Controls.MenuItem)(target));
            return;
            case 8:
            this.mainPanel = ((System.Windows.Controls.StackPanel)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}

