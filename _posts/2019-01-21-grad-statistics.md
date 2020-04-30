---
layout: post
title: "A graduate student's perspective on statistics"
date: 2019-01-21 14:25:00
url: statistics-thoughts
---

When I’m meeting someone new, and the inevitable question is asked, “So, what do you do?”, I respond that I’m a Ph.D. student in statistics, to which the response is a majority of the time some variation of this:
 
> “Statistics?! I had one required statistics class in undergrad, and it was so confusing.”
 
The mere frequency of this event has got me thinking why statistics is so universally confusing.  For me, the answer is complex, rooted in the translation of deterministic events (as we see them) into realizations of random processes (as statistics sees them).  I attempt to unpack these complexities below.
 
## Jumping from points to clouds
 
Up until Calculus, where the standard trajectory of mathematical education often ends, we live in a world of points, lines, curves, etc. – shapes where quantities are intertwined via deterministic relationships.  I know that speed = distance/time, so if we need to get somewhere 60 kilometers away in 45 minutes, then I know I must drive at 80 km/hr.  These functional relations are deterministic.
 
But upon stepping into a Statistics class, we step into a world of randomness.  We are no longer working within a set of known relations, but rather are deducing about unknown mechanisms that produce the observations that we see.
 
For instance, we wait for a bus and, given its past reliability, we try to predict whether it will come on time today.  There are many sources of randomness – the synchronization of traffic lights, the courteousness of other drivers on the road, the weather conditions – and these factors lead to different arrival times.
 
As a result, statistics implicitly deals with _probability clouds_ (“the bus comes on time ±1 minute”), rather than points (“the bus always comes exactly on time”).  A tight probability cloud signals that we have made many observations that are tightly bunched together (of the 100 times that we’ve waited for the bus, it has always come within 1 minute of the scheduled time).  A dispersed cloud signals that we simply don’t have enough information (we’ve only waited for the bus once before) or our observations are widely scattered (sometimes it is early by 10 minutes, but other times it is late by 20).
 
I was never actually explicitly told that I was leaving a world of lines for a world of clouds, but I believe it to be a fundamental difficulty in jumping into the world of statistics.  One major consequence is that we no longer manipulate between equivalences (e.g., y = x+3), but rather with ranges and probabilities (e.g., -5< x<5 with 95% probability).
 
## Roses are red, violets are blue… but do I have a rose or a violet?
 
Often, statistics problem sets will pose a question that begins with:
 
> “Assume X is distributed…”
 
In these cases, the theoretical behavior of the random variable X is told to us, and we come to conclusions about what we’re likely to observe about its realizations, which are denoted in lowercase by a small x.  Given different sets of assumptions about X, we can conclude different properties about its behavior, as portrayed below:

<center><img src="writing_image_files/2019-01-grad-statistics-if-then.png" width="300"></center>

With this in mind, you may assume that a crucial tool in statistics is a “sorting hat” which, given a set of empirical data, tests whether they’re closest to being normal, poisson, etc. This way, we know which set of properties to expect from our data.
 
Yet such tools are quite sparse!  There exists the [Kolmogorov-Smirnov Test](https://en.wikipedia.org/wiki/Kolmogorov–Smirnov_test), which tests the similarity of two distributions, but was only mentioned in passing in one of my undergraduate statistics classes.  The [QQ plot](https://en.wikipedia.org/wiki/Q%E2%80%93Q_plot) acts as an improved form of two overlaid histograms that visually compares whether the quantiles of an empirical distribution and its presumed theoretical distribution match up.  It wasn’t until graduate school that I learned about methods like [kernel density estimation](https://en.wikipedia.org/wiki/Kernel_density_estimation) that can be used to estimate non-standard density functions.  And further, these tools are obscure: they are not regularly used as part of statistical workflows.

The field of statistical inference, which dedicates itself to linking an observed dataset with its underlying properties, tends to assume a distribution on the data and simply provide methods for estimating its parameters.  Do the exact distributions themselves have as little effect on the resulting properties as the lack of tools for them seem to imply?
 
My best self-rebuttal lies in the central limit theorem.  We often are interested in the behavior of means (_on average_, will the bus come on time?), and the central limit theorem says that the sum of independent random variables tends toward a normal distribution.  Since the mean involves a sum, then all derivations about normal distributions can be applied towards the means of realizations of independent random variables.  If this is indeed the crux of the argument, then I remain interested – why do more practitioners not seem concerned about justifying the independence of their observations, since that is required for this link to hold?
 
## And how about data scientists?

Worrying about the accuracy of our models of randomness may seem moot when we realize that data scientists must make deterministic decisions.  Because of this, simply comparing the magnitude of two numbers, or plotting side-by-side histograms may be enough to determine the winning decision.  Statistics operates in a world of uncertainty, but data scientists operate in a world where decisions must be made in a binary fashion.  Yes or no.

In practice, randomness – usually in the form of a p-value – simply tells us how sure to be about our decision, but will never change the direction of our decision.  With this in mind, does precise quantification of the degree of uncertainty actually matter?  If we had chosen to model our data as one distribution versus another, would that have actually changed anything?
 
## My reservations about Statistics
You often hear people describe the pursuit of a Ph.D. as knowing “more and more about less and less”.  But that’s not quite what I’d say about my Ph.D. work so far – I certainly am continuing to learn the fundamental basis of Statistics (like [Stein’s paradox](https://en.wikipedia.org/wiki/Stein%27s_example)!).
 
Given the above discussion, my concern moreso surrounds:
1. How to carry over our understandings from theoretical statistics to the real world.  Doing so seems to require an ability to verify the degree to which assumptions are held, an area of statistics that seems underdeveloped.
2. The usefulness of such careful treatment of randomness in a deterministic world. If Statistics is used in order to make concrete choices about public policies, medication, website design, etc., in what way does randomness play an important role?
 
My thoughts are always evolving, and probably not 100% accurate.  I’m very interested to hear comments, disagreements, or feedback at oangiuli@gmail.com.