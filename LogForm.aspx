<%@ Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LogForm.aspx.cs" Inherits="WobNamesWS.LogForm" %>

<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.Web.v13.2, Version=13.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>


<asp:Content ID="contentMain" ContentPlaceHolderID="ContentPlaceHolder" runat="server"> 
    <div style="float:left">
        <dx:ASPxButton ID="ASPxButtonDeleteLogs" runat="server" Text="Delete logs"  
            onclick="ASPxButtonDeleteLogs_Click">
        </dx:ASPxButton>aaa
    </div>

    <div style="float:left; padding-left:10px" >
        <dx:ASPxButton ID="ASPxButtonRestart" runat="server" Text="Restart app"
            onclick="ASPxButtonRestart_Click">
        </dx:ASPxButton>
    </div>

    <br />
    <br />


    <div>
    <dx:ASPxGridView ID="ASPxGridViewLogs" runat="server" 
        AutoGenerateColumns="False" Width="95%">
        <SettingsPager PageSize="40">
        </SettingsPager>
        <Columns>
            <dx:GridViewDataTextColumn FieldName="Date" ReadOnly="True" VisibleIndex="0" Width="15%">
                <PropertiesTextEdit DisplayFormatString="dd.MM.yyyy HH:mm"  />
            </dx:GridViewDataTextColumn> 
            <dx:GridViewDataTextColumn FieldName="Level" ReadOnly="True" VisibleIndex="1" Width="5%">
            </dx:GridViewDataTextColumn>
            
            <dx:GridViewDataTextColumn FieldName="Thread" ReadOnly="True" VisibleIndex="2" Width="5%">
                <Settings AllowHeaderFilter="True" />
            </dx:GridViewDataTextColumn>
            
            <dx:GridViewDataTextColumn FieldName="Logger" ReadOnly="True" VisibleIndex="2" Width="15%">
            </dx:GridViewDataTextColumn>
            
            <dx:GridViewDataTextColumn FieldName="Message" ReadOnly="True" VisibleIndex="3" Width="25%">
            </dx:GridViewDataTextColumn>
            
            <dx:GridViewDataTextColumn FieldName="Exception" ReadOnly="True" VisibleIndex="4"  Width="40%">
            </dx:GridViewDataTextColumn>
            
        </Columns>
    </dx:ASPxGridView>
    </div>
    
</asp:Content>
