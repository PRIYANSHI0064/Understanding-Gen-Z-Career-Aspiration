-- Creating Database --
-- drop database Standard_Data_KH ;
show databases ;
create database Standard_Data_KH ;
use Standard_Data_KH;

-- Creating table to import data from csv file --

-- drop table Your_Career_aspiration;
create table Your_Career_aspiration(
Timestamps Timestamp ,
Country char(50),
Zip_Code varchar(50),
Gender char(50),
Influencing_Factor varchar(200),
Higher_Education_Outside_of_India varchar(200),
Three_year_tenurity varchar(200),
Work_for_Company_with_Undefined_Mission varchar(200),
Work_for_Misaligned_Mission_Company  varchar(200),
Work_for_Non_Socially_Impactful_Company varchar(200),
Preferred_Working_Environment varchar(200),
Preferred_Employers varchar(500),
Preferred_learning_environment varchar(500),
Aspirational_job  varchar(500),
Manager_preference_regardless_of_time varchar(500),
Preferred_Work_Setup varchar(500),
Work_for_company_with_recent_layoffs varchar(500),
Seven_or_more_year_tenurity  varchar(200),
Email_address varchar(500),
Monthly_pay_anticipated_for_the_first_three_years varchar(250),
Anticipated_monthly_income_following_five_years varchar(250),
Work_for_company_with_no_remote_policy varchar (250),
Anticipated_beginning_monthly_pay varchar(250),
Preferred_Company_Type varchar(250),
work_under_abusive_manager varchar(250),
Daily_Working_Hours varchar(250),
Full_Week_Breaks_for_Work_Life_Balance varchar(250),
Factors_for_Happiness_Productivity varchar(500),
Work_Frustrations varchar(500)) ;

select * from  Your_Career_aspiration ;
select count(*) from Your_Career_aspiration ;

set SQL_Safe_updates = 0 ;

-- Putting "NULL" in blank fields -- 

UPDATE Your_Career_aspiration set Influencing_Factor = IF(Influencing_Factor = '', NULL, Influencing_Factor),
Higher_Education_Outside_of_India = IF(Higher_Education_Outside_of_India = '', NULL, Higher_Education_Outside_of_India),
Three_year_tenurity = IF(Three_year_tenurity = '', NULL, Three_year_tenurity),
Work_for_Company_with_Undefined_Mission = IF(Work_for_Company_with_Undefined_Mission= '', NULL, Work_for_Company_with_Undefined_Mission),
Work_for_Misaligned_Mission_Company = IF(Work_for_Misaligned_Mission_Company = '',NULL, Work_for_Misaligned_Mission_Company),
Work_for_Non_Socially_Impactful_Company = IF(Work_for_Non_Socially_Impactful_Company = '', 0, Work_for_Non_Socially_Impactful_Company),
Preferred_Working_Environment = IF(Preferred_Working_Environment = '', NULL, Preferred_Working_Environment),
Preferred_Employers = IF(Preferred_Employers = '', NULL, Preferred_Employers),
Preferred_learning_environment = IF(Preferred_learning_environment = '', NULL, Preferred_learning_environment),
Aspirational_job = IF(Aspirational_job = '', NULL, Aspirational_job),
Manager_preference_regardless_of_time = IF(Manager_preference_regardless_of_time = '',NULL, Manager_preference_regardless_of_time),
Preferred_Work_Setup = IF(Preferred_Work_Setup = '',NULL, Preferred_Work_Setup),
Work_for_company_with_recent_layoffs =IF(Work_for_company_with_recent_layoffs = '', NULL, Work_for_company_with_recent_layoffs),
Seven_or_more_year_tenurity = IF(Seven_or_more_year_tenurity = '',NULL, Seven_or_more_year_tenurity),
Email_address =IF(Email_address = '', NULL, Email_address), 
Monthly_pay_anticipated_for_the_first_three_years = IF(Monthly_pay_anticipated_for_the_first_three_years = '', 0, Monthly_pay_anticipated_for_the_first_three_years),
Anticipated_monthly_income_following_five_years = IF(Anticipated_monthly_income_following_five_years = '', 0, Anticipated_monthly_income_following_five_years),
Work_for_company_with_no_remote_policy = IF(Work_for_company_with_no_remote_policy = '', NULL, Work_for_company_with_no_remote_policy),
Anticipated_beginning_monthly_pay = IF(Anticipated_beginning_monthly_pay = '', 0, Anticipated_beginning_monthly_pay),
Preferred_Company_Type = IF(Preferred_Company_Type = '', NULL, Preferred_Company_Type),
work_under_abusive_manager = IF(work_under_abusive_manager = '' ,NULL, work_under_abusive_manager),
Daily_Working_Hours = IF(Daily_Working_Hours = '', 0,  Daily_Working_Hours),
Full_Week_Breaks_for_Work_Life_Balance = IF(Full_Week_Breaks_for_Work_Life_Balance= '', 0, Full_Week_Breaks_for_Work_Life_Balance),
Factors_for_Happiness_Productivity = IF(Factors_for_Happiness_Productivity = '', NULL, Factors_for_Happiness_Productivity),
Work_Frustrations = IF(Work_Frustrations ='', NULL, Work_Frustrations);

select distinct Gender from Your_Career_aspiration;

-- Field item Standardization -- 

