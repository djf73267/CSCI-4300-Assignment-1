<%@page import = "java.sql.*"%>
<!DOCTYPE html>
<html lang="en" style="background-color:#e8e8e8;">
    <head>
        <title>Results</title>
        <meta name="author" content="Hayden Crawford,Kylie Anderson">
		<meta name="description" content="Programming Personality Profile">
        <meta name="keywords" content="test,quiz,personality,programming,programmer">
        <meta charset="UTF-8">
		<script src="resuts.js"></script>
        <style>
            #container{
                display:grid;
				grid-template-areas:
					'logo header header header header header'
					'logo navbar navbar navbar navbar navbar'
					'results results results results results results'
					'r1 r1 r2 r2 r2 sidebar'
                    'r3 r3 r4 r4 r4 footer';
				font-family:helvetica;
				grid-gap:10px;
				margin:10px;
			}

            #logo {
				grid-area:logo;
				text-align:center;
				color:#0095ff;
				font-size:2em;
				margin-left:20px;
				margin-right:20px;
			}
			#logo:hover {
				cursor:default;
			}
        
			#header {
				grid-area:header;
				text-align:center;
				font-size:1.2em;
				padding-top:10px;
				color:#595959;
			}
			#header:hover {
				cursor:default;
			}
			#navbar {
				grid-area:navbar;
				display: grid;
				grid-template-areas:
					'i1 i2 i3 i4 i5';
				grid-gap:10px;
			}
			#i1{grid-area:i1} #i2{grid-area:i2}
			#i3{grid-area:i3} #i4{grid-area:i4}
			#i5{grid-area:i5}
			.item {
				background-color:#baeeff;
				text-align:center;
				position:relative;
				color:#595959;
				outline: 2px solid #595959;
				font-size:1.2em;
			}
			.disableditem {
				background-color:#595959;
				text-align:center;
				position:relative;
				color:black;
				outline: 2px solid black;
				font-size:1.2em;
			}
			.disableditem:hover {
				cursor:default;
			}
			.item:hover {
				background-color: darkblue;
				outline-color:white;
				color:white;
				cursor:pointer;
			}

            #results{
                grid-area: results;
                height: 150px;
				background-color:white;
				outline: 2px solid #595959;
				padding:10px;
                font-size: larger;
            }

            #r1{
                grid-area:r1;
                height: 400px;
                width: 400px;
                outline: 6px solid #0095ff;
            }

            #r2{
                grid-area:r2;
                height: 400px;
                width: 400px;
                outline: 6px solid #0095ff;
            }

            #r3{
                grid-area:r3;
                height: 400px;
                width: 400px;
                outline: 6px solid #0095ff;
            }

            #r4{
                grid-area:r4;
                height: 400px;
                width: 400px;
                outline: 6px solid #0095ff;
            }

            .dropdown {
                position: relative;
                display: inline-block;
            }

            .dropdown-content {
                display: none;
                position: absolute;
                min-width: 350px;
                min-height: 350px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,1);
                padding: 12px 16px;
                z-index: 1;
            }

            .dropdown:hover .dropdown-content {
                 display: inline;
            }
		
            #sidebar {
				grid-area:sidebar;
				background-color:white;
				outline: 2px solid #595959;
				padding:10px;
			}
			#footer {
				grid-area:footer;
				text-align:center;
				color:#595959;
            }
        </style>
    </head>

    <body>
        <div id="container">
            <div id="logo">
                 <h1><a>3  P</a></h1>
                 <h3>QUIZ</h3>
            </div>

            <div id="header" >
                <h1 id="title">PROGRAMMING PERSONALITY PROFILE</h1>
            </div>

            <div id="navbar">
                <div class="item" id = "i1">
					<h4>About</h4>
				</div>
				<div class="item" id = "i2">
					<h4>Sign in or Register</h4>
				</div>
				<div class="disableditem" id = "i3">
					<h4>Take the Quiz</h4>
				</div>
				<div class="disableditem" id = "i4">
					<h4>View Past Results</h4>
				</div>
				<div class="disableditem" id = "i5">
					<h4>Profile Information</h4>
				</div>
            </div> 

            <div id="results">
                <h2 id="result" style="color: red;"> </h2>
                <h3>Hover over the archetypes below to learn more the
                    programmer personalities.
                </h3>
            </div>

                
            <div class="dropdown" id="r1" >
                <img src="cowboy.jpg" alt="The Code Cowboy" width="400" height="400">
                <div class="dropdown-content" style="background-color:gold;"> 
                   <p>The Code Cowboy is force to be reckoned with. This archetype is 
                       a great programmer, but most likely the embodyment of the "don't do this"
                       section of a CS textbook. The code cowboy does not often plan ahead and their
                       code is long and sometimes nonsensicle. The Code Cowboy does not play well
                       with others, but nevertheless a pretty social character. They suffer from a bad case of 
                       procrastination, but always seem to pull it off at the last second. 
                   </p>
                </div>
            </div>

            <div class="dropdown" id="r2">
                <img src="ninja.jpg" alt="The Ninja" width="400" height="400">
                <div class="dropdown-content" style="background-color: lightskyblue;"> 
                   <p>The Ninja is a silent killer. They keep to themselves, but work with undeniable
                       skill and efficiency. The Ninja prefers high level languages and always works alone
                       when given the option. You may not know their name, but they probably know you. The Ninja is also a bit of a procrastinator, waiting until a few days
                       before the project is due. They follow the project guidlines to a T and plan as they go. 
                       The Ninja is a real MVP.
                   </p>
                </div>
            </div>

            <div class="dropdown" id="r3">
                <img src="magician.jpg" alt="The Magician" width="400" height="400">
                <div class="dropdown-content" style="background-color: green;"> 
                   <p>The Magician is a rare and special archetype. The Magician does things
                       by the book, but isn't afraid to get creative when the time comes.
                       The Magician prefers a higher level language but spends lots of time planning.
                       They work well in teams and are patient and mellow. The Magician prioritizes
                       organization and reuse even if that means taking things slow or adding more code.
                       The Magician likes a challenge and makes a calm and confident leader. 
                    </p>
                </div>
            </div>

            <div class="dropdown" id="r4">
                <img src="ruler.jpg" alt="The Ruler" width="400" height="400">
                <div class="dropdown-content" style="background-color:darkred;"> 
                   <p>The Ruler can be a bit of trouble maker. The Ruler is confident and concise, sometimes to a fault. They
                       rarely make mistakes and aren't afraid to speak up in class. The ruler is hesitant
                       to use extra white space and brags about their line count. Their success is in part 
                       because they are known to plan ahead and start a project early. Nonetheless, The Ruler
                       is a very successful programmer. They may not be the leader you want, but they are sometimes 
                       the leader you need.
                   </p>
                </div>
            </div>

            <div id="sidebar">
				<h4>You are not currently signed in.<br></h4>
				<p>
					Sign in to take the test, save your information, and print
					your results.
				</p>
			</div>
			<div id="footer">
				<hr>
				<br>
				<p>Made by Hayden Crawford and Kylie Anderson</p>
            </div>
            
        </div>

    </body>
</html>