<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Game.aspx.cs" Inherits="Game.Game" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">
        .center {
            text-align: center;
        }

        div.game-table {
            border: 4px solid black;
            width: 558px;
            margin: auto;
        }

        table.game-table {
            border-collapse: collapse;
        }

            table.game-table tr:first-child td  {
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
                width: 62px;
                height: 62px;
                font-size: 35px;
                font-weight: 300;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                border: 1px solid gray;
                text-align: center;
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

    <script type="text/javascript">
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <h2 class="center">Sudoku</h2>

        <div class="game-table">
            <table class="game-table">
                <tr>
                    <td>
                        <div data-index="0"></div>
                    </td>
                    <td>
                        <div data-index="1"></div>
                    </td>
                    <td>
                        <div data-index="2"></div>
                    </td>
                    <td>
                        <div data-index="3"></div>
                    </td>
                    <td>
                        <div data-index="4"></div>
                    </td>
                    <td>
                        <div data-index="5"></div>
                    </td>
                    <td>
                        <div data-index="6"></div>
                    </td>
                    <td>
                        <div data-index="7"></div>
                    </td>
                    <td>
                        <div data-index="8"></div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div data-index="9"></div>
                    </td>
                    <td>
                        <div data-index="10"></div>
                    </td>
                    <td>
                        <div data-index="11"></div>
                    </td>
                    <td>
                        <div data-index="12"></div>
                    </td>
                    <td>
                        <div data-index="13"></div>
                    </td>
                    <td>
                        <div data-index="14"></div>
                    </td>
                    <td>
                        <div data-index="15"></div>
                    </td>
                    <td>
                        <div data-index="16"></div>
                    </td>
                    <td>
                        <div data-index="17"></div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div data-index="18"></div>
                    </td>
                    <td>
                        <div data-index="19"></div>
                    </td>
                    <td>
                        <div data-index="20"></div>
                    </td>
                    <td>
                        <div data-index="21"></div>
                    </td>
                    <td>
                        <div data-index="22"></div>
                    </td>
                    <td>
                        <div data-index="23"></div>
                    </td>
                    <td>
                        <div data-index="24"></div>
                    </td>
                    <td>
                        <div data-index="25"></div>
                    </td>
                    <td>
                        <div data-index="26"></div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div data-index="27"></div>
                    </td>
                    <td>
                        <div data-index="28"></div>
                    </td>
                    <td>
                        <div data-index="29"></div>
                    </td>
                    <td>
                        <div data-index="30"></div>
                    </td>
                    <td>
                        <div data-index="31"></div>
                    </td>
                    <td>
                        <div data-index="32"></div>
                    </td>
                    <td>
                        <div data-index="33"></div>
                    </td>
                    <td>
                        <div data-index="34"></div>
                    </td>
                    <td>
                        <div data-index="35"></div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div data-index="36"></div>
                    </td>
                    <td>
                        <div data-index="37"></div>
                    </td>
                    <td>
                        <div data-index="38"></div>
                    </td>
                    <td>
                        <div data-index="39"></div>
                    </td>
                    <td>
                        <div data-index="40"></div>
                    </td>
                    <td>
                        <div data-index="41"></div>
                    </td>
                    <td>
                        <div data-index="42"></div>
                    </td>
                    <td>
                        <div data-index="43"></div>
                    </td>
                    <td>
                        <div data-index="44"></div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div data-index="45"></div>
                    </td>
                    <td>
                        <div data-index="46"></div>
                    </td>
                    <td>
                        <div data-index="47"></div>
                    </td>
                    <td>
                        <div data-index="48"></div>
                    </td>
                    <td>
                        <div data-index="49"></div>
                    </td>
                    <td>
                        <div data-index="50"></div>
                    </td>
                    <td>
                        <div data-index="51"></div>
                    </td>
                    <td>
                        <div data-index="52"></div>
                    </td>
                    <td>
                        <div data-index="53"></div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div data-index="54"></div>
                    </td>
                    <td>
                        <div data-index="55"></div>
                    </td>
                    <td>
                        <div data-index="56"></div>
                    </td>
                    <td>
                        <div data-index="57"></div>
                    </td>
                    <td>
                        <div data-index="58"></div>
                    </td>
                    <td>
                        <div data-index="59"></div>
                    </td>
                    <td>
                        <div data-index="60"></div>
                    </td>
                    <td>
                        <div data-index="61"></div>
                    </td>
                    <td>
                        <div data-index="62"></div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div data-index="63"></div>
                    </td>
                    <td>
                        <div data-index="64"></div>
                    </td>
                    <td>
                        <div data-index="65"></div>
                    </td>
                    <td>
                        <div data-index="66"></div>
                    </td>
                    <td>
                        <div data-index="67"></div>
                    </td>
                    <td>
                        <div data-index="68"></div>
                    </td>
                    <td>
                        <div data-index="69"></div>
                    </td>
                    <td>
                        <div data-index="70"></div>
                    </td>
                    <td>
                        <div data-index="71"></div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div data-index="72"></div>
                    </td>
                    <td>
                        <div data-index="73"></div>
                    </td>
                    <td>
                        <div data-index="74"></div>
                    </td>
                    <td>
                        <div data-index="75"></div>
                    </td>
                    <td>
                        <div data-index="76"></div>
                    </td>
                    <td>
                        <div data-index="77"></div>
                    </td>
                    <td>
                        <div data-index="78"></div>
                    </td>
                    <td>
                        <div data-index="79"></div>
                    </td>
                    <td>
                        <div data-index="80"></div>
                    </td>
                </tr>
            </table>
        </div>

    </form>
</body>
</html>
