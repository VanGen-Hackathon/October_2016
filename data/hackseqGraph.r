# hackseqGraph.r
#
# Graphing of hackseq Survey Data
#
#
#

library(ggplot2)
library(grid)
library(gridExtra)

# Programming Language Usage Plot -----------------------------------
LANG = read.csv("langParsed_wOther.txt", header=T, sep = "\t")
  colnames(LANG) = c('Language','Occurance')
  
  # Re-order Language factor such that it's ordered
  # by Occurance (the default input)
  # and reveresed
  LANG$Language = factor(as.character(LANG$Language),
                         levels = rev(as.character(LANG$Language)))


# Plot 
PLOT = ggplot(data = LANG, aes(x = Language, y = Occurance))
PLOT = PLOT + theme_minimal() +
  theme(panel.background = element_rect(fill = "#18110f", color = "#18110f"),
        panel.grid.major = element_line(colour = "#18110f"),
        panel.grid.minor = element_line(colour = "#18110f"),
        axis.line = element_line(colour = "#000000"),
        plot.background = element_rect(fill = "#18110f"),
        text = element_text(colour = "#ffffff"))
PLOT = PLOT + geom_bar(stat = "identity", fill = "#e7d0ba")
PLOT = PLOT + coord_flip()
PLOT = PLOT + ggtitle("Reported Software Usage")
PLOT = PLOT + xlab(" ") + ylab("Participant Usage")
PLOT = PLOT + annotate("text", x = 2, y = 40, color = "white", label = "N = 52") 
PLOT

# Subjective Experience Rating --------------------------------------

EXP = read.csv("experienceRating.txt", header = T, sep = "\t")
# colnames(EXP) = c('Fun-Boring', 'Enlightening-Uninformative',
#                   'Collaborative-Hostile', 'Organized-Chaotic')
  colnames(EXP) = c('Fun', 'Enlightening', 'Collaborative', 'Organized')
  
# Plot Fun - Boring
  PLOT = ggplot(data = EXP, aes(x = Fun))
  PLOT = PLOT + theme_minimal() +
    theme(panel.background = element_rect(fill = "#18110f", color = "#18110f"),
          panel.grid.major = element_line(colour = "#18110f"),
          panel.grid.minor = element_line(colour = "#18110f"),
          axis.line = element_line(colour = "#000000"),
          axis.text.y = element_text(colour = "#18110f"),
          plot.background = element_rect(fill = "#18110f"),
          text = element_text(colour = "#ffffff"))
  PLOT = PLOT + geom_density(adjust = 1.4, colour = "#000000", fill = "#e7d0ba")
  PLOT = PLOT + xlim(c(1,5))
  PLOT = PLOT + xlab('') + ylab('Fun - Boring')
  PLOT
  
  # Plot Enlightening - Uninformative
  PLOT2 = ggplot(data = EXP, aes(x = Enlightening))
  PLOT2 = PLOT2 + theme_minimal() +
    theme(panel.background = element_rect(fill = "#18110f", color = "#18110f"),
          panel.grid.major = element_line(colour = "#18110f"),
          panel.grid.minor = element_line(colour = "#18110f"),
          axis.line = element_line(colour = "#000000"),
          axis.text.y = element_text(colour = "#18110f"),
          plot.background = element_rect(fill = "#18110f"),
          text = element_text(colour = "#ffffff"))
  PLOT2 = PLOT2 + geom_density(adjust = 1.4, colour = "#000000", fill = "#e7d0ba")
  PLOT2 = PLOT2 + xlim(c(1,5))
  PLOT2 = PLOT2 + xlab('') + ylab('Enlightening - Uninformative')
  PLOT2
  
  # Plot Collaborative-Hostile'
  PLOT3 = ggplot(data = EXP, aes(x = Collaborative))
  PLOT3 = PLOT3 + theme_minimal() +
    theme(panel.background = element_rect(fill = "#18110f", color = "#18110f"),
          panel.grid.major = element_line(colour = "#18110f"),
          panel.grid.minor = element_line(colour = "#18110f"),
          axis.line = element_line(colour = "#000000"),
          axis.text.y = element_text(colour = "#18110f"),
          plot.background = element_rect(fill = "#18110f"),
          text = element_text(colour = "#ffffff"))
  PLOT3 = PLOT3 + geom_density(adjust = 1.4, colour = "#000000", fill = "#e7d0ba")
  PLOT3 = PLOT3 + xlim(c(1,5))
  PLOT3 = PLOT3 + xlab('') + ylab('Collaborative-Hostile')
  PLOT3
  
  # Plot Organized-Chaotic
  PLOT4 = ggplot(data = EXP, aes(x = Organized))
  PLOT4 = PLOT4 + theme_minimal() +
    theme(panel.background = element_rect(fill = "#18110f", color = "#18110f"),
          panel.grid.major = element_line(colour = "#18110f"),
          panel.grid.minor = element_line(colour = "#18110f"),
          axis.line = element_line(colour = "#000000"),
          axis.text.y = element_text(colour = "#18110f"),
          plot.background = element_rect(fill = "#18110f"),
          text = element_text(colour = "#ffffff"))
  PLOT4 = PLOT4 + geom_density(adjust = 1.4, colour = "#000000", fill = "#e7d0ba")
  PLOT4 = PLOT4 + xlim(c(1,5))
  PLOT4 = PLOT4 + xlab('') + ylab('Organized-Chaotic')
  PLOT4
  