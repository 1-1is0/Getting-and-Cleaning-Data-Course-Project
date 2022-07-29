# Introduction

The experiments have been carried out with a group of 30 volunteers within an
age bracket of 19-48 years. Each person performed six activities
(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
wearing a smartphone (Samsung Galaxy S II) on the waist.
Using its embedded accelerometer and gyroscope, we captured 3-axial linear
acceleration and 3-axial angular velocity at a constant rate of 50Hz.
The experiments have been video-recorded to label the data manually.  

The sensor signals (accelerometer and gyroscope) were pre-processed
by applying noise filters and then sampled in fixed-width sliding windows
of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration
signal, which has gravitational and body motion components, was separated
using a Butterworth low-pass filter into body acceleration and gravity.
The gravitational force is assumed to have only low frequency components,
therefore a filter with 0.3 Hz cutoff frequency was used.
From each window, a vector of features was obtained by calculating
variables from the time and frequency domain.  

For each record it is provided:
- Its activity label.  
- An identifier of the subject who carried out the experiment.  
- A 88-feature mean vector with mean and std of time and frequency
domain variables. 


## Data Description
The features selected for this database come from the accelerometer and
gyroscope 3-axial raw signals *time.acc-XYZ* and *time.gyro-XYZ*. These time
domain signals (prefix *time* to denote time) were
captured at a constant rate of 50 Hz. Then they were filtered using a median
filter and a 3rd order low pass Butterworth filter with a corner frequency
of 20 Hz to remove noise. Similarly, the acceleration signal was then separated
into body and gravity acceleration signals (*time.body.acc-XYZ* and
*time.gravity.acc-XYZ*) using another low pass Butterworth filter with a corner
frequency of 0.3 Hz.  

Subsequently, the body linear acceleration and angular velocity were derived
in time to obtain Jerk signals (*time.body.acc.jerk-XYZ* and
*time.body.gyro.jerk-XYZ*). Also the magnitude of these three-dimensional
signals were calculated using the Euclidean norm (*time.body.acc.mag*,
*time.gravity.acc.mag*, *time.body.acc.jerk.mag*, *time.body.gyro.mag*,
*time.body.gyro.jerk.mag*).

Then a **Fast Fourier Transform (FFT)** was applied to some of these signals
producing *freq.body.acc-XYZ*, *freq.body.acc.jerk-XYZ*, *freq.body.gyro-XYZ*,
*freq.body.acc.jerk.mag*, *freq.body.gyro.mag*, *freq.body.gyro.jerk.mag*.
(Note the *freq* to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
*-XYZ* is used to denote 3-axial signals in the X, Y and Z directions.

## Variables
This table contains the following data
Each subject id
```
 [1] "subject"
```
Activity label
```
 [2] "y"
```

Mean of *mean* and *std* for variables were estimated.  
mean(): Mean value  
std(): Standard deviation  

The complete list of variables of feature vector are:

```
 [3] "time.body.acc.mean.X"                       
 [4] "time.body.acc.mean.Y"                       
 [5] "time.body.acc.mean.Z"                       
 [6] "time.body.acc.std.X"                        
 [7] "time.body.acc.std.Y"                        
 [8] "time.body.acc.std.Z"                        
 [9] "time.gravity.acc.mean.X"                    
[10] "time.gravity.acc.mean.Y"                    
[11] "time.gravity.acc.mean.Z"                    
[12] "time.gravity.acc.std.X"                     
[13] "time.gravity.acc.std.Y"                     
[14] "time.gravity.acc.std.Z"                     
[15] "time.body.acc.jerk.mean.X"                  
[16] "time.body.acc.jerk.mean.Y"                  
[17] "time.body.acc.jerk.mean.Z"                  
[18] "time.body.acc.jerk.std.X"                   
[19] "time.body.acc.jerk.std.Y"                   
[20] "time.body.acc.jerk.std.Z"                   
[21] "time.body.gyro.mean.X"                      
[22] "time.body.gyro.mean.Y"                      
[23] "time.body.gyro.mean.Z"                      
[24] "time.body.gyro.std.X"                       
[25] "time.body.gyro.std.Y"                       
[26] "time.body.gyro.std.Z"                       
[27] "time.body.gyro.jerk.mean.X"                 
[28] "time.body.gyro.jerk.mean.Y"                 
[29] "time.body.gyro.jerk.mean.Z"                 
[30] "time.body.gyro.jerk.std.X"                  
[31] "time.body.gyro.jerk.std.Y"                  
[32] "time.body.gyro.jerk.std.Z"                  
[33] "time.body.acc.mag.mean"                     
[34] "time.body.acc.mag.std"                      
[35] "time.gravity.acc.mag.mean"                  
[36] "time.gravity.acc.mag.std"                   
[37] "time.body.acc.jerk.mag.mean"                
[38] "time.body.acc.jerk.mag.std"                 
[39] "time.body.gyro.mag.mean"                    
[40] "time.body.gyro.mag.std"                     
[41] "time.body.gyro.jerk.mag.mean"               
[42] "time.body.gyro.jerk.mag.std"                
[43] "freq.body.acc.mean.X"                       
[44] "freq.body.acc.mean.Y"                       
[45] "freq.body.acc.mean.Z"                       
[46] "freq.body.acc.std.X"                        
[47] "freq.body.acc.std.Y"                        
[48] "freq.body.acc.std.Z"                        
[49] "freq.body.acc.mean.freq.X"                  
[50] "freq.body.acc.mean.freq.Y"                  
[51] "freq.body.acc.mean.freq.Z"                  
[52] "freq.body.acc.jerk.mean.X"                  
[53] "freq.body.acc.jerk.mean.Y"                  
[54] "freq.body.acc.jerk.mean.Z"                  
[55] "freq.body.acc.jerk.std.X"                   
[56] "freq.body.acc.jerk.std.Y"                   
[57] "freq.body.acc.jerk.std.Z"                   
[58] "freq.body.acc.jerk.mean.freq.X"             
[59] "freq.body.acc.jerk.mean.freq.Y"             
[60] "freq.body.acc.jerk.mean.freq.Z"             
[61] "freq.body.gyro.mean.X"                      
[62] "freq.body.gyro.mean.Y"                      
[63] "freq.body.gyro.mean.Z"                      
[64] "freq.body.gyro.std.X"                       
[65] "freq.body.gyro.std.Y"                       
[66] "freq.body.gyro.std.Z"                       
[67] "freq.body.gyro.mean.freq.X"                 
[68] "freq.body.gyro.mean.freq.Y"                 
[69] "freq.body.gyro.mean.freq.Z"                 
[70] "freq.body.acc.mag.mean"                     
[71] "freq.body.acc.mag.std"                      
[72] "freq.body.acc.mag.mean.freq"                
[73] "freq.body.body.acc.jerk.mag.mean"           
[74] "freq.body.body.acc.jerk.mag.std"            
[75] "freq.body.body.acc.jerk.mag.mean.freq"      
[76] "freq.body.body.gyro.mag.mean"               
[77] "freq.body.body.gyro.mag.std"                
[78] "freq.body.body.gyro.mag.mean.freq"          
[79] "freq.body.body.gyro.jerk.mag.mean"          
[80] "freq.body.body.gyro.jerk.mag.std"           
[81] "freq.body.body.gyro.jerk.mag.mean.freq"     
```


