   M S B A M L   `   `   `  ���� F  BFacturacion, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:Facturacion.PresentacionFacturacion.Presentacion  -    'Facturacion.Presentacion.AnyadirFactura   W SPresentationCore, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     8local&clr-namespace:Facturacion.Presentacion     -   $��userControl��.��� -   $��gridPrincipal��
�������  � ColumnDefinitions  �� $��* ��� $��* ��� $
��0.7* ��� $
��0.7* ��� $
��0.7* ��� $��* �.+��� -   $��stackPanelPrincipal��$��0��$��Stretch=�.+��� $��DATOS EMPRESA��$��Center=�$
��Bold"�$��	0,10,0,20q�� $
��auto��$
��auto��$��10,0,0,0q�.+��� $��ID��$��0,0,0,5q�$��24���� -   $��txtId�� �� TextWrapping$
 Wrap=�$��60,0,0,0q�$��21��$��0��� $
��auto��$
��auto��$��Stretch=�$��10,0,0,0q�.+��� $��Fecha��$	��Top=�$��0,0,0,5q�(  "System.Windows.Controls.DatePicker  -     Name$ datePickerFechaFactura��$��Center=�$��60,0,0,0q�$��26��� $
��auto��$
��auto��$��Stretch=�$��10,0,0,0q�.+��� $��Nombre��$	��Top=�$��24��$��0,0,0,5q��� -    ��Name$ 	txtNombre��$
 Wrap=�$��60,0,0,0q�$��21��� $
��auto��$
��auto��$��Stretch=�$��10,0,0,0q�.+��� $	��NIF��$	��Top=�$��24��$��0,0,0,5q��� -   $ txtNif��$
 Wrap=�$��60,0,0,0q�$��21��� $
��auto��$
��auto��$��10,0,0,0q�.+��� $��	Provincia��$��24��$��0,0,0,5q��� -    ��Name$ comboProvincia��$��21��$��60,0,0,0q� �� 
IsEditable$
 True��� $
��auto��$
��auto��$��10,0,0,0q�.+��� $��	Municipio��$��0,0,0,5q�$��24���� -	   $ comboMunicipio��$��60,0,0,0q�$��21��$
 True��� $
��auto��$
��auto��$��10,0,0,0q�.+��� $��CP��$��0,0,0,5q�$��24���� -
   $ txtCP��$
 Wrap=�$��60,0,0,0q�$��21��� $
��auto��$
��auto��$��10,0,0,0q�.+��� $��Calle��$	��Top=�$��24��$��0,0,0,5q��� -   $ txtCalle��$
 Wrap=�$��60,0,0,0q�$��21��� $
��auto��$
��auto��$��10,0,0,0q�.+��� $��	Teléfono��$��0,0,0,5q�$��24���� -   $��txtTlf��$
 Wrap=�$��60,0,0,0q�$��21��� $
��auto��$
��auto��$��10,0,0,0q�.+��� $��Correo��$��0,0,0,5q�$��24���� -   $ 	txtCorreo��$
 Wrap=�$��60,0,0,0q�$��21���� $��DATOS CLIENTE��$��Center=�$
��Bold"�$��	0,10,0,20q�� $
��auto��$
��auto��$��10,0,0,0q�.+��� $��Cliente��$��0,0,0,5q�$��24���� -   $ 
txtCliente��$
 Wrap=�$��60,0,0,0q�$��21��� $
��auto��$
��auto��$��10,0,0,0q�.+��� $	��DNI��$��0,0,0,5q�$��24���� -   $ txtDni��$
 Wrap=�$��60,0,0,0q�$��21��� $
��auto��$
��auto��$��10,0,0,0q�.+��� $��	Provincia��$��24��$��0,0,0,5q��� -   $ comboProvinciaCliente��$��21��$��60,0,0,0q�$
 True��� $
��auto��$
��auto��$��10,0,0,0q�.+��� $��	Municipio��$��0,0,0,5q�$��24���� -   $ comboMunicipioCliente��$��60,0,0,0q�$��21��$
 True��� $
��auto��$
��auto��$��10,0,0,0q�.+��� $��CP��$��0,0,0,5q�$��24���� -   $ txtCpCliente��$
 Wrap=�$��60,0,0,0q�$��21��� $
��auto��$
��auto��$��10,0,0,0q�.+��� $��Calle��$	��Top=�$��24��$��0,0,0,5q��� -   $ txtCalleCliente��$
 Wrap=�$��60,0,0,0q�$��21���  � Orientation$ 
Horizontal=�$��Center=�$��0,50,0,0q�.+��� -   $��Crear Factura��$��0,0,20,0q�$
{�True���� -   $��btnAnyadirFila��$��Añadir Fila���� -   $��stackPanelDescripcion��$��1��$
��auto��$
��auto��.+��� -   $��scrollViewerDescripcion��$��1��$��Stretch=�$
��auto��$	��719��$
��Auto=�.���� -   $��stackPanel2��$��1��$��Stretch=�.+��� $��DESCRIPCIÓN��$��Center=�$
��Bold"�$��	10,10,0,0q�� -   $��gridDescripcion1��$
��auto��$
��auto��$��15,0,0,0q��� -   $��stackPanelCantidad��$��2��$
��auto��$
��auto��.+��� -   $��scrollViewerCantidad��$��2��$��Stretch=�$	��719��$
��Auto=�.���� -   $��stackPanel3��$��2��$��Stretch=�.+��� $��Cantidad��$��Center=�$
��Bold"�$��	10,10,0,0q��� -   $��stackPanelPrecio��$��3��$
��auto��$
��auto��.+��� -   $��scrollViewerPrecio��$��3��$��Stretch=�$	��719��$
��Auto=�.���� -   $��stackPanel4��$��3��$��Stretch=�.+��� $��Precio��$��Center=�$
��Bold"�$��	10,10,0,0q��� -    $��stackPanelImporte��$��4��$
��auto��$
��auto��.+��� -!   $��scrollViewerImporte��$��4��$��Stretch=�$	��719��$
��Auto=�.���� -"   $��stackPanel5��$��4��$��Stretch=�.+��� $��Importe��$��Center=�$
��Bold"�$��	10,10,0,0q��� $��5��$��Stretch=�.+��� $��SUBTOTAL��$��Center=�$
��Bold"�$��
40,10,0,20q��� -#   $��txtSubtotal��$
 Wrap=�$��Stretch=�$��40,0,0,0q�$��0�� �� TextAlignment$ Right=��� $��I.V.A��$��Center=�$
��Bold"�$��
40,10,0,20q��� -$   $��txtIva��$
 Wrap=�$��Stretch=�$��40,0,0,0q�$��21��$ Right=��� $��TOTAL I.V.A��$��Center=�$
��Bold"�$��
40,10,0,20q��� -%   $��txtTotalIva��$
 Wrap=�$��Stretch=�$��40,0,0,0q�$��0��$ Right=��� $��TOTAL��$��Center=�$
��Bold"�$��
40,10,0,20q��� -&   $��txtTotal��$
 Wrap=�$��Stretch=�$��40,0,0,0q�$��0��$ Right=