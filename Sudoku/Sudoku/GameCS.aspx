<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GameCS.aspx.cs" Inherits="Game.GameCS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">
        .center {
            text-align: center;
        }

        .table-center {
            margin: auto;
        }

        div.game-table {
            border: 4px solid black;
            width: 610px;
            margin: auto;
        }

        table.game-table {
            border-collapse: collapse;
        }

            table.game-table tr:first-child td {
                border-top-width: 0px;
            }

            table.game-table tr:last-child td {
                border-bottom-width: 0px;
            }

            table.game-table td:first-child {
                border-left-width: 0px;
            }

            table.game-table td:last-child {
                border-right-width: 0px;
            }

            table.game-table td {
                border: 1px solid gray;
                padding: 0px;
            }

                table.game-table td input[type=text] {
                    width: 62px;
                    height: 62px;
                    font-size: 35px;
                    font-weight: 300;
                    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                    text-align: center;
                    color: transparent;
                    text-shadow: 0 0 0 black;
                }

                    table.game-table td input[type=text]:focus {
                        border: 2px solid #325B84;
                    }

                table.game-table td:nth-child(3) {
                    border-right: 5px solid gray;
                }

                table.game-table td:nth-child(6) {
                    border-right: 5px solid gray;
                }

            table.game-table tr:nth-child(3) td {
                border-bottom: 5px solid gray;
            }

            table.game-table tr:nth-child(6) td {
                border-bottom: 5px solid gray;
            }
    </style>
</head>
<body>

    <form id="form1" runat="server">
        <asp:ScriptManager ID="sm1" runat="server"></asp:ScriptManager>

        <br />
        <h2 class="center">Sudoku</h2>
        <div class="center">
            <asp:Button ID="btnEasy" runat="server" Text="Easy" Width="75px" OnClick="SelectDifficulty" />
            <asp:Button ID="btnMedium" runat="server" Text="Medium" Width="75px" OnClick="SelectDifficulty" />
            <asp:Button ID="btnHard" runat="server" Text="Hard" Width="75px" OnClick="SelectDifficulty" />
            <asp:Button ID="btnExtreme" runat="server" Text="Extreme" Width="75px" OnClick="SelectDifficulty" />
        </div>

        <asp:UpdatePanel ID="pnlGameTable" runat="server">
            <ContentTemplate>
                <div id="dGameTable" runat="server" class="game-table">
                    <table class="game-table">
                        <tr>
                            <td>
                                <asp:TextBox ID="test1" runat="server" Visible="false"></asp:TextBox>
                                <asp:TextBox ID="c00" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c01" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c02" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c03" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c04" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c05" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c06" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c07" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c08" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="c10" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c11" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c12" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c13" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c14" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c15" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c16" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c17" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c18" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="c20" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c21" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c22" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c23" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c24" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c25" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c26" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c27" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c28" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="c30" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c31" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c32" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c33" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c34" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c35" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c36" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c37" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c38" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="c40" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c41" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c42" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c43" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c44" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c45" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c46" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c47" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c48" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="c50" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c51" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c52" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c53" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c54" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c55" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c56" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c57" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c58" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="c60" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c61" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c62" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c63" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c64" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c65" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c66" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c67" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c68" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="c70" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c71" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c72" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c73" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c74" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c75" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c76" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c77" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c78" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="c80" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c81" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c82" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c83" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c84" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c85" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c86" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c87" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="c88" runat="server" MaxLength="1" AutoPostBack="true" OnTextChanged="Verify" Autocomplete="off"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
        <br />
        <div class="center">
            <h3>Wishlist</h3>
            <ul class="table-center" style="width: 30%">
                <li>Keyboard navigation
                </li>
                <li>Rebuild in javascript
                </li>
            </ul>
        </div>

    </form>
</body>
</html>