update Your_Career_aspiration set Gender = 'Other' 
where gender = 'Transgender';
update Your_Career_aspiration set Gender = IF(Gender = 'Male', 'M',Gender),
Gender = If(Gender = 'Female' , 'F', Gender);

select * from your_career_Aspiration;
select distinct Country from Your_Career_aspiration;
update Your_Career_aspiration set Country = IF(Country = 'United Arab Emirates', 'UAE',Country),
Country = If(Country = 'United States of America' , 'USA', Country);


select distinct Influencing_Factor from Your_Career_aspiration;
update Your_Career_aspiration set Influencing_Factor = IF(Influencing_Factor = 'Influencers who had successful careers', 'Influencers',Influencing_Factor),
Influencing_Factor = If(Influencing_Factor = 'My Friends' , 'Friends', Influencing_Factor),
Influencing_Factor = If(Influencing_Factor = 'My Parents' , 'Parents', Influencing_Factor),
Influencing_Factor = If(Influencing_Factor = 'People from my circle, but not family members' , 'Acquaintance', Influencing_Factor),
Influencing_Factor = If(Influencing_Factor = 'People who have changed the world for better' , 'World Leaders', Influencing_Factor),
Influencing_Factor = If(Influencing_Factor = 'Social Media like LinkedIn' , 'Social Media', Influencing_Factor),
Influencing_Factor = If(Influencing_Factor = 'Social Media like LinkedIn, YouTube, Instagram' , 'Social Media', Influencing_Factor);

select distinct Higher_Education_Outside_of_India from Your_Career_aspiration;
update Your_Career_aspiration set Higher_Education_Outside_of_India = IF(Higher_Education_Outside_of_India = 'No I would not be pursuing Higher Education outside of India', 'No',Higher_Education_Outside_of_India),
Higher_Education_Outside_of_India = IF(Higher_Education_Outside_of_India = 'No, But if someone could bare the cost I will', 'Needs a sponsor',Higher_Education_Outside_of_India),
Higher_Education_Outside_of_India = IF(Higher_Education_Outside_of_India = 'Yes, I will earn and do that', 'Yes',Higher_Education_Outside_of_India);
select * from your_career_Aspiration;


select distinct Three_year_tenurity from Your_Career_aspiration;
update Your_Career_aspiration set Three_year_tenurity = IF(Three_year_tenurity = 'No way', 'No',Three_year_tenurity),
Three_year_tenurity = IF(Three_year_tenurity = 'No way, 3 years with one employer is crazy', 'No',Three_year_tenurity),
Three_year_tenurity = IF(Three_year_tenurity = 'Will work for 3 years or more', 'Yes',Three_year_tenurity),
Three_year_tenurity = IF(Three_year_tenurity = 'This will be hard to do, but if it is the right company I would try', 'Depends on company culture',Three_year_tenurity);
select * from your_career_Aspiration;

select distinct Seven_or_more_year_tenurity from Your_Career_aspiration;
update Your_Career_aspiration set Seven_or_more_year_tenurity = IF(Seven_or_more_year_tenurity = 'No way', 'No',Seven_or_more_year_tenurity),
Seven_or_more_year_tenurity = IF(Seven_or_more_year_tenurity = 'This will be hard to do, but if it is the right company I would try', 'Depends on company culture',Seven_or_more_year_tenurity),
Seven_or_more_year_tenurity = IF(Seven_or_more_year_tenurity = 'Will work for 7 years or more', 'Yes',Seven_or_more_year_tenurity);
select * from your_career_Aspiration;


select distinct Work_for_Company_with_Undefined_Mission from Your_Career_aspiration;
select distinct Work_for_Non_Socially_Impactful_Company from Your_Career_aspiration;
select distinct Work_for_Misaligned_Mission_Company from Your_Career_aspiration;

update your_career_aspiration set 
Work_for_Misaligned_Mission_Company = IF(Work_for_Misaligned_Mission_Company = 'Will NOT work for them' , 'No', Work_for_Misaligned_Mission_Company ),
Work_for_Misaligned_Mission_Company = IF(Work_for_Misaligned_Mission_Company = 'Will work for them' , 'Yes', Work_for_Misaligned_Mission_Company) ;


select distinct Preferred_Working_Environment from Your_Career_aspiration;
update your_career_aspiration set 
Preferred_Working_Environment = IF(Preferred_Working_Environment = 'Fully Remote with No option to visit offices' , 'Fully remote, no office visits',Preferred_Working_Environment),
Preferred_Working_Environment = IF(Preferred_Working_Environment = 'Fully Remote with Options to travel as and when needed' , 'Fully remote with occasional travel',Preferred_Working_Environment),
Preferred_Working_Environment = IF(Preferred_Working_Environment = 'Hybrid Working Environment with less than 15 days a month at office' , 'Hybrid work:<15 office days/month',Preferred_Working_Environment),
Preferred_Working_Environment = IF(Preferred_Working_Environment = 'Hybrid Working Environment with less than 10 days a month at office' , 'Hybrid work:<10 office days/month',Preferred_Working_Environment),
Preferred_Working_Environment = IF(Preferred_Working_Environment = 'Hybrid Working Environment with less than 3 days a month at office' , 'Hybrid work:<3 office days/month',Preferred_Working_Environment),
Preferred_Working_Environment = IF(Preferred_Working_Environment = 'Hybrid Working Environment with more than 15 days a month at office' , 'Hybrid work:15+ office days/month',Preferred_Working_Environment) ;


