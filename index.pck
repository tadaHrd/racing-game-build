GDPC                                                                            	   D   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.s3tc.stex   0      �      K�Z�N�CaV�։�   res://Car.gd.remap  04             �ߢG�Q)E}� ;%�   res://Car.gdc   �      I      clUދ���˽�{��   res://Car.tscn  �      J      &��[6D9U��h�T!   res://default_env.tres         �       um�`�N��<*ỳ�8   res://game.tscn �      \      �T���R8
��N��   res://icon.png  P4      �      G1?��z�c��vN��   res://icon.png.import   �0      j      |-���s��������"   res://project.binary@A      �      �р)����r���B�        GDSC            �      ����������϶   ������۶   ���������Ӷ�   �������������¶�   ���������޶�   �����������޶���   ������۶   ���������۶�   ���������������Ŷ���   ����׶��   �����������ض���   ����¶��   �������Ŷ���   �������Ѷ���   ��۶   ��������¶��   ������۶   �����������Ӷ���   ���������¶�   �������ض���   ϶��   �     �         ?  �������?            back      forward       right         left         
   look_right     	   look_left                      	                        !      "   	   )   
   *      1      =      >      T      U      _      `      q      r      {      |      �      �      �      �      3YY8;�  Y8;�  �  Y8;�  �  Y8;�  �  Y8;�  �  YY5;�  W�  YY0�  P�	  QV�  ;�
  �  T�  P�  R�  Q�  �  �  �  P�  R�  T�  P�  R�  Q�  R�  �	  Q�  �  ;�  W�  T�  PQ�  �  W�  T�  �
  �  P�	  �  �  Q�  �  �  W�  T�  PQ�  �  W�  T�  �
  �  P�	  �  �  Q�  �  �  �  T�  T�  �  P�  T�  T�  R�  T�  P�
  R�  QR�  QY`       [gd_scene load_steps=12 format=2]

[ext_resource path="res://Car.gd" type="Script" id=1]

[sub_resource type="CubeMesh" id=1]
size = Vector3( 1.5, 0.5, 3 )

[sub_resource type="ConvexPolygonShape" id=2]
points = PoolVector3Array( -0.7225, -0.25, -1.43083, 0.694167, 0.25, 1.37472, -0.694167, 0.25, 1.37472, 0.7225, -0.25, 1.43083, 0.694167, 0.25, -1.37472, -0.7225, -0.25, 1.43083, 0.7225, -0.25, -1.43083, -0.694167, 0.25, -1.37472 )

[sub_resource type="SpatialMaterial" id=3]
albedo_color = Color( 0, 0, 0, 1 )

[sub_resource type="CylinderMesh" id=4]
material = SubResource( 3 )
top_radius = 0.4
bottom_radius = 0.4
height = 0.25
radial_segments = 20

[sub_resource type="SpatialMaterial" id=5]
albedo_color = Color( 0, 0, 0, 1 )

[sub_resource type="CylinderMesh" id=6]
material = SubResource( 5 )
top_radius = 0.4
bottom_radius = 0.4
height = 0.25
radial_segments = 20

[sub_resource type="SpatialMaterial" id=7]
albedo_color = Color( 0, 0, 0, 1 )

[sub_resource type="CylinderMesh" id=8]
material = SubResource( 7 )
top_radius = 0.4
bottom_radius = 0.4
height = 0.25
radial_segments = 20

[sub_resource type="SpatialMaterial" id=9]
albedo_color = Color( 0, 0, 0, 1 )

[sub_resource type="CylinderMesh" id=10]
material = SubResource( 9 )
top_radius = 0.4
bottom_radius = 0.4
height = 0.25
radial_segments = 20

[node name="Car" type="VehicleBody"]
script = ExtResource( 1 )

[node name="car_body" type="MeshInstance" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0 )
mesh = SubResource( 1 )

[node name="CollisionShape" type="CollisionShape" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0 )
shape = SubResource( 2 )

