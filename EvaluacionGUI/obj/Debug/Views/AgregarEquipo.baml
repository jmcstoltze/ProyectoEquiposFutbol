   M S B A M L   `   `   `  ����H  DEvaluacionGUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:EvaluacionGUI.ViewsEvaluacionGUI.Views  5   	   '    !EvaluacionGUI.Views.AgregarEquipo   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:EvaluacionGUI.Views     5   	     � Title$  Agregar Equipo��5   	   $	��450��6    $	��900��6-   .��5	      � .+�5
   
   �� -   5         ��Name$ lblNombreEquipo��5
      $��Nombre del equipo��6)   $
��Left=�6E   $��	60,60,0,0q�6`   $	��Top=�6s   �� 5   
   -   5        $ lblCantidadJugadores��5      $��Cantidad de jugadores��6.   $
��Left=�6N   $��	60,90,0,0q�6i   $	��Top=�6|   �� 5   
   -   5        $ lblNombreDT��5      $��Director técnico��6%   $
��Left=�6@   $��
60,120,0,0q�6[   $	��Top=�6o   �� 5   
   -   5        $ lblTipoEquipo��5      $��Tipo de equipo��6'   $
��Left=�6@   $��
60,150,0,0q�6[   $	��Top=�6o   �� 5   
   -   5        $ lblCapitanEquipo��5      $��Capitán equipo��6*   $
��Left=�6C   $��
60,180,0,0q�6^   $	��Top=�6r   �� 5   
   -   5        $ lblTipoSub21��5      $��Equipo sub-21��6&   $
��Left=�6>   $��
60,210,0,0q�6Y   $	��Top=�6m   �� 5   
   -   5         ��Name$ txtNombreEquipo��5      $
��Left=�6+   $��
230,64,0,0q�6F    �� TextWrapping$
 Wrap=�6Z   $	��Top=�6n   $	��200��6�   �� 5   
   -   5        $ txtCantidadJugadores��5      $
��Left=�60   $��
230,94,0,0q�6K   $
 Wrap=�6_   $	��Top=�6s   $	��200��6�   6�   �� 5   
   -	   5        $ txtNombreDT��5      $
��Left=�6'   $�� 230, 124, 0,0q�6B   $
 Wrap=�6Z   $	��Top=�6n   $	��200��6�   �� 5   
   -
   5         ��Name$ cmbTipoEquipo��5      $
��Left=�6*   $��230,154,0,0q�6E   $	��Top=�6Z   $	��200��6r    �� SelectedIndex$ 0��6~   .@�5      �� $��Seleccionar��6    �� 
IsSelected . {�.  6C   �� 5      $��Femenino��6   �� 5      $��	Masculino��6   5      �� 5   
   -   5        $ txtCapitanEquipo��5      $
��Left=�6,   $�� 230, 184, 0,0q�6G   $
 Wrap=�6_   $	��Top=�6s   $	��200��6�   �� 5   
   -   5         ��Name$ chkTieneSub21��5      $��Tiene��6*   $
��Left=�6:   $��230, 216, 0, 0q�6U   $	��Top=�6m   �� 5   
   -   5         ��Name$ btnAgregarEquipo��5      $��Agregar equipo��6+   $
��Left=�6D   $��230,280,0,0q�6_   $	��120��6t   $	��Top=�6�   6�   5      5       