select distinct Work_for_company_with_recent_layoffs from Your_Career_aspiration;
update Your_Career_aspiration set 
Work_for_company_with_recent_layoffs = IF(Work_for_company_with_recent_layoffs = 'Yes, I Understand this is gonna happen everywhere', 'concur with the facts', Work_for_company_with_recent_layoffs), 
Work_for_company_with_recent_layoffs = IF(Work_for_company_with_recent_layoffs = 'I have NO other choice', 'possess no other choices', Work_for_company_with_recent_layoffs) ; 


select distinct Work_for_company_with_no_remote_policy from Your_Career_aspiration;
UPDATE Your_Career_aspiration SET Work_for_company_with_no_remote_policy = COALESCE(Work_for_company_with_no_remote_policy, 0);

select distinct Preferred_Company_Type from Your_Career_aspiration;
UPDATE Your_Career_aspiration SET Preferred_Company_Type =   IF(Preferred_Company_Type = 'Startups (51 to 250 Employees)' , 'Startups' , Preferred_Company_Type),
Preferred_Company_Type =   IF(Preferred_Company_Type = 'Corporations (3000+ employees)' , 'Corporations' , Preferred_Company_Type),
Preferred_Company_Type =   IF(Preferred_Company_Type = 'Mid Size Companies (251 to 1000 employees)' , 'Mid Size Companies' , Preferred_Company_Type),
Preferred_Company_Type =   IF(Preferred_Company_Type = 'Startups (Less than 50 empoyees)' , 'small Business' , Preferred_Company_Type),
Preferred_Company_Type =   IF(Preferred_Company_Type = 'Large Companies (1001 to 3000 employees)' , 'Large Companies' , Preferred_Company_Type);

select distinct Work_Frustrations from Your_Career_aspiration;
UPDATE Your_Career_aspiration SET Work_Frustrations =   IF(Work_Frustrations = 'Often a need to learn New Skills' , 'Frequent need for skill acquisition' , Work_Frustrations) ;
select * from Your_Career_aspiration ;

select distinct Preferred_Employers from Your_Career_aspiration;
UPDATE Your_Career_aspiration SET Preferred_Employers =   IF(Preferred_Employers = 'Employer who rewards learning and enables that environment' , 'Employer fostering learning culture and rewards' , Preferred_Employers),
Preferred_Employers =   IF(Preferred_Employers = 'Employer who pushes your limits by enabling an learning environment, and rewards you at the end' , 'Employer promotes growth through learning and rewards effort',Preferred_Employers),
Preferred_Employers =   IF(Preferred_Employers = 'Employer who appreciates learning and enables that environment' ,'Employer fostering learning and growth', Preferred_Employers),
Preferred_Employers =   IF(Preferred_Employers = "Employer who pushes your limits and doesn't enables learning environment and never rewards you" , 'Employer lacking in learning opportunities and recognition',Preferred_Employers),
Preferred_Employers =   IF(Preferred_Employers = "Employers who appreciates learning but doesn't enables an learning environment" ,'Employers value learning but lack supportive environment', Preferred_Employers);

select distinct Manager_preference_regardless_of_time from Your_Career_aspiration;
UPDATE Your_Career_aspiration SET Manager_preference_regardless_of_time =   IF(Manager_preference_regardless_of_time = 'Manager who explains what is expected, sets a goal and helps achieve it' , 'Goal-setting manager who aids achievement' , Manager_preference_regardless_of_time),
Manager_preference_regardless_of_time =   IF(Manager_preference_regardless_of_time = 'Manager who sets goal and helps me achieve it' , 'Goal-oriented and supportive manager',Manager_preference_regardless_of_time),
Manager_preference_regardless_of_time =   IF(Manager_preference_regardless_of_time = 'Manager who clearly describes what she/he needs' ,'Clear-Communicating Manager', Manager_preference_regardless_of_time),
Manager_preference_regardless_of_time =   IF(Manager_preference_regardless_of_time = "Manager who sets targets and expects me to achieve it" , 'Target-setting manager expecting achievement',Manager_preference_regardless_of_time),
Manager_preference_regardless_of_time =   IF(Manager_preference_regardless_of_time = "Manager who sets unrealistic targets" ,'Manager setting unattainable goals', Manager_preference_regardless_of_time);

