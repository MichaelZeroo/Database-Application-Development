   M S B A M L   `   `   `  ����N  JVirtualShoppingMall, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:VirtualShoppingMallVirtualShoppingMall  5      > :DAL, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null&clr-namespace:DAL;assembly=DALDAL 5      )    #VirtualShoppingMall.UCAddNewProduct   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      3local!clr-namespace:VirtualShoppingMall     5      .DALclr-namespace:DAL;assembly=DAL     5      -   5          � 	Resources  5
         productViewSource��%   &	        �� 5   
   6   5      .��5      � .+�5   
   � -   5         �Name$ grid1��5      $	��Top=�6   $��	10,10,0,0q�66   $
��Left=�6I    � DataContext# [  6d   $	��242��6�   $	��245��6�    � RowDefinitions 5      �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6     � ColumnDefinitions 5      �� 5      $
��Auto �6#   �� 5      $
��Auto �6#   .+�5      �� $��Center=�6   $��0��6/   $��3q�6<   $
��Left=�6G   $��0��6b   $��Description:��6r   �� 5      -   5         ��Name$ descriptionTextBox��5      $	��120��62   $��Center=�6>   $��0��6�   $��3q�6�   $��23��6�   $
��Left=�6�   $��1��6�   ��6Y   �� *Description+ �� Mode$ TwoWay=� �� NotifyOnValidationError .  �� ValidatesOnExceptions . 6�   �� 5      $��Center=�6   $��1��6/   $��3q�6<   $
��Left=�6G   $��0��6b   $��
Max Limit:��6r   �� 5       -   5        $ max_LimitTextBox��5       $	��120��60   $��Center=�6<   $��1��6�   $��3q�6�   $��23��6�   $
��Left=�6�   $��1��6�   ��6W   �� *	Max_Limit+$ TwoWay=� .  . 6�   �� 5!      $��Center=�6   $��2��6/   $��3q�6<   $
��Left=�6G   $��0��6b   $��
Min Limit:��6r   �� 5"      -   5        $ min_LimitTextBox��5"      $	��120��60   $��Center=�6<   $��2��6�   $��3q�6�   $��23��6�   $
��Left=�6�   $��1��6�   ��6W   �� *	Min_Limit+$ TwoWay=� .  . 6�   �� 5#      $��Center=�6   $��3��6/   $��3q�6<   $
��Left=�6G   $��0��6b   $��Name:��6r   �� 5$      -   5        $ nameTextBox��5$      $	��120��6+   $��Center=�67   $��3��6�   $��3q�6�   $��23��6�   $
��Left=�6�   $��1��6�   ��6R   �� *Name+$ TwoWay=� .  . 6�   �� 5%      $��Center=�6   $��4��6/   $��3q�6<   $
��Left=�6G   $��0��6b   $��Price Per Item:��6r   �� 5&      -   5        $ pricePerItemTextBox��5&      $	��120��63   $��Center=�6?   $��4��6�   $��3q�6�   $��23��6�   $
��Left=�6�   $��1��6�   ��6Z   �� *PricePerItem+$ TwoWay=� .  . 6�   �� 5'      $��Center=�6   $��5��6/   $��3q�6<   $
��Left=�6G   $��0��6b   $��Stock:��6r   �� 5(      -   5        $ stockTextBox��5(      $	��120��6,   $��Center=�68   $��5��6�   $��3q�6�   $��23��6�   $
��Left=�6�   $��1��6�   ��6S   �� *Stock+$ TwoWay=� .  . 6�   �� 5)      $��Center=�6   $��6��6/   $��3q�6<   $
��Left=�6G   $��0��6b   $��	Warranty:��6r   �� 5*      -	   5        $ warrantyTextBox��5*      $	��120��6/   $��Center=�6;   $��6��6�   $��3q�6�   $��23��6�   $
��Left=�6�   $��1��6�   ��6V   �� *
Warranty+$ TwoWay=� .  . 6�   5+      �� 5,   
   -
   5        	 ��Name$	 btnAdd��5,      $	��ADD��6!   $��20(�6/   $
��Left=�6=   $��114,257,0,0q�6X   $	��Top=�6m   $��97��6�   $��33��6�   6�   5.      5/      