[node name="front_left" type="VehicleWheel" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0.88, 0.75, 1 )
use_as_steering = true
wheel_radius = 0.4
suspension_stiffness = 50.0
damping_compression = 1.9
damping_relaxation = 2.0

[node name="MeshInstance" type="MeshInstance" parent="front_left"]
transform = Transform( -4.37114e-08, -1, 0, 1, -4.37114e-08, 0, 0, 0, 1, 0, 0, 0 )
mesh = SubResource( 4 )

[node name="front_right" type="VehicleWheel" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.88, 0.75, 1 )
use_as_steering = true
wheel_radius = 0.4
suspension_stiffness = 50.0
damping_compression = 1.9
damping_relaxation = 2.0

[node name="MeshInstance" type="MeshInstance" parent="front_right"]
transform = Transform( -4.37114e-08, -1, 0, 1, -4.37114e-08, 0, 0, 0, 1, 0, 0, 0 )
mesh = SubResource( 6 )

[node name="back_left" type="VehicleWheel" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0.88, 0.75, -1 )
use_as_traction = true
wheel_radius = 0.4
suspension_stiffness = 50.0
damping_compression = 1.9
damping_relaxation = 2.0

[node name="MeshInstance" type="MeshInstance" parent="back_left"]
transform = Transform( -4.37114e-08, -1, 0, 1, -4.37114e-08, 0, 0, 0, 1, 0, 0, 0 )
mesh = SubResource( 8 )

[node name="back_right" type="VehicleWheel" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.88, 0.75, -1.005 )
use_as_traction = true
wheel_radius = 0.4
suspension_stiffness = 50.0
damping_compression = 1.9
damping_relaxation = 2.0

[node name="MeshInstance" type="MeshInstance" parent="back_right"]
transform = Transform( -4.37114e-08, -1, 0, 1, -4.37114e-08, 0, 0, 0, 1, 0, 0, 0 )
mesh = SubResource( 10 )

[node name="Camera_arm" type="SpringArm" parent="."]
transform = Transform( 1, 0, 0, 0, -0.906308, 0.422618, 0, -0.422618, -0.906308, 0, 1.6, 0 )
spring_length = 3.5

[node name="Camera" type="Camera" parent="Camera_arm"]
transform = Transform( -1, 8.74228e-08, 0, -8.74228e-08, -1, 0, 0, 0, 1, 0, 0, 0 )
      [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             [gd_scene load_steps=6 format=2]

[ext_resource path="res://Car.tscn" type="PackedScene" id=1]
[ext_resource path="res://icon.png" type="Texture" id=2]

[sub_resource type="SpatialMaterial" id=1]
flags_world_triplanar = true
albedo_texture = ExtResource( 2 )
uv1_triplanar = true

[sub_resource type="CubeMesh" id=2]
material = SubResource( 1 )
size = Vector3( 50, 1, 50 )

[sub_resource type="ConcavePolygonShape" id=3]
data = PoolVector3Array( -25, 0.5, 25, 25, 0.5, 25, -25, -0.5, 25, 25, 0.5, 25, 25, -0.5, 25, -25, -0.5, 25, 25, 0.5, -25, -25, 0.5, -25, 25, -0.5, -25, -25, 0.5, -25, -25, -0.5, -25, 25, -0.5, -25, 25, 0.5, 25, 25, 0.5, -25, 25, -0.5, 25, 25, 0.5, -25, 25, -0.5, -25, 25, -0.5, 25, -25, 0.5, -25, -25, 0.5, 25, -25, -0.5, -25, -25, 0.5, 25, -25, -0.5, 25, -25, -0.5, -25, 25, 0.5, 25, -25, 0.5, 25, 25, 0.5, -25, -25, 0.5, 25, -25, 0.5, -25, 25, 0.5, -25, -25, -0.5, 25, 25, -0.5, 25, -25, -0.5, -25, 25, -0.5, 25, 25, -0.5, -25, -25, -0.5, -25 )

[node name="game" type="Spatial"]

[node name="ground" type="MeshInstance" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, -0.5, 0 )
mesh = SubResource( 2 )

[node name="StaticBody" type="StaticBody" parent="ground"]

[node name="CollisionShape" type="CollisionShape" parent="ground/StaticBody"]
shape = SubResource( 3 )

[node name="VehicleBody" parent="." instance=ExtResource( 1 )]
    GDST@   @       ���m�Fn�+*"�   �*�    �2"}U- �������2+*UU   �������2+*UU   �������2+*UU   �������2+*UU   �������2+*UU   �������2+*UU   �������2+*UU   �������2+*UU   �������2+*UU   �������2+*UU   �������2+*UU   �������2+*UU  �*Z    �2"}Ux���M���+*"   �*P   �2