-- Creating table  "Your_Career_aspiration_2" to store standardize data
-- drop table Your_Career_aspiration_2;
create table Your_Career_aspiration_2(
Timestamps Timestamp ,
Country char(50),
Zip_Code varchar(50),
Gender char(50),
Influencing_Factor varchar(200),
Higher_Education_Outside_of_India varchar(200),
Three_year_tenurity varchar(200),
Work_for_Company_with_Undefined_Mission varchar(200),
Work_for_Misaligned_Mission_Company  varchar(200),
Work_for_Non_Socially_Impactful_Company varchar(200),
Preferred_Working_Environment varchar(200),
Preferred_Employers varchar(500),
Preferred_learning_environment varchar(500),
Aspirational_job  varchar(500),
Manager_preference_regardless_of_time varchar(500),
Preferred_Work_Setup varchar(500),
Work_for_company_with_recent_layoffs varchar(500),
Seven_or_more_year_tenurity  varchar(200),
Email_address varchar(500),
Monthly_pay_anticipated_for_the_first_three_years varchar(250),
Anticipated_monthly_income_following_five_years varchar(250),
Work_for_company_with_no_remote_policy varchar (250),
Anticipated_beginning_monthly_pay varchar(250),
Preferred_Company_Type varchar(250),
work_under_abusive_manager varchar(250),
Daily_Working_Hours varchar(250),
Full_Week_Breaks_for_Work_Life_Balance varchar(250),
Factors_for_Happiness_Productivity varchar(500),
Work_Frustrations varchar(500)
);
-- Insert the split values from each column into the Your_Career_aspiration_2 table
INSERT INTO Your_Career_aspiration_2 (
    Timestamps,
    Country,
    Zip_Code,
    Gender,
    Influencing_Factor,
    Higher_Education_Outside_of_India,
    Three_year_tenurity,
    Work_for_Company_with_Undefined_Mission,
    Work_for_Misaligned_Mission_Company,
    Work_for_Non_Socially_Impactful_Company,
    Preferred_Working_Environment,
    Preferred_Employers,
    Preferred_learning_environment,
    Aspirational_job,
    Manager_preference_regardless_of_time,
    Preferred_Work_Setup,
    Work_for_company_with_recent_layoffs,
    Seven_or_more_year_tenurity,
    Email_address,
    Monthly_pay_anticipated_for_the_first_three_years,
    Anticipated_monthly_income_following_five_years,
    Work_for_company_with_no_remote_policy,
    Anticipated_beginning_monthly_pay,
    Preferred_Company_Type,
    work_under_abusive_manager,
    Daily_Working_Hours,
    Full_Week_Breaks_for_Work_Life_Balance,
    Factors_for_Happiness_Productivity,
    Work_Frustrations
)
SELECT 
    Timestamps,
    Country,
    Zip_Code,
    Gender,
    Influencing_Factor,
    Higher_Education_Outside_of_India,
    Three_year_tenurity,
    Work_for_Company_with_Undefined_Mission,
    Work_for_Misaligned_Mission_Company,
    Work_for_Non_Socially_Impactful_Company,
    Preferred_Working_Environment,
    Preferred_Employers,
    SUBSTRING_INDEX(SUBSTRING_INDEX(Preferred_learning_environment, ',', n.n), ',', -1) AS Preferred_learning_environment,
    SUBSTRING_INDEX(SUBSTRING_INDEX(Aspirational_job, ',', n.n), ',', -1) AS Aspirational_job,
    Manager_preference_regardless_of_time,
    SUBSTRING_INDEX(SUBSTRING_INDEX(Preferred_Work_Setup, ',', n.n), ',', -1) AS Preferred_Work_Setup,
    Work_for_company_with_recent_layoffs,
    Seven_or_more_year_tenurity,
    Email_address,
    Monthly_pay_anticipated_for_the_first_three_years,
    Anticipated_monthly_income_following_five_years,
    Work_for_company_with_no_remote_policy,
    Anticipated_beginning_monthly_pay,
    Preferred_Company_Type,
    work_under_abusive_manager,
    Daily_Working_Hours,
    Full_Week_Breaks_for_Work_Life_Balance,
    SUBSTRING_INDEX(SUBSTRING_INDEX(Factors_for_Happiness_Productivity, ',', n.n), ',', -1) AS Factors_for_Happiness_Productivity,
    Work_Frustrations
FROM 
    Your_Career_aspiration AS ot
JOIN
-- Retrieves the count of rows in both the Your_Career_aspiration_2 and the Your_Career_aspiration table.
 -- Generate a sequence of numbers (n) based on the maximum possible number of comma-separated values
    (
        SELECT 
            a.N + b.N * 10 + 1 AS n
        FROM 
            (SELECT 0 AS N UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9) AS a
        CROSS JOIN 
            (SELECT 0 AS N UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9) AS b
    ) AS n
    ON
     -- Split the comma-separated values and insert them into separate rows
        CHAR_LENGTH(Preferred_learning_environment) - CHAR_LENGTH(REPLACE(Preferred_learning_environment, ',', '')) >= n.n - 1 or
        CHAR_LENGTH(Aspirational_job) - CHAR_LENGTH(REPLACE(Aspirational_job, ',', '')) >= n.n - 1 or
        CHAR_LENGTH(Preferred_Work_Setup) - CHAR_LENGTH(REPLACE(Preferred_Work_Setup, ',', '')) >= n.n - 1 OR
        CHAR_LENGTH(Factors_for_Happiness_Productivity) - CHAR_LENGTH(REPLACE(Factors_for_Happiness_Productivity, ',', '')) >= n.n - 1
ORDER BY
    Timestamps,  n.n;

set SQL_SAFE_UPDATES = 0 ;

