/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
depth = -y;
camera_get_view_x(view_camera[0]); // gets cam x pos
camera_get_view_y(view_camera[0]); // gets cam y pos
var wide = camera_get_view_width(view_camera[0]); // gets cam width
var high = camera_get_view_height(view_camera[0]); // gets cam height

camera_set_view_pos(view_camera[0],x-wide/2,y-high/2) ;
// sets camera position; x & y are the object position default variables