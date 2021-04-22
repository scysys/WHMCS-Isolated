# WHMCS Isolated

Automatic processor to create Isolated CSS for default WHMCS Templates, that does not conflict with any other Integrations / Framworks.

## Using it on your projects

- Inside your template include all isolated css files you need. (Mostly this will be includes/head.tpl)

### Use it inside your WHMCS Template based on WHMCS Six
```html
<div class="whmcs-six-isolated">
<!-- My WHMCS Six based section -->
</div>
```

### Use it inside your WHMCS Template based on WHMCS Twenty-One
```html
<div class="whmcs-twentyone-isolated">
<!-- My WHMCS Twenty-One based section -->
</div>
```

# Process your own Isolated CSS
- Clone this repository
- Copy all original CSS files under "whmcs-processor/css/"
- Open your terminal and follow the instructions below

WHMCS Six
```
cd whmcs-processor
chmod +x compile_whmcs_six.sh
./compile_whmcs_six.sh
```

or WHMCS Twenty-One
```
cd whmcs-processor
chmod +x compile_whmcs_twentyone.sh
./compile_whmcs_twentyone.sh
```

After that you find you isolated CSS under "whmcs-processor/isolated/" which was ready to use inside your projects.
Alternative using the already created css files inside this repository.