select distinct Preferred_learning_environment from Your_Career_aspiration_2;
UPDATE Your_Career_aspiration_2 SET Preferred_learning_environment =   IF(Preferred_learning_environment = 'Self Paced Learning Portals' , 'Self-paced  Learning Portals' , Preferred_learning_environment),
Preferred_learning_environment =   IF(Preferred_learning_environment = 'Self Paced Learning Portals of the Company' , "Company's Self-Paced Learning Portals",Preferred_learning_environment),
Preferred_learning_environment =   IF(Preferred_learning_environment = 'Instructor or Expert Learning Programs' ,'Expert-led Learning Programs', Preferred_learning_environment),
Preferred_learning_environment =   IF(Preferred_learning_environment = "Learning by observing others" , 'Observational Learning',Preferred_learning_environment),
Preferred_learning_environment =   IF(Preferred_learning_environment = " Self Purchased Course from External Platforms" ,'Purchased External Courses', Preferred_learning_environment),
Preferred_learning_environment =   IF(Preferred_learning_environment = "Trial and error by doing side projects within the company" ,'Trial and error through internal side projects', Preferred_learning_environment);
UPDATE Your_Career_aspiration_2 SET Preferred_learning_environment =   IF(Preferred_learning_environment = " Trial and error by doing side projects within the company" ,'Trial and error through internal side projects', Preferred_learning_environment);
 
select distinct Aspirational_job from Your_Career_aspiration_2;
UPDATE Your_Career_aspiration_2 SET Aspirational_job =   IF(Aspirational_job = ' Business Operations in any organization' ,'Business Operation' , Aspirational_job),
Aspirational_job =   IF(Aspirational_job = ' Build and develop a Team', 'Team management',Aspirational_job),
Aspirational_job =   IF(Aspirational_job = 'Team managemen', 'Team management',Aspirational_job),
Aspirational_job =   IF(Aspirational_job = ' Work as a freelancer and do my thing my way', 'Freelancing and independent work', Aspirational_job),
Aspirational_job =   IF(Aspirational_job = " Look deeply into Data and generate insights",'Analyze data for insights', Aspirational_job), 
Aspirational_job =   IF(Aspirational_job = "Manage and drive End-to-End Projects or Products",'Lead End-to-End Product Management', Aspirational_job),
Aspirational_job =   IF(Aspirational_job = " Manage and drive End-to-End Projects or Products", 'Lead End-to-End Product Management',Aspirational_job),
Aspirational_job =   IF(Aspirational_job = " Design and Develop amazing software",'Software developer', Aspirational_job),
Aspirational_job =   IF(Aspirational_job = "Design and Creative strategy in any company",'Design and Creative Strategy Role', Aspirational_job),
Aspirational_job =   IF(Aspirational_job = " Become a content Creator in some platform", 'Content creation' , Aspirational_job),
Aspirational_job =   IF(Aspirational_job = "Teaching in any of the institutes/colleges/online or offline", 'Teaching', Aspirational_job),
Aspirational_job =   IF(Aspirational_job = " Teaching in any of the institutes/colleges/online or offline", 'Teaching' ,Aspirational_job),
Aspirational_job =   IF(Aspirational_job = " An Artificial Intelligence Specialist / Talking to Robots", 'AI Specialist / Robotics Interaction', Aspirational_job),
Aspirational_job =   IF(Aspirational_job = " Cyber Security/ Protection of Data and Assets", 'Cybersecurity and Data Protection',Aspirational_job),
Aspirational_job =   IF(Aspirational_job = " Work for Government / Civil Roles", 'Government or Civil Service Employment', Aspirational_job),
Aspirational_job =   IF(Aspirational_job = " Manufacturing / Oil and Gas/ Construction / Hard Physical Work related",'Interest in Physical Work Industries', Aspirational_job),
Aspirational_job =   IF(Aspirational_job = " I Want to sell things/Sales",'Sales',Aspirational_job),
Aspirational_job =   IF(Aspirational_job = "Work in a BPO setup for some well known client", 'Work in a BPO setting for a reputable client',Aspirational_job),
Aspirational_job =   IF(Aspirational_job = " Work in a BPO setup for some well known client", 'Work in a BPO setting for a reputable client',Aspirational_job);

select distinct Preferred_Work_Setup from Your_Career_aspiration_2;
UPDATE Your_Career_aspiration_2 SET Preferred_Work_Setup =   IF(Preferred_Work_Setup = ' Work with 2 to 3 people in my team' , 'Team consists of 2-3 members' , Preferred_Work_Setup),
Preferred_Work_Setup =   IF(Preferred_Work_Setup = 'Work with 5 to 6 people in my team' , "Work with 5 to 6 people in my team",Preferred_Work_Setup),
Preferred_Work_Setup =   IF(Preferred_Work_Setup = ' Work with more than 10 people in my team' ,'Team consists of over 10 members', Preferred_Work_Setup),
Preferred_Work_Setup =   IF(Preferred_Work_Setup = " Work with 7 to 10 or more people in my team" , 'Work in a team of 7+ members',Preferred_Work_Setup);
UPDATE Your_Career_aspiration_2 SET Preferred_Work_Setup =   IF(Preferred_Work_Setup = ' Work with 5 to 6 people in my team', "Team consists of 5 to 6 members",Preferred_Work_Setup);

select distinct Work_Frustrations from Your_Career_aspiration_2;

select * from Your_Career_aspiration ;
select count(*) from Your_Career_aspiration_2;
select * from Your_Career_aspiration_2 ;

create table India_pincode(
City varchar(70),
Area varchar(70),
Pincode int,
District varchar(70),
State varchar(70)
);

select * from India_pincode;
select count(*) from India_pincode;


-- Business Problem - Data analysis in SQL-(State-wise breakdown) - (Milestone 11 - 13)

-- 1. Filter data only for India
select * from Your_Career_aspiration_2
where country = 'India' ;

-- 2. Total responses for India
select count(*) as Total_response from Your_Career_aspiration_2
where country = 'India' ;

