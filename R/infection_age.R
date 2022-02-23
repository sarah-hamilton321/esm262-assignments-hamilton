#' Calculate age of infection for a virus
#'
#' Our function calculates the age of infection based on lifespan (L),
#' number of new infections caused by an infected individual (Ro), and proportion of
#' people successfully vaccinated (p)
#' @param l average lifespan of population (years) default = 79
#' @param Ro number of new infections caused by infected individual ()
#' @param p proportion of people successfully vaccinated ()
#' @return a average age of infection of population (years)

infection_age = function(Ro, p, l = 79) {
  if (p<0) p=NA
  if (p>1) p=NA
  if (Ro<0) Ro=NA
  a = l/(Ro*(1-p))
  return(a)
}
