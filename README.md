Flutter AnimatedContainer




<img src="https://github.com/Mirzaazmath/flutter_animations_detail/blob/animatedcontainer/assets/result.gif" height="400">



Flutter Animation 
There are two type of animation in flutter 
they are as follows
1. Drawing based
2. Code based

 drawing based animation is nothing but gif , 
 You can acheive drawing based animation through rive and lottie package

Now code based animation are  of two types such as
1. implicit animation
2. explicit animation
 
 

Implicit animation can be done by using the predefine animated widget  and this is the best and recommende
way of doing the animation
To use implicit animation use Animated<foo>
where foo is what you want to animate

some of the implicit animation are 
1.AnimatedContainer
2.AnimatedAlign
3.AnimatedOpacity
4.AnimatedDefualtTextStye
5.AnimatedPadding
6.AnimatedPhysicalModel
7.AnimatedPosition
8.AnimatedSize
9.AnimatedPositionedDierectional
10.AnimatedTheme
etc


After a long list ,let say if you wont find the thing that you want to animated
you can use customer animation by TweenAnimationBuilder.



Explicit Animation This is also work like the implicit but the difference is it is a Never ending
or countounes process by using the .repeat

explicit animation required the animationController to perform animation 
and it also need ticker to update the animation


some of the example of transistion you can perform
1. SizeTransiton
2. fadeTransiton
3. alignTransiton
4. scaleTransiton
5. rotateTransiton
6. positionTransiton
7. defaulttextstyleTransiton
8. relativepositionTransiton
9. decoratedboxTransiton
10. etc



