
AdjustUINative Cordova Plugin ----

Steps to create this plugin

from comand prompt with npm installed:
C:\>npm install -g plugman

create plugin folder and structure skeleton
C:\>plugman create --name AdjustUINative --plugin_id cordova-plugin-adjust-ui-native --plugin_version 0.0.1

this created on my C drive:
AdjustUINative/
- plugin.xml
- src/
- www/
   - AdjustUINative.js


navigate to new plugin folder:
C:\>cd AdjustUINative
add android platform:
C:\AdjustUINative>plugman platform add --platform_name android
this added .java file and platform code to plugin.xml,
and file structure now looks like this:
AdjustUINative/
- plugin.xml
- src/
  - android/
     - AdjustUINative.java
- www/
   - AdjustUINative.js


add IOS platform:
C:\AdjustUINative>plugman platform add --platform_name ios