-- 3. state wise contribution of  Gender-wise responses
select state, 
COUNT(CASE WHEN gender = 'M' THEN 1 END) as Male_count,
COUNT(CASE WHEN gender = 'F' THEN 1 END) as Female_count,
COUNT(CASE WHEN gender NOT IN ('M', 'F') THEN 1 END) as Others_count,
count(*) as Total_count
from Your_Career_aspiration_2 
join India_pincode
on Your_Career_aspiration_2.Zip_Code = India_pincode.pincode
where country = 'India'
group by state
order by Total_count ;

-- 4. state-wise contribution of breakdown of influencing factor
SELECT state, Influencing_Factor,
COUNT(CASE WHEN gender = 'M' THEN 1 END) as Male_count,
COUNT(CASE WHEN gender = 'F' THEN 1 END) as Female_count,
COUNT(CASE WHEN gender NOT IN ('M', 'F') THEN 1 END) as Others_count,
count(*) as Total_count
FROM Your_Career_aspiration_2
join India_pincode
on Your_Career_aspiration_2.Zip_Code = India_pincode.pincode
WHERE Country = 'India'
GROUP BY state,Influencing_Factor
order by state,Total_count;

-- 5. State-wise contribution of breakdown of higher study higher study aspiration 
select state,
Higher_Education_Outside_of_India as Higher_study_aspiration,
COUNT(CASE WHEN gender = 'M' THEN 1 END) as Male_count,
COUNT(CASE WHEN gender = 'F' THEN 1 END) as Female_count,
COUNT(CASE WHEN gender NOT IN ('M', 'F') THEN 1 END) as Others_count, Count(*) as Total_Count
from Your_Career_aspiration_2
join India_pincode
on Your_Career_aspiration_2.Zip_Code = India_pincode.pincode
where Country = 'India'
group by state,Higher_Education_Outside_of_India
order by state,Total_count;

-- 6. state-wise contribution of breakdown of 3 Years with the employer
select state,Three_year_tenurity,
COUNT(CASE WHEN gender = 'M' THEN 1 END) as Male_count,
COUNT(CASE WHEN gender = 'F' THEN 1 END) as Female_count,
COUNT(CASE WHEN gender NOT IN ('M', 'F') THEN 1 END) as Others_count, Count(*) as Total_Count
from Your_Career_aspiration_2
join India_pincode
on Your_Career_aspiration_2.Zip_Code = India_pincode.pincode
where Country = 'India'
group by state,Three_year_tenurity
order by state,Total_count;

-- 7. State-wise contribution of breakdown of likelihood of working
select state,Preferred_Working_Environment,
 Count(*) as Total_Count
from Your_Career_aspiration_2
join India_pincode
on Your_Career_aspiration_2.Zip_Code = India_pincode.pincode
where Country = 'India'
group by state,Preferred_Working_Environment
order by state,Total_count;

-- 8. State-wise contribution of breakdown of not bringing social impact 
select state,Work_for_Non_Socially_Impactful_Company,
COUNT(CASE WHEN gender = 'M' THEN 1 END) as Male_count,
COUNT(CASE WHEN gender = 'F' THEN 1 END) as Female_count,
COUNT(CASE WHEN gender NOT IN ('M', 'F') THEN 1 END) as Others_count, Count(*) as Total_Count
from Your_Career_aspiration_2
join India_pincode
on Your_Career_aspiration_2.Zip_Code = India_pincode.pincode
where Country = 'India'
group by state,Work_for_Non_Socially_Impactful_Company
order by state,Total_count;

-- 9. State-wise contribution of breakdown of preferred working environment 
select state,Preferred_Working_Environment,
COUNT(CASE WHEN gender = 'M' THEN 1 END) as Male_count,
COUNT(CASE WHEN gender = 'F' THEN 1 END) as Female_count,
COUNT(CASE WHEN gender NOT IN ('M', 'F') THEN 1 END) as Others_count, Count(*) as Total_Count
from Your_Career_aspiration_2
join India_pincode
on Your_Career_aspiration_2.Zip_Code = India_pincode.pincode
where Country = 'India'
group by state,Preferred_Working_Environment
order by state,Total_count;

-- 10. state-wise contribution of breakdown of employer preferences 
select state,Preferred_Employers,
COUNT(CASE WHEN gender = 'M' THEN 1 END) as Male_count,
COUNT(CASE WHEN gender = 'F' THEN 1 END) as Female_count,
COUNT(CASE WHEN gender NOT IN ('M', 'F') THEN 1 END) as Others_count, Count(*) as Total_Count
from Your_Career_aspiration_2
join India_pincode
on Your_Career_aspiration_2.Zip_Code = India_pincode.pincode
where Country = 'India'
group by state,Preferred_Employers
order by state,Total_count;

-- 11. State-wise contribution of breakdown of learning environmnent 
select state,Preferred_learning_environment,
COUNT(CASE WHEN gender = 'M' THEN 1 END) as Male_count,
COUNT(CASE WHEN gender = 'F' THEN 1 END) as Female_count,
COUNT(CASE WHEN gender NOT IN ('M', 'F') THEN 1 END) as Others_count, Count(*) as Total_Count
from Your_Career_aspiration_2
join India_pincode
on Your_Career_aspiration_2.Zip_Code = India_pincode.pincode
where Country = 'India'
group by state,Preferred_learning_environment
order by state,Total_count;

