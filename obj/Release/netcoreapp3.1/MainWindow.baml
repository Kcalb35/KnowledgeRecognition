   M S B A M L   `   `   `  ���� M  I知识点再认器, Version=0.1.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:知识点再认器知识点再认器  #    知识点再认器.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     2local clr-namespace:知识点再认器     -     � Title$  知识再认��$	��400��$	��600��.����  �� Padding$ 10q�._��� .+��  � ColumnDefinitions �� $��3* ��� $��* �.+��� $��0��.+��� -    ��Name$ model��$��10q�$��
test模式��$��18(�$
��Bold"�$��Center=��� -   $ progress��$��0 0 0 10q�$	��0/0��$��14(�$��Center=��� -   $
 Card��$��
50 50 50 0q�$
��Wrap=�$
��none��$��Center=�$��Center=�$��30(��� $��1��.+��� -    ��Name$ Models��$��	0 10 0 30q� �� SelectedIndex$ 1��.@��� $��逐个顺序���� $��逐个随机���� $��多个随机���� $��0 0 0 10q�$��单次随机数量���� -    ��Name$ 
randNumber��$��3q��� -    ��Name$ btn_LoadFile��$��
30 20 30 0q�$��3q�$��载入文件���� -   $��
30 20 30 0q�$��3q�$��再来一次���� -	   $��
30 20 30 0q�$��3q�$��生词再认���� $��
30 20 30 0q�$��3q�$��生词保存��� $��100 20 100 0q� �� $��* ��� $��* ��� $��* �.+��� -
   $ btn_left��$��	20 0 20 0q�$��0��$��20(�$��<-���� -   $ 	btn_right��$��	20 0 20 0q�$��2��$��20(�$��->���� -   $ btn_save��$��	20 0 20 0q�$��1��$��20(�$
��save��