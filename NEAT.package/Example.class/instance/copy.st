copying
copy 
|newExample|
newExample := Example new.
newExample grid: grid copy;
			  smallPosition: smallPosition;
			  smallIndex: smallIndex;
			  largePosition: largePosition;
			  smallSize: smallSize.
^ newExample 