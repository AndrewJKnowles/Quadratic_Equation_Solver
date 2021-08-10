clc;

prompt='What is the value of a?  ';
a=input(prompt);

prompt='What is the value of b?  ';
b=input(prompt);

prompt='What is the value of c?  ';
c=input(prompt);

prompt='enter lgd ';

d=((b^2)-(4*a*c));

if d<0
    disp('This quadratic has no real roots.');
    x=[-200:0.0001:200];
    y=((a*(x.^2))+(b*x)+c)/1000;
    plot(x,y,'r-');
    title('Graph of ax^2+bx+c');
    xlabel('x axis');
    ylabel('y axis');
    
else if d==0
        x=-b/(2*a);
        disp(['This quadratic has equal roots at: ',num2str(x),'.']);
        x1=[x-10:0.0001:x+10];
        y=(a*(x1.^2))+(b*x1)+c;
        plot(x1,y,'r-');
        title('Graph of ax^2+bx+c');
        xlabel('x axis');
        ylabel('y axis');
        
    else
        x1=((-b)+(d^0.5))/(2*a);
        x2=((-b)-(d^0.5))/(2*a);
        y=['The quadratic roots are x1= ',num2str(x1),' and x2= ',num2str(x2)];
        disp(y);
        
        if x1>x2
            x=[x2:0.0001:x1];
            y=(a*(x.^2))+(b*x)+c;
            plot(x,y,'r-');
            title('Graph of ax^2+bx+c');
            xlabel('x axis');
            ylabel('y axis');
            
        else
            x=[x1:0.0001:x2];
            y=(a*(x.^2))+(b*x)+c;
            plot(x,y,'r-');
            title('Graph of ax^2+bx+c');
            xlabel('x axis');
            ylabel('y axis');
        end
    end
end 