"�// ������������ ������������ ������������ ������������ ������������ ������������ ������������ ������������ ������������ ������������ ������������ ������������ ������������ �������������* � @�2
"~��� �������2+* ������������ ������������ ������������ ������C�2UUU ���������2U�� ���������2u�� ���������2UV\X ���������2U�5% ���������2]��� ���������2UV� ������C�2UUUT ������������ ������������ ������������ �������2+*PPPP �������2+* ������������ ������������ ������������ ������Մ�2�� ��������wLTT\\ �������״���� ���������[R�U ���������[�@U �������״���� ��������wL55 ������Մ�2TTVV ������������ ������������ ������������ �������2+*PPPP �������2+* ������������ ���������2U�5� ���������2U`
� ���������2�%�� ��������wL\VUU �������״���� �������״���� �������״���� �������״���� ��������wL5�UU ���������2WX� ���������2U	�� ���������2UV\r ������������ �������2+*PPPP �������2+* ���������2UU� ��������PK���� �������״���� ������mwLXUUU �������״���� �������״���� �������״���� �������״���� �������״���� �������״���� ������mwL%UUU �������״���� ��������PKK�?? ���������2UUVT �������2+*PPPP �������2+* ���������2UUU ���������2��� �������״���� �������״���� �������״���� �������״���� �������״���� �������״���� �������״���� �������״���� �������״���� �������״���� ���������2/�Kr ���������2TUUU �������2+*PPPP �������2+* ������������ ���������2���� �������״���� ���������Z��C ��������B� �U ��������wLUW\Z ��������wLUUU5 ��������wLUUU\ ��������wLU�5� ��������B
 VU ���������Z���� �������״���� ���������2RRRR ������������ �������2+*PPPP �������2+* ������������ ���������2���� �������״���� ��������Bbc� ������Y�BUUU7 �������wLSS\T ��������wL5555 ��������wL\\\\ �������wL��5 ������X�BUUU� ��������B���� �������״���� ���������2RRRR ������������ �������2+*PPPP �������2+* ������������ ���������2���� �������״���� ������=�wL5UUU ��������wL�UUU ������wLwL     ��������wL5�UU ��������wL\WUU ������wLwL     ��������wLUUU ������=�wL\UUU �������״���� ���������2RRRR ������������ �������2+*PPPP �������2+* ������������ ���������2�� ��������wL�
UU ��������wL~ -% �������TwLUUUV ��������wLU� ��������wLU� � ��������wLU� � ��������wLUWTT �������TwLUUU� ��������wL� xX ��������wL*�UU ���������2PPRR ������������ �������2+*PPPP �������2+* ������������ ���������2�%5 ������^�wLUUWT ��������wL%5�U ��������wLW �U ��������wL

