var locations = [
      ['<div id="content">'+ '<h1>Dev Bootcamp SF</h1><p><b>633 Folsom Street (at Hawthorne)<br>6th floor<br>San Francisco, CA 94107</b><p>(415) 800-6579<p>'+
      ' <a href="http://devbootcamp.com/">www.devbootcamp.com</a>'+
           '</div>', 37.784646, -122.397435, 25],


      ['<div id="content">'+ '<h1>gSchool SoMa</h1><p><b>44 Tehama Street<br>San Francisco, CA 94105</b><p>(415) 805-1888<p>'+
      ' <a href="http://www.galvanize.com/courses/#main">www.galvanize.com</a>'+
           '</div>', 37.787560, -122.396584, 24],


      ['<div id="content">'+ '<h1>Hack Reactor</h1><p><b>944 Market Street<br>8th Floor<br>San Francisco, CA 94102</b><p>(415) 547-0254<p>'+
      ' <a href="http://www.hackreactor.com/">www.hackreactor.com</a>'+
           '</div>', 37.783697, -122.408999, 23],


      ['<div id="content">'+ '<h1>MakerSquare</h1><p><b>611 Mission Street<br>2nd Floor<br>San Francisco, CA 94105</b><p>(512) 763-2036<p>'+
      ' <a href="http://www.makersquare.com/">www.makersquare.com</a>'+
           '</div>', 37.787488, -122.399900, 22],


      ['<div id="content">'+ '<h1>Sabio</h1><p><b>400 Corporate Pointe<br>Culver City, CA 90230</b><p>(562) 307-7589<p>'+
      ' <a href="http://sabio.la/">www.sabio.la</a>'+
           '</div>', 33.988523, -118.384711, 21],

      ['<div id="content">'+ '<h1>Tradecraft</h1><p><b>855 Front Street<br>San Francisco, CA 94111</b><p>'+
      ' <a href="http://sabio.la/">www.sabio.la</a>'+
           '</div>', 37.799549, -122.400239, 21],


      ['<div id="content">'+ '<h1>gSchool Boulder</h1><p><b>1035 Pearl Street<br>Suite 206<br>Boulder, CO 80304</b><p>(303) 749-0038<p>'+
      ' <a href="http://www.galvanize.com/courses/#main">www.galvanize.com</a>'+
           '</div>', 40.017780, -105.281960, 20],


      ['<div id="content">'+ '<h1>Turing School of Software and Design</h1><p><b>1510 Blake Street<br>Denver, CO 80202</b><p>(303) 731-3117<p>'+
      ' <a href="http://turing.io/">www.turing.io</a>'+
           '</div>', 39.749648, -105.000127, 19],


      ['<div id="content">'+ '<h1>The Iron Yard at Orlando</h1><p><b>101 S. Garland Ave.<br>Suite 102<br>Orlando, FL 32801</b><p>(407) 358-6683<p>'+
      ' <a href="http://theironyard.com/">www.theironyard.com</a>'+
           '</div>', 28.540928, -81.381216, 18],

      ['<div id="content">'+ '<h1>The Iron Yard - Tampa/St. Petersburg</h1><p><b>260 1st Ave S #300<br>St Petersburg, FL 33701</b><p>(813) 775-2275<p>'+
      ' <a href="http://sabio.la/">www.sabio.la</a>'+
           '</div>', 27.770063, -82.636420, 21],


      ['<div id="content">'+ '<h1>General Assembly at Atlanta</h1><p><b>675 Ponce de Leon Ave NE<br>Atlanta, GA 30308</b><p>(877) 348-5665<p>'+
      ' <a href="https://generalassemb.ly/education?where=atlanta">www.generalassemb.ly</a>'+
           '</div>', 33.772282, -84.365940, 17],


      ['<div id="content">'+ '<h1>The Iron Yard at Atlanta</h1><p><b>3423 Piedmont Road, NE<br>Atlanta, GA 30305</b><p>(770) 751-8046<p>'+
      ' <a href="http://theironyard.com/">www.theironyard.com</a>'+
           '</div>', 33.848719, -84.373340, 16],


      ['<div id="content">'+ '<h1>Dev Bootcamp Chicago</h1><p><b>351 West Hubbard St. (at Orleans)<br>Suite 701<br>Chicago, IL 60605</b><p>'+
      ' <a href="http://devbootcamp.com/">devbootcamp.com</a>'+
           '</div>', 41.889729, -87.637772, 15],


      ['<div id="content">'+ '<h1>The Starter League</h1><p><b>30 N Racine Ave.<br>Chicago, IL 60607</b><p>(815) 904-0824<p>'+
      ' <a href="http://www.starterleague.com/">www.starterleague.com</a>'+
           '</div>', 41.882662, -87.657021, 14],


      ['<div id="content">'+ '<h1>Dev Bootcamp NYC</h1><p><b>48 Wall St.<br>15th Floor<br>New York, NY 10005</b><p>'+
      ' <a href="http://devbootcamp.com/">devbootcamp.com</a>'+
           '</div>', 40.706367, -74.009091, 13],

      ['<div id="content">'+ '<h1>Fullstack Academy</h1><p><b>5 Hanover Square<br>Floor 25<br>New York, NY 10005</b><p>'+
      ' <a href="http://devbootcamp.com/">devbootcamp.com</a>'+
           '</div>', 40.705104, -74.009182, 13],


      ['<div id="content">'+ '<h1>The Flatiron School</h1><p><b>11 Broadway<br>Suite 260<br>New York, NY 10004</b><p>(888) 958-0569<p>'+
      ' <a href="http://flatironschool.com/">www.flatironschool.com</a>'+
           '</div>', 40.705349, -74.013991, 12],


      ['<div id="content">'+ '<h1>The Iron Yard at Raleigh-Durham</h1><p><b>334 Blackwell Street<br>Suite B017<br>Durham, NC 27701</b><p>(919) 561-6055<p>'+
      ' <a href="http://theironyard.com/locations/durham/">www.theironyard.com</a>'+
           '</div>', 35.993074, -78.904603, 11],


      ['<div id="content">'+ '<h1>Code Fellows Portland</h1><p><b>920 SW Third Ave.<br>2nd Floor<br>Portland, OR 97204</b><p>'+
      ' <a href="https://www.codefellows.org/blog/code-fellows-is-coming-to-portland-this-fall">www.codefellows.org</a>'+
           '</div>', 45.516230, -122.675907, 10],


      ['<div id="content">'+ '<h1>Epicodus</h1><p><b>208 SW 5th Ave.<br>Portland, OR 97214</b><p>'+
      ' <a href="http://www.epicodus.com/">www.epicodus.com</a>'+
           '</div>', 45.521872, -122.675646, 9],


      ['<div id="content">'+ '<h1>PDX Code Guild</h1><p><b>2626 SW Corbett Ave.<br>Suite 100<br>Portland, OR 97201</b><p>(541) 602-6215<p>'+
      ' <a href="https://pdxcodeguild.com/">www.pdxcodeguild.com</a>'+
           '</div>', 45.503863, -122.675140, 8],


      ['<div id="content">'+ '<h1>Portland Code School</h1><p><b>735 SW 20th Pl #230<br>Portland, OR 97205</b><p>(503) 308-9030<p>'+
      ' <a href="http://www.portlandcodeschool.com/">www.portlandcodeschool.com</a>'+
           '</div>', 45.533135, -122.689282, 7],


      ['<div id="content">'+ '<h1>The Iron Yard at Charleston</h1><p><b>510 Mill Street<br>Mount Pleasant, SC 29464</b><p>(843) 501-2775<p>'+
      ' <a href="http://theironyard.com/">www.theironyard.com</a>'+
           '</div>', 32.793023, -79.877967, 6],


      ['<div id="content">'+ '<h1>The Iron Yard at Greenville</h1><p><b>411 University Ridge<br>Suite 220<br>Greenville, SC 29601</b><p>(864) 952-0099<p>'+
      ' <a href="http://theironyard.com/locations/greenville/">www.theironyard.com</a>'+
           '</div>', 34.840273, -82.398268,5],

       ['<div id="content">'+ '<h1>The Iron Yard at Austin</h1><p><b>3601 S Congress Ave<br>c304<br>Austin, TX 78704</b><p>(512) 596-2939<p>'+
      ' <a href="http://theironyard.com/locations/greenville/">www.theironyard.com</a>'+
           '</div>', 30.227737, -97.759946,5],  



      ['<div id="content">'+ '<h1>The Iron Yard at Houston</h1><p><b>4203 Montrose Blvd #100<br>Houston, TX 77003</b><p>(713) 425-3797<p>'+
      ' <a href="http://theironyard.com/locations/houston/">www.theironyard.com</a>'+
           '</div>', 29.746305, -95.350369, 4],


      ['<div id="content">'+ '<h1>MakerSquare Texas</h1><p><b>716 Congress Ave., #100<br>Austin, TX 78701</b><p>'+
      ' <a href="http://www.makersquare.com/">www.makersquare.com</a>'+
           '</div>', 30.269767, -97.742665, 3],

      ['<div id="content">'+ '<h1>Ada Developers Academy</h1><p><b>1301 5th Ave<br>Suite 1500<br>Seattle, Washington 98101</b><p>'+
      ' <a href="http://www.makersquare.com/">www.makersquare.com</a>'+
           '</div>', 47.609421, -122.334755, 3],


      ['<div id="content">'+ '<h1>General Assembly at Seattle</h1><p><b>500 Yale Avenue N.<br>Seattle, WA 98109</b><p>(877) 348-5665<p>'+
      ' <a href="https://generalassemb.ly/education?where=seattle">www.generalassemb.ly</a>'+
           '</div>', 47.623358, -122.330101, 2],


      ['<div id="content">'+ '<h1>codefellows</h1><p><b>510 Boren Ave N. Seattle, WA 98109</b><p>'+
      ' <a href="https://www.codefellows.org/">www.codefellows.org</a>'+
           '</div>', 47.623569, -122.336048, 1],
    ];