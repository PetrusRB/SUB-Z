return function()
	local Cursor = {}

	Cursor.CursorType = {
		Arrow = "Arrow",
		IBeam = "IBeam",
		Wait = "Wait",
		Crosshair = "Crosshair",
		Text = "Text",
		ResizeHorizontal = "ResizeHorizontal",
		ResizeVertical = "ResizeVertical",
	}

	Cursor.CursorStyle = {
		Default = "Default",
		Hover = "Hover",
	}

	return Cursor
end