-- 12. State-wise contribution of breakdown of aspirational job
select State, Aspirational_job,
COUNT(CASE WHEN gender = 'M' THEN 1 END) as Male_count,
COUNT(CASE WHEN gender = 'F' THEN 1 END) as Female_count,
COUNT(CASE WHEN gender NOT IN ('M', 'F') THEN 1 END) as Others_count, Count(*) as Total_Count
from Your_Career_aspiration_2
join India_pincode
on Your_Career_aspiration_2.Zip_Code = India_pincode.pincode
where Country = 'India'
group by state,Aspirational_job
order by state,Total_count;

-- 13. Count the contribution of breakdown of manager preference
select state,Manager_preference_regardless_of_time as Manager_preference,
COUNT(CASE WHEN gender = 'M' THEN 1 END) as Male_count,
COUNT(CASE WHEN gender = 'F' THEN 1 END) as Female_count,
COUNT(CASE WHEN gender NOT IN ('M', 'F') THEN 1 END) as Others_count, Count(*) as Total_Count
from Your_Career_aspiration_2
join India_pincode
on Your_Career_aspiration_2.Zip_Code = India_pincode.pincode
where Country = 'India'
group by state, Manager_preference_regardless_of_time
order by state,Total_count;

-- 14. State-wise contribution of breakdown of the work setup
select state, Preferred_Work_Setup ,
COUNT(CASE WHEN gender = 'M' THEN 1 END) as Male_count,
COUNT(CASE WHEN gender = 'F' THEN 1 END) as Female_count,
COUNT(CASE WHEN gender NOT IN ('M', 'F') THEN 1 END) as Others_count, Count(*) as Total_Count
from Your_Career_aspiration_2
join India_pincode
on Your_Career_aspiration_2.Zip_Code = India_pincode.pincode
where Country = 'India'
group by state,Preferred_Work_Setup
order by state, Total_count;

-- 15. state-wise contribution of breakdown of laid-of-employees
select state, Work_for_company_with_recent_layoffs as Laid_off_employees ,
COUNT(CASE WHEN gender = 'M' THEN 1 END) as Male_count,
COUNT(CASE WHEN gender = 'F' THEN 1 END) as Female_count,
COUNT(CASE WHEN gender NOT IN ('M', 'F') THEN 1 END) as Others_count, Count(*) as Total_Count
from Your_Career_aspiration_2
join India_pincode
on Your_Career_aspiration_2.Zip_Code = India_pincode.pincode
where Country = 'India'
group by state, Work_for_company_with_recent_layoffs
order by state, Total_count;

-- 16. state-wise contribution of breakdown of work for 7 Years
select state, Seven_or_more_year_tenurity,
COUNT(CASE WHEN gender = 'M' THEN 1 END) as Male_count,
COUNT(CASE WHEN gender = 'F' THEN 1 END) as Female_count,
COUNT(CASE WHEN gender NOT IN ('M', 'F') THEN 1 END) as Others_count, Count(*) as Total_Count
from Your_Career_aspiration_2
join India_pincode
on Your_Career_aspiration_2.Zip_Code = India_pincode.pincode
where Country = 'India'
group by state, Seven_or_more_year_tenurity
order by state, Total_count;

-- 17. state-wise contribution of breakdown of minimum salary expected at 3 years
select state, min(Monthly_pay_anticipated_for_the_first_three_years) as min_expecting_at_3years,
COUNT(CASE WHEN gender = 'M' THEN 1 END) as Male_count,
COUNT(CASE WHEN gender = 'F' THEN 1 END) as Female_count,
COUNT(CASE WHEN gender NOT IN ('M', 'F') THEN 1 END) as Others_count,
count(*) as Total_count
from Your_Career_aspiration_2
join India_pincode
on Your_Career_aspiration_2.Zip_Code = India_pincode.pincode
where Country = 'India'
group by state
order by state;

-- 18. State-wise contribution of breakdown of maximum salary expected at 3 years
select state, max(Monthly_pay_anticipated_for_the_first_three_years) as max_expecting_at_3years,
COUNT(CASE WHEN gender = 'M' THEN 1 END) as Male_count,
COUNT(CASE WHEN gender = 'F' THEN 1 END) as Female_count,
COUNT(CASE WHEN gender NOT IN ('M', 'F') THEN 1 END) as Others_count,
count(*) as Total_count
from Your_Career_aspiration_2
join India_pincode
on Your_Career_aspiration_2.Zip_Code = India_pincode.pincode
where Country = 'India'
group by state 
order by state;

-- 19. state-wise contribution of breakdown of the No remote working policy
select state, Work_for_company_with_no_remote_policy as No_remote_policy,
COUNT(CASE WHEN gender = 'M' THEN 1 END) as Male_count,
COUNT(CASE WHEN gender = 'F' THEN 1 END) as Female_count,
COUNT(CASE WHEN gender NOT IN ('M', 'F') THEN 1 END) as Others_count, Count(*) as Total_Count
from Your_Career_aspiration_2
join India_pincode
on Your_Career_aspiration_2.Zip_Code = India_pincode.pincode
where Country = 'India'
group by state, Work_for_company_with_no_remote_policy
order by state, Total_count;

