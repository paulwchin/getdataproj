# Code Book for Human Activity Recognition Using Smartphones Dataset
## DECEMBER 27, 2015

## INTRODUCTION

The following Code Book describes the Human Activity Recognition Using 
Smartphones dataset. The raw data was summarized and organized into a tidy
format. In addition to this introduction, this Code Book includes the
following sections.

* DATASET DESCRIPTION
This section describes what data is available and
how the data are stored.

* LIST OF VARIABLES
A list of entries(variables) in the Code Book which
can be used as a table of contents to locate specific variables in this
document.

## DATASET

This dataset consists of a single space-delimited file containing the 
averages of the mean and standard deviations of data collected by Samsung 
Galaxy S II smartphones worn on the waist of 30 volunteers performing 6 
activities. Each row in the file represents the summary of data collected 
for a unique volunteer and activity combination. The data was summarized by 
taking the mean of all the mean and standard deviation data available for 
that specific volunteer and activity combination.

From the README.txt file of the dataset:
"The sensor signals (accelerometer and gyroscope) were pre-processed by 
applying noise filters and then sampled in fixed-width sliding windows of 
2.56 sec and 50% overlap (128 readings/window). The sensor acceleration 
signal, which has gravitational and body motion components, was separated 
using a Butterworth low-pass filter into body acceleration and gravity. 
The gravitational force is assumed to have only low frequency components, 
therefore a filter with 0.3 Hz cutoff frequency was used. From each window, 
a vector of features was obtained by calculating variables from the time 
and frequency domain. See 'features_info.txt' for more details."

Also, all the data has been normalized and is bounded within [-1,1] 
(and so is unitless). 


## LIST OF VARIABLES

**volunteer**
This is a number from 1 to 30 representing the volunteer that the data
represents. The original volunteers in the test dataset were 2, 4, 9, 10,
12, 13, 18, 20, and 24. The original volunteers in the train dataset were 
1, 3, 5, 6, 7, 8, 11, 14, 15, 16, 17, 19, 21, 22, 23, 25, 26, 27, 28, 29, 
and 30.

**activity**
This is a character string that describes the activity that the volunteer
was doing while the data was being collected. The data was originally
in integer form between 1 and 6 and was converted to the descriptions 
found in the "activity_labels.txt". 

