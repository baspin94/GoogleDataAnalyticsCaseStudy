# Google Data Analytics Case Study: How Does a Bike-Share Navigate Speedy Success?
This repository contains files related to the case study that I completed in partial fulfillment of the requirements for the [Google Data Analytics Professional Certificate](https://www.coursera.org/professional-certificates/google-data-analytics?utm_source=gg&utm_medium=sem&utm_campaign=15-GoogleDataAnalytics-US&utm_content=B2C&campaignid=12504215975&adgroupid=122709142767&device=c&keyword=data%20analyst%20career&matchtype=b&network=g&devicemodel=&adpostion=&creativeid=504570191901&hide_mobile_promo&gclid=Cj0KCQjwzLCVBhD3ARIsAPKYTcRGW_KSSEP_CgDOMpwYjmE0bExumm20ftBlK8oW-ZZw_zPgfah64gcaAohDEALw_wcB), which I earned in July 2022. For this scenario, I was tasked with comparing how the members and casual users of a bike-sharing service (a fictional company named Cyclistic) differed in various aspects of ridership.

## Documentation
- For a detailed walkthrough of how I processed the datasets used in this analysis and arrived at my conclusions, read the full report here: [GDA Case Study Report](https://baspin94.github.io/data-analyst-portfolio/images/2022-08_Aspin_GDACaseStudy_Portfolio.pdf)
- While the visuals I created are embedded within the report, if you'd like to view them in their original, full-sized format, you can see them on my Tableau Public profile:
	- [Stations: Casual Riders Prefer Different Stations from Members](https://public.tableau.com/views/Bikes2_16523143934870/TopStations-Cvs_M?:language=en-US&:display_count=n&:origin=viz_share_link)
	- [Time of Year: Casual Riders Took More Summer Trips](https://public.tableau.com/views/Bikes_16517164239480/Month?:language=en-US&:display_count=n&:origin=viz_share_link)
	- [Day of Week: Casual Riders Took More Weekend Trips than Members](https://public.tableau.com/views/Bikes_16517164239480/DayofWeek?:language=en-US&:display_count=n&:origin=viz_share_link)
	- [Time of Day: All Riders Took More Afternoon Trips](https://public.tableau.com/views/Bikes_16517164239480/Hour?:language=en-US&:display_count=n&:origin=viz_share_link)
	- [Time of Day: Casual Riders Took More Off-Hours Trips](https://public.tableau.com/views/Bikes_16517164239480/MvCDifference?:language=en-US&:display_count=n&:origin=viz_share_link)
	- [Ride Length: Casual Riders Took Longer Trips than Members](https://public.tableau.com/views/Bikes_16517164239480/RideLength?:language=en-US&:display_count=n&:origin=viz_share_link)
- I also recorded the presentation I would give to the stakeholders in this scenario, which you can watch here: [GDA Case Study Presentation](https://youtu.be/lEbfuE3iCwY)

## Data Source and Licensing
This project utilizes publicly available, anonymized trip data provided by [Divvy](https://ride.divvybikes.com/system-data), a bikeshare program operated by Lyft with oversight from the Chicago Department of Transportation. It can be used for this project thanks to the [license agreement](https://ride.divvybikes.com/data-license-agreement) Divvy has established in conjunction with the City of Chicago. This agreement allows users to download and use the data as source material for analyses, reports, and visualizations.

The original datasets can be downloaded from this [repository](https://divvy-tripdata.s3.amazonaws.com/index.html). I utilized the datasets from the entire 2021 calendar year for this project (filenames starting with '2021').

## Navigating this Repository
### SQL Used in Report
#### Updates
- [Calculate_TripType.sql](https://github.com/baspin94/GoogleDataAnalyticsCaseStudy/blob/main/Calculate_TripType.sql): Collection of updates that categorized trips based on distance and ride length. 
	- **Note:** I created this column to aid with a distance-related line of inquiry that I later abandoned, but I still ended up using it in all of my other queries to filter out trips that were in the 'canceled' category.
- [EndDayIssue_Deletion.sql](https://github.com/baspin94/GoogleDataAnalyticsCaseStudy/blob/main/EndDayIssue_Deletion.sql): Update to delete a small number of records from the database that had an end date greater than 1 day from the start date. This does not represent a typical use case for the bike-sharing service and could have been the result of a data-encoding error.
#### Queries
- [2021_TotalRidership.sql](https://github.com/baspin94/GoogleDataAnalyticsCaseStudy/blob/main/2021_TotalRidership.sql): Summarizes the number and percentage of trips completed during 2021 by members and casual riders.
- [Most_Popular_Stations.sql](https://github.com/baspin94/GoogleDataAnalyticsCaseStudy/blob/main/Most_Popular_Stations.sql): Collection of queries used to pull data related to the most popular stations for members and casual riders.
- [RideLength_Statistics.sql](https://github.com/baspin94/GoogleDataAnalyticsCaseStudy/blob/main/RideLength_Statistics.sql): Query to explore various statistics (average, median, max length) and total hours ridden by members and casual riders.
- [RideableType_Breakdown.sql](https://github.com/baspin94/GoogleDataAnalyticsCaseStudy/blob/main/RideableType_Breakdown.sql): Query to determine how frequently members and casual riders utilized the different bike types available.
- [Ridership_ByDay.sql](https://github.com/baspin94/GoogleDataAnalyticsCaseStudy/blob/main/Ridership_ByDay.sql): Queries to count the number of trips completed on each day of the week by members and casual riders.
- [Ridership_ByHour.sql](https://github.com/baspin94/GoogleDataAnalyticsCaseStudy/blob/main/Ridership_ByHour.sql): Query to coiunt the number of trips that members and casual riders started during a given hour of the day.
### SQL Not Used in Report
#### Updates
- [Season_Updates.sql](https://github.com/baspin94/GoogleDataAnalyticsCaseStudy/blob/main/Season_Updates.sql): Collection of updates that categorized trips based on season.
	- **Note:** I created this column with the intent of comparing the usage of bikes from season to season, but this would have been mostly redundant information, given that I also compared usage from month to month.
### Excel Data Used to Create Visuals in Tableau
- [tableau_data_cleaned.xlsx](https://github.com/baspin94/GoogleDataAnalyticsCaseStudy/blob/main/tableau_data_cleaned.xlsx): Copy of the data pulled from my SQL database and cleaned for the visualizations I created in Tableau.
### Changelog
- [GDA_DataCleaning_Changelog](https://github.com/baspin94/GoogleDataAnalyticsCaseStudy/blob/main/GDA_DataCleaning_Changelog.pdf): Summarizes the changes that I made while cleaning the datasets for this project, including how many records were affected.
### Data Dictionary
- [GDA_DataDictionary.pdf](https://github.com/baspin94/GoogleDataAnalyticsCaseStudy/blob/main/GDA_DataDictionary.pdf): Provides the name, type, and description of each field in the data used for this analysis.
