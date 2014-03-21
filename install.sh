sudo cp nemo.css /usr/share/themes/Ambiance/gtk-3.0/apps/

if [ -f /usr/share/themes/Ambiance/gtk-3.0/gtk-main.css ];
then
	echo "@import url(\"apps/nemo.css\");" | sudo tee -a /usr/share/themes/Ambiance/gtk-3.0/gtk-main.css
else
	if [ -f /usr/share/themes/Ambiance/gtk-3.0/gtk.css ];
	then
		echo "@import url(\"apps/nemo.css\");" | sudo tee -a /usr/share/themes/Ambiance/gtk-3.0/gtk.css
	fi
fi
