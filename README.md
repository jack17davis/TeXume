# TeXume

I would like to give credit to two repositories that I used while developing this project. My resume started as a derivative of <a href="https://github.com/treyhunner/resume"> Trey Hunner's repository </a> but has slowly become unique over time. I also found that <a href="https://ctan.org/pkg/gradstudentresume"> Anagha Kumar's resume </a> fit the style I was looking for.

## This project serves two purposes:
1. To share <a href="https://github.com/jack17davis/TeXume/blob/master/Resume.pdf"> my resume </a> with the world
2. To help other computer science students make LaTeX Resumes

## How to make your own TeXume:
 1. I recommend installing <a href="https://www.texstudio.org/"> TeXstudio </a> as your IDE and <a href="https://miktex.org/download"> MiKTeX </a> as a dependency manager. They work quite well together and are available on Windows, Mac, and Linux. However, you can also use <a href="https://www.overleaf.com/"> Overleaf </a> which is a in-browser editor and dependancy manager.
 2. Download either using the green button in the top right corner or git 
 ```bash  
    git clone https://github.com/jack17davis/TeXume.git
 ```
 3. Begin by editing ```resume.tex```. This is the main file and where most edits are necessary. In ```resume.cls``` I have created a number of environments that operate somewhat like functions; Provide a Job environment your title, dates, and employer and it will format that information into a job on the resume.

### Example job in resume.tex
![Example Input](https://github.com/jack17davis/TeXume/blob/master/Example%20Job.PNG)
 
### The corresponding output in resume.pdf
![Example Output](https://github.com/jack17davis/TeXume/blob/master/Example%20Output.PNG)

Please feel free to reachout at jack17davis@gmail.com.