U ������;�wLTVWU ������;�wL��U ��������wLT��U ��������wL� �U ��������wLX\WU ������^�wLUU� ���������2ZX\T ������������ �������2+*PPPP �������2+* ������������ ������St�2UUU ���������2��5 ��������wLUUWx �������״���� �������״���� �������״���� �������״���� �������״���� �������״���� ��������wLUU�- ���������2/�p\ ������St�2TUUU ������������ �������2+*PPPP �������2+* ������������ ������������ �������:�2?��� ���������2�UU ���������2� �U ���������2��U ���������[U � ���������[U� _ ���������2���U ���������2� zU ���������2�^UU �������:�2���� ������������ ������������ �������2+*PPPP�*0  �2"%5� ������������ ������������ ������������ ������������ ������������ ������������ ������������ ������������ ������������ ������������ ������������ ������������ ������������ �������������* ` 
 �2
"���~��o�i�+*"   �*    �N�2"-U} �������2+*  UU �������2+*  UU �������2+*  UU �������2+*  UU �������2+*  UU �������2+*  UU �������2+*  UU �������2+*  UU �������2+*  UU �������2+*  UU �������2+*  UU �������2+*  UU�*    �5�2"�xU}�?���m�+*
"�   �������2+*U%	 �������2+*U    �������2+*U    �������2+*U    �������2+*U    �������2+*U    �������2+*U   �!���?�2+*UX`@ �������2+* ������������ ���������2��� ���������2rJ� ���������2���� ���������2WPss ������������ �������2+*@@@@ �������c+*���= �������֮2�!�� ������߮:���� �������״���� �������״���� ������߮:c/�� �������֮2{H/? �������c+*| ������PK+*=��� �������֮2���� ��������IJ��Z ������{�wLUUW� ������{�wLUU� ��������IJ��� �������֮2?�OO ������PK+*| �������2+* �������ή2���� ��������BXҋ� ��������wL�U ��������wL��VU ��������B%��� �������ή2OOOO �������2+*@@@@ �������2+* ���������2��� ������^�wLXQ�� �������wL��rZ �������wL_b�� ������^�wL%EJ_ ���������2@Ook �������2+*@@@@ �������2+* �������֮2�UU �������Ʈ2���� ������Z�wLUU+ ������Z�wLUU�� �������Ʈ2���W �������֮2STUU �������2+*@@@@�����o0�2+*	%U �������2+*   U �������2+*   U �������2+*   U �������2+*   U �������2+*   U �������2+*   U���®2+*@`XUL�ȟ�����2+*� ��������l2UU�# ��������l2UUc�L��?����2+*��� ��������l2%��� ������ڝwL^UUx ������ڝwL�UU- ��������l2XrRZ ������ڕl2��%� ������|��R��,� ������|��R��8� ������ڕl2ZZXZL�������x�+*5UUU ������y�l2�UU ������y�l2��UUL������x�+*\UUU���������tl2U%����������tl2UXB@��������z}l2)�U�������z}l2h@zU�������u�2}��}���   �S�K������     ������            [remap]

importer="texture"
type="StreamTexture"
path.s3tc="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.s3tc.stex"
path.etc="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.etc.stex"
metadata={
"imported_formats": [ "s3tc", "etc" ],
"vram_texture": true
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.s3tc.stex", "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.etc.stex" ]

[params]

compress/mode=2
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=true
flags/filter=true
flags/mipmaps=true
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
      [remap]

path="res://Car.gdc"
  �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      application/config/name         Racing game    application/run/main_scene         res://game.tscn    application/config/icon         res://icon.png  +   gui/common/drop_mouse_on_gui_input_disabled            input/forwardH              events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode      W      unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            deadzone      ?
   input/backH              events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode      S      unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            deadzone      ?
   input/left0              events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode      A      unicode           echo          script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device            axis       
   axis_value       ��   script            deadzone      ?   input/right0              events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode      D      unicode           echo          script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device            axis       
   axis_value       �?   script            deadzone      ?   input/look_left0              events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode      Q      unicode           echo          script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device            axis      
   axis_value       ��   script            deadzone      ?   input/look_right0              events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode      E      unicode           echo          script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device            axis      
   axis_value       �?   script            deadzone      ?)   physics/common/enable_pause_aware_picking         $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_environment          res://default_env.tres               