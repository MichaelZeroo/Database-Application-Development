   M S B A M L   `   `   `  ����K  GTest Preparation, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:Test_PreparationTest_Preparation  5   	       Test_Preparation.ViewData   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:Test_Preparation     5   	   -   5          � Title$  ViewData��5   	   $	��450��6   $	��800��6'    � 	Resources 5	         tCustomerViewSource��%   &	        �� 5
   
   6   5      .��5      � .+�5   
   �� $��	Show Data��6   $
��Left=�6&   $	��342��6A   $��	50,26,0,0q�6N   $	��Top=�6a   $	��696��6y   .��5      �� $
��Left=�6   $��20(�64   $	��276��5      $��	10,10,0,0q�6&   $	��Top=�69   $	��642��6Q   .@�5      �� $��Show Data In Grid Form��6   .��5      � ���	#FFE5E5E5 � DataContext# [  62   .+�5      &   System.Windows.Controls.DataGrid  -   5          Name$ tCustomerDataGrid��5   #      AutoGenerateColumns .     EnableRowVirtualization . $��61,27,175,34.333q�6�      RowDetailsVisibilityMode$ VisibleWhenSelected=�6�   ��6y   ��    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5   "   -   5        emailColumn��,  &System.Windows.Controls.DataGridColumn   Header$ Email��5   d   	   Width5  /System.Windows.Controls.DataGridLengthConverter$	 SizeToHeader 6s   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 6J   �� *Email+6s     5   "   -   5        iDColumn��$ ID��5   ^   $	 SizeToHeader 6j   
 6G   �� *ID+6j     5   "   -   5        
nameColumn��$
 Name��5   b   $	 SizeToHeader 6p   
 6I   �� *Name+6p   5      5      5      �� 5      $��Show Data in Detail View��6   .��5      � ���	#FFE5E5E5$��0,0,0.333,-17.333q�62   .+�5      � -   5         �Name$ grid1��5      # [  6.   $
��Left=�6a   $��
127,29,0,0q�6|   $	��Top=�6�    � ColumnDefinitions 5      �� 5   "   $
��Auto �63   �� 5    "   $
��Auto �63    � RowDefinitions 5"      �� 5#   "   $
��Auto �60   �� 5$   "   $
��Auto �60   �� 5%   "   $
��Auto �60   �� 5&   "   $
��Auto �60   .+�5(      �� $��Email:��6$   $��0��65   $
��Left=�6E   $��3q�6`   $��0��6k   $��Center=�6x   �� 5)      -   5         ��Name$ emailTextBox��5)   &   $��1��6<   $
��Left=�6L   $��23��6g   $��3q�6s   $��0��6~   $��Center=�6�   $	��120��6  ��6�   �� *Email+ �� Mode$ TwoWay=� �� NotifyOnValidationError .  �� ValidatesOnExceptions . 6  �� 5*      $	��ID:��6$   $��0��62   $
��Left=�6B   $��3q�6]   $��1��6h   $��Center=�6u   �� 5+      -   5        $ 	iDTextBox��5+   &   $��1��69   $
��Left=�6I   $��23��6d   $��3q�6p   $��1��6{   $��Center=�6�   $	��120��6�   ��6�   �� *ID+$ TwoWay=� .  . 6�   �� 5,      $��Name:��6$   $��0��64   $
��Left=�6D   $��3q�6_   $��2��6j   $��Center=�6w   �� 5-      -	   5        $ nameTextBox��5-   &   $��1��6;   $
��Left=�6K   $��23��6f   $��3q�6r   $��2��6}   $��Center=�6�   $	��120��6  ��6�   �� *Name+$ TwoWay=� .  . 6  �� 5.      $��Phone:��6$   $��0��65   $
��Left=�6E   $��3q�6`   $��3��6k   $��Center=�6x   �� 5/      -
   5        $ phoneTextBox��5/   &   $��1��6<   $
��Left=�6L   $��23��6g   $��3q�6s   $��3��6~   $��Center=�6�   $	��120��6  ��6�   �� *Phone+$ TwoWay=� .  . 6  50      �� 51      -   5        $��btnNext��51   !   $
��Next��52      $
��Left=�6,   $��
445,63,0,0q�6G   $	��Top=�6[   $��75��6s   6~   �� 53      -   5        $��btnPrevious��53   !   $��Previous��54      $
��Left=�60   $��445,124,0,0q�6K   $	��Top=�6`   $��75��6x   6�   55      56      57      58      5:      5;      