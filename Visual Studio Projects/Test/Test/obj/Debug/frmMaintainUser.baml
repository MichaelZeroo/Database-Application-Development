   M S B A M L   `   `   `  ����?  ;Test, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:TestTest  5   	       Test.frmMaintainUser   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   $localclr-namespace:Test     5   	   -   5          � Title$  frmMaintainUser��5   	   $	��450��6!   $	��800��6.    � 	Resources 5	         userViewSource��%   &	        �� 5
   
   6   5      .��5      �  � DataContext# [  6   .+�5   
   �� $!��Search first or last name: ��6   $��20(�66   $
��Left=�6D   $��	27,25,0,0q�6_   $	��Top=�6r   $��40��6�   $	��251��6�   �� 5   
   -   5        $��searchTextBox��5      $
��Left=�6'   $��42��6B   $��
335,23,0,0q�6N    �� TextWrapping$
 Wrap=�6b   $	��Top=�6v   $	��209��6�   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ userDataGrid��5         AutoGenerateColumns .     EnableRowVirtualization . $��204,203,218.6,28q�6|      RowDetailsVisibilityMode$ VisibleWhenSelected=�6�   ��6d   ��    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      -   5        first_NameColumn��,  &System.Windows.Controls.DataGridColumn	   Header$	 
First Name��5   ^   
   Width5  /System.Windows.Controls.DataGridLengthConverter$
 SizeToHeader 6r   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6?   �� *
First_Name+6r     5      -   5        last_NameColumn��$	 	Last Name��5   \   $
 SizeToHeader 6o    6>   �� *	Last_Name+6o     5      -   5        passwordColumn��$	 Password��5   Z   $
 SizeToHeader 6l    6=   �� *
Password+6l     5      -   5        positionColumn��$	 Position��5   Z   $
 SizeToHeader 6l    6=   �� *
Position+6l     5      -   5        user_IDColumn��$	 User ID��5   X   $
 SizeToHeader 6i    6<   �� *	User_ID+6i     5      -	   5        user_NameColumn��$	 	User Name��5   \   $
 SizeToHeader 6o    6>   �� *	User_Name+6o   5      �� 5   
   -
   5        $��	btnSearch��5      $��Search��6"   $
��Left=�63   $��
653,19,0,0q�6N   $	��Top=�6b   $��99��6z   $��46��6�   6�   �� 5   
   -   5        $��	btnUpdate��5      $��Update User��6"   $
��Left=�68   $��312,160,0,0q�6S   $	��Top=�6h   $	��143��6�   $��38��6�   6�   5      5      