**average.of.the.mean.of.the.accelerometer.body.acceleration.signals.in.the.x.axis**
This is the average of the mean of the accelerometer body acceleration signals in the x axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.of.the.accelerometer.body.acceleration.signals.in.the.y.axis**
This is the average of the mean of the accelerometer body acceleration signals in the y axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.of.the.accelerometer.body.acceleration.signals.in.the.z.axis**
This is the average of the mean of the accelerometer body acceleration signals in the z axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.standard.deviation.of.the.accelerometer.body.acceleration.signals.in.the.x.axis**
This is the average of the standard deviation of the accelerometer body acceleration signals in the x axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.standard.deviation.of.the.accelerometer.body.acceleration.signals.in.the.y.axis**
This is the average of the standard deviation of the accelerometer body acceleration signals in the y axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.standard.deviation.of.the.accelerometer.body.acceleration.signals.in.the.z.axis**
This is the average of the standard deviation of the accelerometer body acceleration signals in the z axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.of.the.accelerometer.gravity.acceleration.signals.in.the.x.axis**
This is the average of the mean of the accelerometer gravity acceleration signals in the x axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.of.the.accelerometer.gravity.acceleration.signals.in.the.y.axis**
This is the average of the mean of the accelerometer gravity acceleration signals in the y axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.of.the.accelerometer.gravity.acceleration.signals.in.the.z.axis**
This is the average of the mean of the accelerometer gravity acceleration signals in the z axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.standard.deviation.of.the.accelerometer.gravity.acceleration.signals.in.the.x.axis**
This is the average of the standard deviation of the accelerometer gravity acceleration signals in the x axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.standard.deviation.of.the.accelerometer.gravity.acceleration.signals.in.the.y.axis**
This is the average of the standard deviation of the accelerometer gravity acceleration signals in the y axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.standard.deviation.of.the.accelerometer.gravity.acceleration.signals.in.the.z.axis**
This is the average of the standard deviation of the accelerometer gravity acceleration signals in the z axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.of.the.accelerometer.body.jerk.signals.in.the.x.axis**
This is the average of the mean of the accelerometer body jerk signals in the x axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.of.the.accelerometer.body.jerk.signals.in.the.y.axis**
This is the average of the mean of the accelerometer body jerk signals in the y axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.of.the.accelerometer.body.jerk.signals.in.the.z.axis**
This is the average of the mean of the accelerometer body jerk signals in the z axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.standard.deviation.of.the.accelerometer.body.jerk.signals.in.the.x.axis**
This is the average of the standard deviation of the accelerometer body jerk signals in the x axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.standard.deviation.of.the.accelerometer.body.jerk.signals.in.the.y.axis**
This is the average of the standard deviation of the accelerometer body jerk signals in the y axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.standard.deviation.of.the.accelerometer.body.jerk.signals.in.the.z.axis**
This is the average of the standard deviation of the accelerometer body jerk signals in the z axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.of.the.gyroscope.body.acceleration.signals.in.the.x.axis**
This is the average of the mean of the gyroscope body acceleration signals in the x axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.of.the.gyroscope.body.acceleration.signals.in.the.y.axis**
This is the average of the mean of the gyroscope body acceleration signals in the y axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.of.the.gyroscope.body.acceleration.signals.in.the.z.axis**
This is the average of the mean of the gyroscope body acceleration signals in the z axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.standard.deviation.of.the.gyroscope.body.acceleration.signals.in.the.x.axis**
This is the average of the standard deviation of the gyroscope body acceleration signals in the x axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.standard.deviation.of.the.gyroscope.body.acceleration.signals.in.the.y.axis**
This is the average of the standard deviation of the gyroscope body acceleration signals in the y axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.standard.deviation.of.the.gyroscope.body.acceleration.signals.in.the.z.axis**
This is the average of the standard deviation of the gyroscope body acceleration signals in the z axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.of.the.gyroscope.body.jerk.signals.in.the.x.axis**
This is the average of the mean of the gyroscope body jerk signals in the x axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.of.the.gyroscope.body.jerk.signals.in.the.y.axis**
This is the average of the mean of the gyroscope body jerk signals in the y axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.of.the.gyroscope.body.jerk.signals.in.the.z.axis**
This is the average of the mean of the gyroscope body jerk signals in the z axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.standard.deviation.of.the.gyroscope.body.jerk.signals.in.the.x.axis**
This is the average of the standard deviation of the gyroscope body jerk signals in the x axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.standard.deviation.of.the.gyroscope.body.jerk.signals.in.the.y.axis**
This is the average of the standard deviation of the gyroscope body jerk signals in the y axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.standard.deviation.of.the.gyroscope.body.jerk.signals.in.the.z.axis**
This is the average of the standard deviation of the gyroscope body jerk signals in the z axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.of.the.accelerometer.body.acceleration.signal.magnitudes**
This is the average of the mean of the accelerometer body acceleration signal magnitudes. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.standard.deviation.of.the.accelerometer.body.acceleration.signal.magnitudes**
This is the average of the standard deviation of the accelerometer body acceleration signal magnitudes. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.of.the.accelerometer.gravity.acceleration.signal.magnitudes**
This is the average of the mean of the accelerometer gravity acceleration signal magnitudes. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.standard.deviation.of.the.accelerometer.gravity.acceleration.signal.magnitudes**
This is the average of the standard deviation of the accelerometer gravity acceleration signal magnitudes. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.of.the.accelerometer.body.jerk.signal.magnitudes**
This is the average of the mean of the accelerometer body jerk signal magnitudes. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.standard.deviation.of.the.accelerometer.body.jerk.signal.magnitudes**
This is the average of the standard deviation of the accelerometer body jerk signal magnitudes. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.of.the.gyroscope.body.acceleration.signal.magnitudes**
This is the average of the mean of the gyroscope body acceleration signal magnitudes. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.standard.deviation.of.the.gyroscope.body.acceleration.signal.magnitudes**
This is the average of the standard deviation of the gyroscope body acceleration signal magnitudes. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.of.the.gyroscope.body.jerk.signal.magnitudes**
This is the average of the mean of the gyroscope body jerk signal magnitudes. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.standard.deviation.of.the.gyroscope.body.jerk.signal.magnitudes**
This is the average of the standard deviation of the gyroscope body jerk signal magnitudes. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.of.the.fast.fourier.transforms.of.the.accelerometer.body.acceleration.signals.in.the.x.axis**
This is the average of the mean of the fast fourier transforms of the accelerometer body acceleration signals in the x axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.of.the.fast.fourier.transforms.of.the.accelerometer.body.acceleration.signals.in.the.y.axis**
This is the average of the mean of the fast fourier transforms of the accelerometer body acceleration signals in the y axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.of.the.fast.fourier.transforms.of.the.accelerometer.body.acceleration.signals.in.the.z.axis**
This is the average of the mean of the fast fourier transforms of the accelerometer body acceleration signals in the z axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.standard.deviation.of.the.fast.fourier.transforms.of.the.accelerometer.body.acceleration.signals.in.the.x.axis**
This is the average of the standard deviation of the fast fourier transforms of the accelerometer body acceleration signals in the x axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.standard.deviation.of.the.fast.fourier.transforms.of.the.accelerometer.body.acceleration.signals.in.the.y.axis**
This is the average of the standard deviation of the fast fourier transforms of the accelerometer body acceleration signals in the y axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.standard.deviation.of.the.fast.fourier.transforms.of.the.accelerometer.body.acceleration.signals.in.the.z.axis**
This is the average of the standard deviation of the fast fourier transforms of the accelerometer body acceleration signals in the z axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.frequency.of.the.fast.fourier.transforms.of.the.accelerometer.body.acceleration.signals.in.the.x.axis**
This is the average of the mean frequency of the fast fourier transforms of the accelerometer body acceleration signals in the x axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.frequency.of.the.fast.fourier.transforms.of.the.accelerometer.body.acceleration.signals.in.the.y.axis**
This is the average of the mean frequency of the fast fourier transforms of the accelerometer body acceleration signals in the y axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.frequency.of.the.fast.fourier.transforms.of.the.accelerometer.body.acceleration.signals.in.the.z.axis**
This is the average of the mean frequency of the fast fourier transforms of the accelerometer body acceleration signals in the z axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.of.the.fast.fourier.transforms.of.the.accelerometer.body.jerk.signals.in.the.x.axis**
This is the average of the mean of the fast fourier transforms of the accelerometer body jerk signals in the x axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.of.the.fast.fourier.transforms.of.the.accelerometer.body.jerk.signals.in.the.y.axis**
This is the average of the mean of the fast fourier transforms of the accelerometer body jerk signals in the y axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.of.the.fast.fourier.transforms.of.the.accelerometer.body.jerk.signals.in.the.z.axis**
This is the average of the mean of the fast fourier transforms of the accelerometer body jerk signals in the z axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.standard.deviation.of.the.fast.fourier.transforms.of.the.accelerometer.body.jerk.signals.in.the.x.axis**
This is the average of the standard deviation of the fast fourier transforms of the accelerometer body jerk signals in the x axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.standard.deviation.of.the.fast.fourier.transforms.of.the.accelerometer.body.jerk.signals.in.the.y.axis**
This is the average of the standard deviation of the fast fourier transforms of the accelerometer body jerk signals in the y axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.standard.deviation.of.the.fast.fourier.transforms.of.the.accelerometer.body.jerk.signals.in.the.z.axis**
This is the average of the standard deviation of the fast fourier transforms of the accelerometer body jerk signals in the z axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.frequency.of.the.fast.fourier.transforms.of.the.accelerometer.body.jerk.signals.in.the.x.axis**
This is the average of the mean frequency of the fast fourier transforms of the accelerometer body jerk signals in the x axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.frequency.of.the.fast.fourier.transforms.of.the.accelerometer.body.jerk.signals.in.the.y.axis**
This is the average of the mean frequency of the fast fourier transforms of the accelerometer body jerk signals in the y axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.frequency.of.the.fast.fourier.transforms.of.the.accelerometer.body.jerk.signals.in.the.z.axis**
This is the average of the mean frequency of the fast fourier transforms of the accelerometer body jerk signals in the z axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.of.the.fast.fourier.transforms.of.the.gyroscope.body.acceleration.signals.in.the.x.axis**
This is the average of the mean of the fast fourier transforms of the gyroscope body acceleration signals in the x axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.of.the.fast.fourier.transforms.of.the.gyroscope.body.acceleration.signals.in.the.y.axis**
This is the average of the mean of the fast fourier transforms of the gyroscope body acceleration signals in the y axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.of.the.fast.fourier.transforms.of.the.gyroscope.body.acceleration.signals.in.the.z.axis**
This is the average of the mean of the fast fourier transforms of the gyroscope body acceleration signals in the z axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.standard.deviation.of.the.fast.fourier.transforms.of.the.gyroscope.body.acceleration.signals.in.the.x.axis**
This is the average of the standard deviation of the fast fourier transforms of the gyroscope body acceleration signals in the x axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.standard.deviation.of.the.fast.fourier.transforms.of.the.gyroscope.body.acceleration.signals.in.the.y.axis**
This is the average of the standard deviation of the fast fourier transforms of the gyroscope body acceleration signals in the y axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.standard.deviation.of.the.fast.fourier.transforms.of.the.gyroscope.body.acceleration.signals.in.the.z.axis**
This is the average of the standard deviation of the fast fourier transforms of the gyroscope body acceleration signals in the z axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.frequency.of.the.fast.fourier.transforms.of.the.gyroscope.body.acceleration.signals.in.the.x.axis**
This is the average of the mean frequency of the fast fourier transforms of the gyroscope body acceleration signals in the x axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.frequency.of.the.fast.fourier.transforms.of.the.gyroscope.body.acceleration.signals.in.the.y.axis**
This is the average of the mean frequency of the fast fourier transforms of the gyroscope body acceleration signals in the y axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.frequency.of.the.fast.fourier.transforms.of.the.gyroscope.body.acceleration.signals.in.the.z.axis**
This is the average of the mean frequency of the fast fourier transforms of the gyroscope body acceleration signals in the z axis. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.of.the.fast.fourier.transforms.of.the.accelerometer.acceleration.signal.magnitudes**
This is the average of the mean of the fast fourier transforms of the accelerometer acceleration signal magnitudes. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.standard.deviation.of.the.fast.fourier.transforms.of.the.accelerometer.acceleration.signal.magnitudes**
This is the average of the standard deviation of the fast fourier transforms of the accelerometer acceleration signal magnitudes. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.frequency.of.the.fast.fourier.transforms.of.the.accelerometer.acceleration.signal.magnitudes**
This is the average of the mean frequency of the fast fourier transforms of the accelerometer acceleration signal magnitudes. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.of.the.fast.fourier.transforms.of.the.accelerometer.jerk.signal.magnitudes**
This is the average of the mean of the fast fourier transforms of the accelerometer jerk signal magnitudes. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.standard.deviation.of.the.fast.fourier.transforms.of.the.accelerometer.jerk.signal.magnitudes**
This is the average of the standard deviation of the fast fourier transforms of the accelerometer jerk signal magnitudes. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.frequency.of.the.fast.fourier.transforms.of.the.accelerometer.jerk.signal.magnitudes**
This is the average of the mean frequency of the fast fourier transforms of the accelerometer jerk signal magnitudes. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.of.the.fast.fourier.transforms.of.the.gyroscope.acceleration.signal.magnitudes**
This is the average of the mean of the fast fourier transforms of the gyroscope acceleration signal magnitudes. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.standard.deviation.of.the.fast.fourier.transforms.of.the.gyroscope.acceleration.signal.magnitudes**
This is the average of the standard deviation of the fast fourier transforms of the gyroscope acceleration signal magnitudes. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.frequency.of.the.fast.fourier.transforms.of.the.gyroscope.acceleration.signal.magnitudes**
This is the average of the mean frequency of the fast fourier transforms of the gyroscope acceleration signal magnitudes. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.of.the.fast.fourier.transforms.of.the.gyroscope.jerk.signal.magnitudes**
This is the average of the mean of the fast fourier transforms of the gyroscope jerk signal magnitudes. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.standard.deviation.of.the.fast.fourier.transforms.of.the.gyroscope.jerk.signal.magnitudes**
This is the average of the standard deviation of the fast fourier transforms of the gyroscope jerk signal magnitudes. It is unitless as the signals were normalized (and fall within -1 and 1)

**average.of.the.mean.frequency.of.the.fast.fourier.transforms.of.the.gyroscope.jerk.signal.magnitudes**
This is the average of the mean frequency of the fast fourier transforms of the gyroscope jerk signal magnitudes. It is unitless as the signals were normalized (and fall within -1 and 1)





