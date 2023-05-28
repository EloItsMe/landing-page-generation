cd $PWD
#! GENERATING INDEX.HTML
echo "[ Start Generating index.html ]"

touch ./index.html
echo "<!DOCTYPE html>" >> index.html
echo "<html lang="en">" >> index.html
echo "<head>" >> index.html
echo "  <meta charset="UTF-8">" >> index.html
echo "  <meta http-equiv="X-UA-Compatible" content="IE=edge">" >> index.html
echo "  <meta name="viewport" content="width=device-width, initial-scale=1.0">" >> index.html
echo "  <link rel="stylesheet" href="style.css">" >> index.html
echo "  <script src="application.js" defer></script>" >> index.html
echo "  <title>Document</title>" >> index.html
echo "</head>" >> index.html
echo "<body>" >> index.html
echo "" >> index.html
echo "</body>" >> index.html
echo "</html>" >> index.html

echo "[ index.html Generation Finished ]"

#! GENERATING JAVASCRIPT
echo "[ Start Generating application.js ]"

touch ./application.js

echo "[ application.js Generation Finished ]"

#! GENERATING ASSETS
echo "[ Start Generating All Assets ]"

mkdir ./assets
echo "  - Assets folder generated"

mkdir ./assets/images
echo "  - Images folder generated"

mkdir ./assets/stylesheets
echo "  - Stylesheets folder generated"

touch ./assets/stylesheets/application.scss
echo "//! Importing Config" >> ./assets/stylesheets/application.scss
echo "@import 'config/index';" >> ./assets/stylesheets/application.scss
echo "" >> ./assets/stylesheets/application.scss
echo "//! Importing Components" >> ./assets/stylesheets/application.scss
echo "@import 'components/index';" >> ./assets/stylesheets/application.scss
echo "" >> ./assets/stylesheets/application.scss
echo "//! Importing Pages" >> ./assets/stylesheets/application.scss
echo "@import 'pages/index'" >> ./assets/stylesheets/application.scss
echo "  - Application.scss generated"

mkdir ./assets/stylesheets/components
touch ./assets/stylesheets/components/_index.scss
echo "  - Components files generated"

mkdir ./assets/stylesheets/pages
touch ./assets/stylesheets/pages/_index.scss
echo "  - Pages files generated"

mkdir ./assets/stylesheets/config
touch ./assets/stylesheets/config/_index.scss
echo "@import 'default';" >> ./assets/stylesheets/config/_index.scss
echo "@import 'font';" >> ./assets/stylesheets/config/_index.scss
echo "@import 'color';" >> ./assets/stylesheets/config/_index.scss

touch ./assets/stylesheets/config/_color.scss
touch ./assets/stylesheets/config/_font.scss
touch ./assets/stylesheets/config/_default.scss
echo "*{" >> ./assets/stylesheets/config/_default.scss
echo "  margin: 0;" >> ./assets/stylesheets/config/_default.scss
echo "  padding: 0;" >> ./assets/stylesheets/config/_default.scss
echo "  box-sizing: border-box;" >> ./assets/stylesheets/config/_default.scss
echo "}" >> ./assets/stylesheets/config/_default.scss
echo "a{" >> ./assets/stylesheets/config/_default.scss
echo "  text-decoration: none;" >> ./assets/stylesheets/config/_default.scss
echo "  display: block;" >> ./assets/stylesheets/config/_default.scss
echo "}" >> ./assets/stylesheets/config/_default.scss
echo "li, ul{" >> ./assets/stylesheets/config/_default.scss
echo "  list-style-type: none;" >> ./assets/stylesheets/config/_default.scss
echo "}" >> ./assets/stylesheets/config/_default.scss
echo "  - Config files generated"


#! START SASS COMPILATION
sass ./assets/stylesheets/application.scss ./style.css

#! AUTO COMPILATION
echo "START THIS COMMAND IF YOU WANT TO AUTO COMPIL YOUR SCSS"
echo "sass --watch ./assets/stylesheets/application.scss ./style.css"
