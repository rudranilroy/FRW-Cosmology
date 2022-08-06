# Numerical Cosmology

## Age of the Universe
### Julia v1.7.2

#### Theory
###### The Metric
![ds^{2}=-dt^{2}+a^{2}(t)(dr^{2}+r^{2}d\Omega^{2})](https://latex.codecogs.com/svg.image?ds^{2}=-dt^{2}&plus;a^{2}(t)(dr^{2}&plus;r^{2}d\Omega^{2})),
where ![d\Omega^{2}=d\theta^{2}+\sin^{2}\theta \ d\phi^{2}](https://latex.codecogs.com/svg.image?d\Omega^{2}=d\theta^{2}&plus;\sin^{2}\theta&space;\&space;d\phi^{2}).
###### Calculating Age
![\frac{\dot{a}}{a}=H=\sqrt{\Omega_{\Lambda}+\Omega_{m} \ a^{-3}+\Omega_{R} \ a^{-4}}](https://latex.codecogs.com/svg.image?\frac{\dot{a}}{a}=H=\sqrt{\Omega_{\Lambda}&plus;\Omega_{m}&space;\&space;a^{-3}&plus;\Omega_{R}&space;\&space;a^{-4}})<br/>
![t=\int_{0}^{a}\frac{1}{H_{0}a\sqrt{\Omega_{\Lambda}+\Omega_{m} \ a^{-3}+\Omega_{R} \ a^{-4}}}](https://latex.codecogs.com/svg.image?t=\int_{0}^{a}\frac{1}{H_{0}a\sqrt{\Omega_{\Lambda}&plus;\Omega_{m}&space;\&space;a^{-3}&plus;\Omega_{R}&space;\&space;a^{-4}}})
###### Simpson's 1/3 Rule
Assume that *f(x)* is continuous over *[a,b]*. Let *n* be a positive even integer and *&Delta;x=(b-a)/n*. Let *[a,b]* be divided into *n* sub-intervals, each of length *&Delta;x*, with endpoints at 
![P=\{x_{0},x_{1},x_{2},...,x_{n}\}](https://latex.codecogs.com/svg.image?P=\{x_{0},x_{1},x_{2},...,x_{n}\}). Set<br/>
![S_{n}=\frac{\Delta x}{3}[f(x_{0})+4f(x_{1})+2f(x_{2})+4f(x_{3})+...+2f(x_{n-1})+f(x_{n})].](https://latex.codecogs.com/svg.image?S_{n}=\frac{\Delta&space;x}{3}[f(x_{0})&plus;4f(x_{1})&plus;2f(x_{2})&plus;4f(x_{3})&plus;...&plus;2f(x_{n-1})&plus;f(x_{n})].)<br/>
Then<br/>
![\lim_{n\rightarrow\infty}S_{n}=\int_{a}^{b}f(x) \ dx.](https://latex.codecogs.com/svg.image?\lim_{n\rightarrow\infty}S_{n}=\int_{a}^{b}f(x)&space;\&space;dx.)

#### Code
###### File name
age_frw.jl
###### Inputs
- **n** (*Enter the number of steps*) = Number of Steps : The interval will be divided into **n** equal sub-intervals, and the integration will be calculated using **Composite Simpson's 1/3 rule**.
- **a** (*The value of a for which the age will be calculated*) = The value of a(t) : The input will take an input the value of **a** and the program will calculate the value of corresponding **t**.
###### Output
- **t** for corresponding **a(t)**.
