<%@ Page Language="VB" ContentType="image/jpeg" %>
<%@ Import Namespace="System.Drawing" %>
<%@ Import Namespace="System.Drawing.Imaging" %>
<%@ Import Namespace="System.Drawing.Drawing2D" %>
<%
	Response.Clear()
	Dim height As Integer = 100
	Dim width As Integer =200
	Dim bmp As new Bitmap(width,height,PixelFormat.Format24bppRgb)
	Dim g as Graphics = Graphics.FromImage(bmp)

	g.SmoothingMode = SmoothingMode.AntiAlias
	g.Clear(Color.Orange)
	g.DrawRectangle(Pens.Gray, 2, 2, width-3, height-3)
	g.DrawString("电子工业出版社", New Font("隶书",14,FontStyle.Bold), _
				SystemBrushes.WindowText, New PointF(30,40))

	bmp.Save(Response.OutputStream, ImageFormat.Jpeg)
	g.Dispose( )
	bmp.Dispose( )
	Response.End( )
%>

