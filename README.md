# Extremum-Seeking-Control
Development and implementation of an extremum seeking controller

###The Objective
The objective is to reduce braking distance of a car under differing driving conditions by using ABS braking.
Car deceleration is determined by the Mu friction coefficient of the road, which at any time is subject upon an unkown function of the road slip lambda. The Mu curve demonstrates a peak at some optimal lambda slip value bewteen 0 and 1. This Mu curve is unkown and hence the optimal value is also.
For maximal braking, torque should be administered so that the plant operates at a point of maximum friction, so that the car experiences maximal deceleration.
And so an extremum seeker is employed so that the plant can locate and then operate at this point of optimal slip, so that maximum friction can be applied - ultimatey reducing car braking distance.

###The Problem
The problem is broken down into 3 parts:
* Task 2 - Constructing the basic (proportional) torque controller (as per specifications) to be used on the wheel model
* Task 3a - Constructing a basic extremum seeker
* Task 3b - Constructing a bespoke 'Safe' extremum seeker that can operate left of the Mu peak (always slightly less than the optimal slip point) without losses in performance

###Results
The bespoke solution, by using a dynamically-changing step size, can find the peak faster and with greater accuracy and flexibility, however requires extra tuning parameters based on offline estimates of the road conditions and Mu curve characteristics. Other alternatives are possible but either entail some encroaching past the peak during steady state oscillation or that use of an overly-conservative constraint without application of useful available plant knowledge.
