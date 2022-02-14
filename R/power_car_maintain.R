#' Power required to keep Car Moving
#'
#' This function determines the power required to keep a car moving at a given speed.
#' @param velocity speed of car assuming no headwind (m/s)
#' @param mass vehicle mass (kg)
#' @param area surface area of car (m^2)
#' @param g acceleration due to gravity (m/s^2) default = 9.8
#' @param p_air density of air (kg/m^3) default = 1.2
#' @param crolling rolling resistive coefficient () default = 0.015
#' @param cdrag aerodynamic resistive coefficient () default = 0.3
#' @return power (W)
#'
# function definition
power_car_maintain = function(velocity, mass, area, g = 9.8, p_air = 1.2, crolling = 0.015, cdrag = 0.3) {
  power = crolling*mass*g*velocity+0.5*area*p_air*cdrag*(velocity^3)
  return(power)
}