-- 20. state-wise contribution of breakdown of the Starting Salary expected
select state, Anticipated_beginning_monthly_pay as Starting_salary_Expected,
COUNT(CASE WHEN gender = 'M' THEN 1 END) as Male_count,
COUNT(CASE WHEN gender = 'F' THEN 1 END) as Female_count,
COUNT(CASE WHEN gender NOT IN ('M', 'F') THEN 1 END) as Others_count, Count(*) as Total_Count
from Your_Career_aspiration_2
join India_pincode
on Your_Career_aspiration_2.Zip_Code = India_pincode.pincode
where Country = 'India'
group by state, Anticipated_beginning_monthly_pay
order by state, Total_count;

-- 21. state-wise contribution of breakdown of work for a company
select state, Preferred_Company_Type,
COUNT(CASE WHEN gender = 'M' THEN 1 END) as Male_count,
COUNT(CASE WHEN gender = 'F' THEN 1 END) as Female_count,
COUNT(CASE WHEN gender NOT IN ('M', 'F') THEN 1 END) as Others_count, Count(*) as Total_Count
from Your_Career_aspiration_2
join India_pincode
on Your_Career_aspiration_2.Zip_Code = India_pincode.pincode
where Country = 'India'
group by state,Preferred_Company_Type
order by state, Total_count;

-- 22. state-wise contribution of breakdown of manager who use abusive words
select state, work_under_abusive_manager,
COUNT(CASE WHEN gender = 'M' THEN 1 END) as Male_count,
COUNT(CASE WHEN gender = 'F' THEN 1 END) as Female_count,
COUNT(CASE WHEN gender NOT IN ('M', 'F') THEN 1 END) as Others_count, Count(*) as Total_Count
from Your_Career_aspiration_2
join India_pincode
on Your_Career_aspiration_2.Zip_Code = India_pincode.pincode
where Country = 'India'
group by state, work_under_abusive_manager
order by state,Total_count;

-- 23. state-wise contribution of breakdown of hours you will work everyday
select state, Daily_Working_Hours,
COUNT(CASE WHEN gender = 'M' THEN 1 END) as Male_count,
COUNT(CASE WHEN gender = 'F' THEN 1 END) as Female_count,
COUNT(CASE WHEN gender NOT IN ('M', 'F') THEN 1 END) as Others_count, Count(*) as Total_Count
from Your_Career_aspiration_2
join India_pincode
on Your_Career_aspiration_2.Zip_Code = India_pincode.pincode
where Country = 'India'
group by state, Daily_Working_Hours
order by state, Total_count;

-- 24. state-wise contribution of breakdown of Full week break
select state, Full_Week_Breaks_for_Work_Life_Balance as Full_Week_Breaks,
COUNT(CASE WHEN gender = 'M' THEN 1 END) as Male_count,
COUNT(CASE WHEN gender = 'F' THEN 1 END) as Female_count,
COUNT(CASE WHEN gender NOT IN ('M', 'F') THEN 1 END) as Others_count, Count(*) as Total_Count
from Your_Career_aspiration_2
join India_pincode
on Your_Career_aspiration_2.Zip_Code = India_pincode.pincode
where Country = 'India'
group by state, Full_Week_Breaks_for_Work_Life_Balance
order by state,Total_count;

-- 25. state-wise contribution of breakdown of Productive at work
select state, Factors_for_Happiness_Productivity as Factor_of_productivity,
COUNT(CASE WHEN gender = 'M' THEN 1 END) as Male_count,
COUNT(CASE WHEN gender = 'F' THEN 1 END) as Female_count,
COUNT(CASE WHEN gender NOT IN ('M', 'F') THEN 1 END) as Others_count, Count(*) as Total_Count
from Your_Career_aspiration_2
join India_pincode
on Your_Career_aspiration_2.Zip_Code = India_pincode.pincode
where Country = 'India'
group by state, Factors_for_Happiness_Productivity
order by state,Total_count;

-- 26. state-wise  contribution of breakdown of frustrate you at work
select state, Work_Frustrations,
COUNT(CASE WHEN gender = 'M' THEN 1 END) as Male_count,
COUNT(CASE WHEN gender = 'F' THEN 1 END) as Female_count,
COUNT(CASE WHEN gender NOT IN ('M', 'F') THEN 1 END) as Others_count, Count(*) as Total_Count
from Your_Career_aspiration_2
join India_pincode
on Your_Career_aspiration_2.Zip_Code = India_pincode.pincode
where Country = 'India'
group by state, Work_Frustrations
order by state, Total_count;

select * from Your_Career_aspiration_2 ;

-- Business Question - Milestone 14

-- 1. distribution of minimum salary Expectation when starting their career to third and fifth year
SELECT
    country,gender,
    MIN(Monthly_pay_anticipated_for_the_first_three_years) AS Minimum_Pay_First_Three_Years,
    MIN(Anticipated_monthly_income_following_five_years) AS Minimum_Pay_Following_Five_Years
FROM
    Your_career_aspiration
GROUP BY
    country,gender;
    
    -- 2. distribution of maximum salary Expectation when starting their career to third and fifth year
SELECT
    country, gender,
    MAX(Monthly_pay_anticipated_for_the_first_three_years) AS MAX_Pay_First_Three_Years,
    MAX(Anticipated_monthly_income_following_five_years) AS MAX_Pay_Following_Five_Years
FROM
    Your_career_aspiration
GROUP BY
    country,gender;






