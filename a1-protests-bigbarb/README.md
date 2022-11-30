# Assignment 1: Protests

During the past few years in the United States, there has been a surge of protests in support of the Black Lives Matter movement, women's rights, trans rights, immigration reform, gun control, the environment, and many other social and political issues.

In this assignment, you will work with data from [CountLove](https://countlove.org/), a group that collects data about protests from across the United States, including information about the purpose of the protests, the location of the protests, as well as how many people attended the protests. This data has often been [cited by the *New York Times*](https://www.nytimes.com/2020/08/28/us/black-lives-matter-protest.html), among other major outlets.

Through this assignment, you will be able to answer questions including:
- What were the most attended and least attended protests in the US in the last 5 years?
- How many protests occurred in Washington state?
- How did the number of protests in 2019 compare to 2020, and why?
- Why are people protesting in the US? What are the biggest motivators?


This assignment is divided into 2 parts. You will complete your coding work in the `analysis.R` file, and you will write short answer responses related to critical analysis and reflection of the data in this `README.md` file. Before getting started on your coding work, you should complete the section **"Critical Analysis & Reflection: Before You Code"** below.

When you are finished with the assignment, be sure to push all changes to your GitHub repository and then submit the link on Canvas.

## Before You Code: Critical Analysis & Reflection

Before diving into this (or any) dataset, it's important to know where the data came from, and it's important to have or to seek out _domain familiarity_ — in other words, knowledge about the subject/topic of the dataset. (We don't want to be "strangers in the dataset," as Catherine D'Ignazio and Lauren Klein describe it.)

To get more familiar, we are going to begin by doing some background reading.

- First, please read [this FAQ](https://countlove.org/faq.html) from the CountLove website and the opening of [this blog post](https://www.tommyleung.com/countLove/index.htm). Based on the information in these pieces, why did the creators start collecting the CountLove data? Please answer in 2-3 sentences (3 points)

*__Creators started collecting the CountLove data because the creators aims to aggregate protest data by citing primary sources in order to have a better understanding and make protest data available (code information about each protest and the data). By making protest data more widely available, people are more aware.__*

- Next, we would like you to read this [*New York Times* piece, which uses CountLove data](https://www.nytimes.com/interactive/2020/06/13/us/george-floyd-protests-cities-photos.html) (here's a [Google Doc version for anyone who gets paywalled](https://docs.google.com/document/d/1sdjFsA5csYuH4plNEEk7WXT77K5h5ZuyW05CBwYdk6A/edit?usp=sharing)), and which describes the Black Lives Matter protests that occurred in the summer of 2020. Please summarize the main point or argument of this article in 2-3 sentences (3 points)

*__The death of a black man after an encounter with a white police officer caused fury to spill out onto the streets. Our country is struggling; America is battling system racism and everyone came together to fight. The article showed us this.__*

Next, we're going to reflect about who collected this data, and what's actually inside it.

- Who collected and shared the CountLove data, and what do they do for a living? Please answer in 1-2 sentences(2 points)

*__Tommy Leung and Nathan Perkins collect and share the CountLove data. Both are engineers and scientist that have an interest in civic responsibility and public policy. The data comes from local newspaper and television sites that they monitor daily.__*

- As Klein and D'Ignazio remind us, when it comes to data, "what gets counted counts." What types of demonstrations does CountLove include in their data, and what types do they exclude? (3 points)

*__CountLove includes/ counts public displays of protest that are not apart of "regular business." CountLove also have a list of things they don't include such as awareness events, commemorative celebrations, historic reenactments, fundraising events, townhalls, or political campaign rallies.__*

- How and where does CountLove get their data about the protests? Please answer in 2-3 sentences (2 points)

*__CountLoves gets there data about protest by crawling local newspaper and television sites on a daily basis.__*

- How does CountLove make their estimates about the number of people who attended a protest? What potential problems might arise from this method of estimation? Please answer in 3-4 sentences (4 points

*__Countlove records the conservative amount of people(attendance). They interpret “a dozen” as 10, “dozens” as 20, “hundreds” as 100, and so forth. This might not be correct and could be bias. Sharing the correct number of attendees and trying to be accurate avoids one, inaccurate data. And two, faulty predictions/interpretations.__*

## While You Code: Critical Analysis & Reflection

- Reflection 1: Why do you think the mean is higher than the median? Which metric would you use in a report about this data, and why? Please answer in 2-3 sentences (2 points)
*__I think the mean is higher than the median because the data distribution(graph) is Right skewed - the "tail in on the right side." We have alot more data of the attendees on one side than the other on the graph.__*

- Reflection 2: Before actually calculating the number of protests that occurred in 2018, 2019, 2020, record your guesses for the following questions. (1 point)

  Guess: Do you think there were more protests in 2019 than in 2018? Why or why not? Please answer in 1 or 2 sentences
  *__I think there were more protest in the year 2019 compared to 2018 because the presidential election was right around the corner. Trump vs Biden, alot more political tension and social issues are rising again.__*

  Guess: Do you think there were more protests in 2020 than in 2019? Why or why not? Please answer in 1 or 2 sentences
  *__I think there were more protest in the year 2020 compared to 2019 because it was a time when covid started getting serious. Additionally, many things have happened such as the killing of George Floyd and many other black Americans that lead to the rise of BLM protest. Racial injustices/inequality and political agendas were also creating tension__*

- Reflection 3: Does the change in the number of protests from 2018 to 2019 to 2020 surprise you? Why or why not? What do you think explains the fluctuation? Please answer in 1 or 2 sentences (2 points)
*__The major change in the number of protest from 2019 to 2020 really surprised me. This year was tough for everyone. In the data, We can see a major leap in 2020 in terms of the number of protest happening in the United States. I was not expecting the year 2018 to have more protest than 2019, which it surprisingly had__*

- Reflection 4: What is the first and fourth most frequent category of protest? Do these frequencies align with your sense of the major protest movements in the U.S. in the last few years? Why or why not? (3 points)
*__The first most frequent category of protest was Racial Injustice. And the fourth most frequent category of protest was immigration. This data frequencies align with my sense of major protest movements in the US in the last few years; it doesn't surprise me at all. I noticed events that might cause protest in these categories. For example, when Trump was running for president and won the presidency, he wanted a stricter border policy, "Build the wall". This caused a lot of controversy. And the killing of George Floyd also sparked BLM protest and we continued to hear about Police Brutality and racial inequality. These issues will continue in our country till changes are made. The data comes from the recent BLM protest and also radical immigration laws and changes set by many of our politicians in their states capitals and DC.__*

## After You Code: Critical Analysis & Reflection

In the second chapter of *Data Feminism*, Klein and D'Ignazio describe 4 ways that data scientists can challenge power and take action:
> Taking action can itself take many forms, and in this chapter we offer four starting points:  
> (1) Collect: Compiling counterdata—in the face of missing data or institutional neglect—offers a powerful starting point as we see in the example of the DGEI, or in María Salguero’s femicide maps discussed in chapter 1.  
> (2) Analyze: Challenging power often requires demonstrating inequitable outcomes across groups, and new computational methods are being developed to audit opaque algorithms and hold institutions accountable.  
> (3) Imagine: We cannot only focus on inequitable outcomes, because then we will never get to the root cause of injustice. In order to truly dismantle power, we have to imagine our end point not as “fairness,” but as co-liberation.  
> (4) Teach: The identities of data scientists matter, so how might we engage and empower newcomers to the field in order to shift the demographics and cultivate the next generation of data feminists?  

- How does the CountLove project embody one or more of these 4 forms of challenging power? Please answer in at least 3-4 sentences (3 points)
*__The CountLove project embodies one or more of these 4 forms of challenging power by collecting "true" data. They crawl and monitor data from local news in order to not leave anything out. The data that is being collected by them is teaching the users about the data, and how to understand it/viewing it from another perspective. CountLove shows us where and how they get their data and what they do to work with it.__*

- What is the most interesting or surprising thing you learned from this analysis? Please answer in at least 2-3 sentences (2 points)
*__The most interesting thing I have learned from this analysis is that all of these protest happened ALL OVER the country. This showed me a new perspective in which I can build upon my knowledge of. We are all coming together for one cause and I feel very empathetic to people who have experienced these issues__*

- What is a kind of analysis that you would like to do or that would be interesting to do with the CountLove data that you don't have the time or skills to accomplish at this moment? Please answer in at least 2-3 sentences (2 points)
*__The kind of analysis that I would love to do with the CountLove data is to see the which generations are protesting for the injustices in America (LGBTQ, BLM, IMMIGRATION< etc.) The question I want to know is how is my generation, gen z, comparing to other generations in terms of protesting?__*
