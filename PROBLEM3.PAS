program problem3;
uses crt;
var
   runner :integer;
   total, time, average:real;

begin
   writeln('A program to find the average time in a race');
   total := 0.0;
   for runner := 1 to 12 do
       begin
	   write('What is the time taken by runner number ', runner);
	   readln(time);
	   total := total + time;
       end;
   average := total/12;
   writeln('The average time taken was ', average :3:2,' seconds');
end.
