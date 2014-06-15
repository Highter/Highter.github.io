<%@ Page Language="C#" MasterPageFile="~/Menu.master" AutoEventWireup="true" CodeFile="NewsPage.aspx.cs"
    Inherits="NewPage" Title="News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script src="js/NewsPage.js" type="text/javascript"></script>
    <link id="newsCss" href="css/NewsPage.css" type="text/css" rel="Stylesheet" />
    <div id="main_window">
        <div id="news_window">
            <div id="newone" class="new">
                <img src="images/news/newsOne.png" alt="one" class="pic" />
                <div id="textOne" class="text">
                    <div id="onetextTitle" class="textTitle">
                        <a>EuroCucina 2014 held from 8 to 13 April 2014</a>
                    </div>
                    <div id="onetextComment" class="textComment">
                        <a>EuroCucina is supplemented by the collateral event, “FTK - Technology for the Kitchen”, a showcase for the built-in appliance sector and cooker hoods and the various products, prototypes and ideas for the kitchen of the future.</a>                
                    </div>
                </div>
            </div>
            <div id="newtwo" class="new">
                <img src="images/news/newsTwo.png" alt="two" class="pic" />
                <div id="textTwo" class="text">
                    <div id="twotextTitle" class="textTitle">
                        <a>Milan 2014 Fashion Week Autumn/Winter</a>
                    </div>
                    <div id="twotextComment" class="textComment">
                        <a>During the Milan 2014 Fashion Week from Feb 19 to Feb 24, 136 world-top brands gathered together. What’s more, the idea “Just Fur” accidently occurred all the designers and finally made a hit fashion trend.</a>
                    </div>
                </div>
            </div>
            <div id="newthree" class="new">
                <img src="images/news/newsThree.png" alt="three" class="pic" />
                <div id="textThree" class="text">
                    <div id="threetextTitle" class="textTitle">
                        <a>CEBIT 2014 with “Datability”</a>
                    </div>
                    <div id="threetextComment" class="textComment">
                        <a>CEBIT 2014 with the theme “Datability”, ended its gorgeous debut on Mar 14. CEBIT shows its particular ways to manage large amounts of data, which is currently changing a lot of business model, production process and application programs. </a>
                    </div>
                </div>
            </div>
            <div id="newfour" class="new">
                <img src="images/news/newsFour.png" alt="four" class="pic" />
                <div id="textFour" class="text">
                    <div id="fourtextTitle" class="textTitle">
                        <a>First Sino-Italian Group <br /> Exhibition of Young Artists </a>
                    </div>
                    <div id="fourtextComment" class="textComment">
                        <a>The first Sino-Italian Group Exhibition of Young Artists was opened at 17:00 on 2013 Oct 14 in Florence, which was shown on local media, implying a great cultural integration of China and Italy. </a>
                    </div>
                </div>
            </div>
            <div id="newfive" class="new">
                <img src="images/news/newsFive.png" alt="five" class="pic" />
                <div id="textFive" class="text">
                    <div id="fivetextTitle" class="textTitle">
                        <a>2014 AWE --- Innovation & Intelligence</a>
                    </div>
                    <div id="fivetextComment" class="textComment">
                        <a>Through AWE, the greatest platform for home appliance industry, intelligent home appliance has been spread into China. Besides, issuing intelligent products intensively would definitely help upgrading and updating the whole industry.</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <div class="schedule">
    <img src="images/default/black_bg.jpg" alt="schedule" />
    <div id="processDialog">
       <img id="processLogo" src="images/default/logo.png" alt="logo" />
              <div id="barBg">
       <img src="images/default/barbg.png" alt="barbg" />
       </div>
       <div id="bar">
       <img src="images/default/bar.png" alt="bar" />
       </div>
    </div>
    </div>
</asp:Content>
