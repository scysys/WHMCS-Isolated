#!/bin/bash

### WHMCS Isolated Processor
## Config
# WHMCS Six Template
whmcs_all="all";
whmcs_invoice="invoice";
whmcs_oauth="oauth";
whmcs_quote="quote";
whmcs_store="store";
whmcs_styles="styles";

# WHMCS Isolated class name
whmcs_class=".whmcs-six-isolated";

###
### DO NOT CHANGE ANYTHING BELOW THIS LINE ###
###

## Create less files for WHMCS Six
cat > less/$whmcs_all.less << EOF
$whmcs_class {
  @import (less) "css/$whmcs_all.css";
}
EOF

cat > less/$whmcs_invoice.less << EOF
$whmcs_class {
  @import (less) "css/$whmcs_invoice.css";
}
EOF

cat > less/$whmcs_oauth.less << EOF
$whmcs_class {
  @import (less) "css/$whmcs_oauth.css";
}
EOF

cat > less/$whmcs_quote.less << EOF
$whmcs_class {
  @import (less) "css/$whmcs_quote.css";
}
EOF

cat > less/$whmcs_store.less << EOF
$whmcs_class {
  @import (less) "css/$whmcs_store.css";
}
EOF

cat > less/$whmcs_styles.less << EOF
$whmcs_class {
  @import (less) "css/$whmcs_styles.css";
}
EOF

## Process created files
# Default files (add minify later)
lessc less/$whmcs_all.less isolated/$whmcs_all-isolated.css
lessc less/$whmcs_invoice.less isolated/$whmcs_invoice-isolated.css
lessc less/$whmcs_oauth.less isolated/$whmcs_oauth-isolated.css
lessc less/$whmcs_quote.less isolated/$whmcs_quote-isolated.css
lessc less/$whmcs_store.less isolated/$whmcs_store-isolated.css
lessc less/$whmcs_styles.less isolated/$whmcs_styles-isolated.css

### Search / Replace
## Using Perl. SED does not working right under OSX (https://stackoverflow.com/questions/4247068/sed-command-with-i-option-failing-on-mac-but-works-on-linux)
# Remove "body" from css
body=" body";
perl -i -pe"s/$whmcs_class$body/$whmcs_class/g" isolated/*

# Remove "html" from css
html=" html";
perl -i -pe"s/$whmcs_class$html/$whmcs_class/g" isolated/*

# Output a simple message, without check for any errors at this time.
echo "script has ended";

exit