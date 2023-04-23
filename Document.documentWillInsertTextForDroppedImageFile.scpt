FasdUAS 1.101.10   ��   ��    k             l      ��  ��   |v
	Changes the text that is created when dragging an image 
	into a BBEdit text file.
	
	The text file must have .tex extension otherwise the
	default markup image link is created.
	
	Creates BBEdit placeholders for SCALE and CAPTION and 
	an auto generated label
	
	This program is free software: you can redistribute it and/or modify
	it under the terms of version 3 of the GNU General Public License 
	as published by the Free Software Foundation.

	This program is distributed in the hope that it will be useful, but 
	WITHOUT ANY WARRANTY; without even the implied warranty of 
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the 
	GNU General Public License for more details.
	
	You should have received a copy of the GNU General Public License 
	along with this program. If not, see <https://www.gnu.org/licenses/>.	
	
	Andrew White https://github.com/illustrious-otter
     � 	 	� 
 	 C h a n g e s   t h e   t e x t   t h a t   i s   c r e a t e d   w h e n   d r a g g i n g   a n   i m a g e   
 	 i n t o   a   B B E d i t   t e x t   f i l e . 
 	 
 	 T h e   t e x t   f i l e   m u s t   h a v e   . t e x   e x t e n s i o n   o t h e r w i s e   t h e 
 	 d e f a u l t   m a r k u p   i m a g e   l i n k   i s   c r e a t e d . 
 	 
 	 C r e a t e s   B B E d i t   p l a c e h o l d e r s   f o r   S C A L E   a n d   C A P T I O N   a n d   
 	 a n   a u t o   g e n e r a t e d   l a b e l 
 	 
 	 T h i s   p r o g r a m   i s   f r e e   s o f t w a r e :   y o u   c a n   r e d i s t r i b u t e   i t   a n d / o r   m o d i f y 
 	 i t   u n d e r   t h e   t e r m s   o f   v e r s i o n   3   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   
 	 a s   p u b l i s h e d   b y   t h e   F r e e   S o f t w a r e   F o u n d a t i o n . 
 
 	 T h i s   p r o g r a m   i s   d i s t r i b u t e d   i n   t h e   h o p e   t h a t   i t   w i l l   b e   u s e f u l ,   b u t   
 	 W I T H O U T   A N Y   W A R R A N T Y ;   w i t h o u t   e v e n   t h e   i m p l i e d   w a r r a n t y   o f   
 	 M E R C H A N T A B I L I T Y   o r   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E .   S e e   t h e   
 	 G N U   G e n e r a l   P u b l i c   L i c e n s e   f o r   m o r e   d e t a i l s . 
 	 
 	 Y o u   s h o u l d   h a v e   r e c e i v e d   a   c o p y   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   
 	 a l o n g   w i t h   t h i s   p r o g r a m .   I f   n o t ,   s e e   < h t t p s : / / w w w . g n u . o r g / l i c e n s e s / > . 	 
 	 
 	 A n d r e w   W h i t e   h t t p s : / / g i t h u b . c o m / i l l u s t r i o u s - o t t e r 
   
  
 l     ��������  ��  ��        j     �� �� 0 perl_script    m        �  � 
 u s e   F i l e : : S p e c ;   
 u s e   F i l e : : B a s e n a m e ; 
 c h o m p ( m y   $ i m g _ p a t h   =   s h i f t ) ; 
 c h o m p ( m y   $ d o c _ p a t h   =   s h i f t ) ; 
 m y   $ d i r   =   F i l e : : B a s e n a m e : : d i r n a m e ( $ d o c _ p a t h ) ; 
 m y   $ r e l _ p a t h   =   F i l e : : S p e c - > a b s 2 r e l ( $ i m g _ p a t h , $ d i r ) ; 
 m y   ( $ d o c _ n a m e , $ d o c _ d i r , $ d o c _ e x t )   =   f i l e p a r s e ( $ d o c _ p a t h , q r / \ . [ ^ . ] * / ) ; 
 m y   ( $ i m g _ n a m e , $ i m g _ d i r , $ i m g _ e x t )   =   f i l e p a r s e ( $ i m g _ p a t h , q r / \ . [ ^ . ] * / ) ; 
 m y   ( $ r e l _ n a m e , $ r e l _ d i r , $ r e l _ e x t )   =   f i l e p a r s e ( $ r e l _ p a t h , q r / \ . [ ^ . ] * / ) ; 
 m y   $ l a b e l   =   $ r e l _ d i r . $ r e l _ n a m e ; 
 $ l a b e l   = ~   s ! / ! _ ! g ; 
 $ l a b e l   = ~   s / ^ ( \ . | _ ) * / / g ; 
 p r i n t f   " % s \ n % s " , $ r e l _ p a t h , $ l a b e l ;      l     ��������  ��  ��     ��  i        I      �� ���� V0 )documentwillinserttextfordroppedimagefile )documentWillInsertTextForDroppedImageFile      o      ���� 0 doc_ref        o      ���� 0 img_ref     ��  o      ���� 0 default_text  ��  ��    k     l       l     ��������  ��  ��         r      ! " ! n      # $ # 1    ��
�� 
psxp $ o     ���� 0 img_ref   " o      ���� 0 img_path      % & % r     ' ( ' c     ) * ) n    	 + , + m    	��
�� 
file , o    ���� 0 doc_ref   * m   	 
��
�� 
alis ( o      ���� 0 doc_file   &  - . - r     / 0 / n     1 2 1 1    ��
�� 
psxp 2 o    ���� 0 doc_file   0 o      ���� 0 doc_path   .  3 4 3 l   ��������  ��  ��   4  5 6 5 Z    j 7 8�� 9 7 D     : ; : l    <���� < c     = > = o    ���� 0 doc_path   > m    ��
�� 
ctxt��  ��   ; m     ? ? � @ @  . t e x 8 k    c A A  B C B l   ��������  ��  ��   C  D E D Q    a F G H F k    V I I  J K J r    K L M L n    < N O N 2  : <��
�� 
cpar O l   : P���� P I   :�� Q��
�� .sysoexecTEXT���     TEXT Q b    6 R S R b    2 T U T b    0 V W V b    , X Y X b    * Z [ Z b    " \ ] \ m      ^ ^ � _ _ 6 / u s r / b i n / e n v   p e r l   - w C S D A   - e ] 1     !��
�� 
spac [ n   " ) ` a ` 1   ' )��
�� 
strq a o   " '���� 0 perl_script   Y 1   * +��
�� 
spac W n   , / b c b 1   - /��
�� 
strq c o   , -���� 0 img_path   U 1   0 1��
�� 
spac S n   2 5 d e d 1   3 5��
�� 
strq e o   2 3���� 0 doc_path  ��  ��  ��   M J       f f  g h g o      ���� 0 rel_path   h  i�� i o      ���� 0 	img_label  ��   K  j�� j L   L V k k b   L U l m l b   L S n o n b   L Q p q p b   L O r s r m   L M t t � u u � 
 \ b e g i n { f i g u r e } [ H ] 
     \ c e n t e r i n g 
 	 \ i n c l u d e g r a p h i c s [ w i d t h = < # S C A L E # > \ l i n e w i d t h ] { s o   M N���� 0 rel_path   q m   O P v v � w w H }   
     \ c a p t i o n { < # C A P T I O N # > } 
     \ l a b e l { o o   Q R���� 0 	img_label   m m   S T x x � y y  } 
 \ e n d { f i g u r e } 
��   G R      �� z��
�� .ascrerr ****      � **** z o      ���� 0 e  ��   H r   ^ a { | { o   ^ _���� 0 e   | o      ���� 0 rel_path   E  } ~ } l  b b��������  ��  ��   ~  ��  l  b b��������  ��  ��  ��  ��   9 k   f j � �  � � � l  f f��������  ��  ��   �  � � � L   f h � � o   f g���� 0 default_text   �  ��� � l  i i��������  ��  ��  ��   6  ��� � l  k k��������  ��  ��  ��  ��       �� �  ���   � ������ 0 perl_script  �� V0 )documentwillinserttextfordroppedimagefile )documentWillInsertTextForDroppedImageFile � �� ���� � ����� V0 )documentwillinserttextfordroppedimagefile )documentWillInsertTextForDroppedImageFile�� �� ���  �  �������� 0 doc_ref  �� 0 img_ref  �� 0 default_text  ��   � 	�������������������� 0 doc_ref  �� 0 img_ref  �� 0 default_text  �� 0 img_path  �� 0 doc_file  �� 0 doc_path  �� 0 rel_path  �� 0 	img_label  �� 0 e   � �������� ? ^���������� t v x����
�� 
psxp
�� 
file
�� 
alis
�� 
ctxt
�� 
spac
�� 
strq
�� .sysoexecTEXT���     TEXT
�� 
cpar
�� 
cobj�� 0 e  ��  �� m��,E�O��,�&E�O��,E�O��&� L <��%b   �,%�%��,%�%��,%j �-E[�k/E�Z[�l/E�ZO�%�%�%�%W 
X  �E�OPY �OPOP ascr  ��ޭ