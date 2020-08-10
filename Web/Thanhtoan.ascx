<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Thanhtoan.ascx.cs" Inherits="UC_Home_Thanhtoan" %>



<style>
    *{
        margin:0;
    }
    #main{
        background-color:gainsboro; 
        position:absolute; 
        width:100%;
        height:100%;
    }
    .khung{
        
        /*float:left;*/
        
        margin:0;
        
        background-color:whitesmoke;
        border-bottom:1px solid gainsboro;
        line-height:1em;
    }
    #tien{
        position:absolute;
        top:21px;
        left:535px;
        width:350px;
        padding:1em 1em;
        background-color:white;
    }
    
    .khung #thongtin{        
        float:left;
        /*width:50%;*/
        padding:0 1em;      
        height:100%;
        line-height:200px;
    }
    .khung #soluong{  
        /*width:15%;*/
        padding-top:20px;        
        height:100%;
    }
    
    .khung #gia{
        /*width:15%;*/
        height:100%;
    }    
    h4 {
        font-weight:normal;
     }
    .btn_sl{
        width:25px;
        height:25px;
        font-size:16px;
        font-weight:bold;
        border:1px solid black;
        border-radius:3px 3px 3px 3px;
        vertical-align:top;
        
    }
   .txt{
       width:35px;
       height:25px;
       text-align:center;       
       vertical-align:top;    
       font-size:14px   ;
   }
   .lbtongtien{
       color:red;
       font-size:22px;
       font-weight:bold;
   }
  
</style>
<link href="ckeditor/Sua.css" rel="stylesheet" />
<div id="main"> 

 <div >        
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  Width="535" GridLines="None" OnRowDataBound="GridView1_RowDataBound">
         <RowStyle HorizontalAlign="Left" CssClass="khung" ></RowStyle>
         <Columns >
             <asp:TemplateField HeaderText="Sản phẩm" HeaderStyle-Font-Size="13">
                 <ItemTemplate >
                     <div id="thongtin" >
                         <h4> <%# Eval("TenSanPham") %></h4>
                         
                     </div>
                 </ItemTemplate>
                 <HeaderStyle Font-Bold="True" Font-Size="14px" />
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Giá" HeaderStyle-Font-Size="14px">
                 <ItemTemplate>
                     <div id="gia">
                         <asp:Label ID="txt_gia" runat="server" Text='<%# Eval("ThanhTien","{0} VND") %>' Font-Bold="true"></asp:Label>  đ 
                       
                    </div>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Số lượng" HeaderStyle-Font-Size="14px">
                 <ItemTemplate>
                      <div id="soluong">
                          <asp:Label ID="Label1" runat="server" Text="Số lượng: " CssClass="txt"></asp:Label>
                          <asp:Label ID="txt_soluong" runat="server" Text=' <%# Eval("SoLuong") %>' CssClass="txt"  ></asp:Label>
                      </div>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField>
                 <ItemTemplate>
                     <a style=" vertical-align:text-top; font-size:16px;">
                        <asp:ImageButton ID="btn_xoa" runat="server" ImageUrl="~/images/delete.png" Width="20" CommandName="button_xoa" CommandArgument='<%# Eval("idSanPham") %>'/>
                        </a>
                 </ItemTemplate>
             </asp:TemplateField>
         </Columns>
     </asp:GridView>
  
 </div>
    
  <div id="tien">
       <div class="group">      
      <asp:TextBox id="txt_tenkh" CssClass="input" runat="server" required="true"></asp:TextBox>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Tên khách hàng</label>
    </div>
    <div class="group">      
      <asp:TextBox id="txt_diachi" CssClass="input" runat="server" required="true"></asp:TextBox>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Địa chỉ</label>
    </div>
    <div class="group">      
      <asp:TextBox id="txt_sdt" CssClass="input" runat="server" required="true"></asp:TextBox>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Số điện thoại:</label>
    </div>
      <div class="group">      
      <asp:TextBox id="txt_email" CssClass="input" runat="server" required="true"></asp:TextBox>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Gmail</label>
    </div>
      
<br />
   <h4 style="font-size:16px; float:left;"> Tổng cộng: </h4>
    <div style="float:right; text-align:center;">
        <asp:Label ID="txt_tongtien" runat="server" CssClass="lbtongtien" ></asp:Label> <a class="lbtongtien"></a>
        <br />
        <h4 style="font-size:14px; font-style:italic;  "> (Đã bào gồm VAT) </h4>
    </div>
  </div>
    <div style="position:absolute; top:450px;left:535px;width:350px;  margin-top:1em; " >
    <asp:ImageButton ID="btn_dathang" runat="server" ImageUrl="~/images/thanh-toan.png" Width="100%" OnClick="btn_dathang_Click"/>
    </div>
</div>