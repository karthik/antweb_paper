

## @knitr counts
library(AntWeb)
genera <- aw_distinct("genus")$count
species <- aw_distinct("species")
species <- species$count


## @knitr how_many_species
madagascar <- aw_data(country = "Madagascar")
total_results <- madagascar$count
offset <- seq(0,ceiling(total_results), by = 1000)
madagascar_all <- lapply(offset, function(x) {
		message(sprintf("finishing %s results", x))
		output <- aw_data(country = "Madagascar", offset = x, quiet = TRUE)
		return(output$data)

})
all_madagascar_data <- data.table::rbindlist(madagascar_all)
saveRDS(all_madagascar_data, file = "data/madagascar.rda", compress = 'xz')
write.csv(all_madagascar_data, file = "all_madagascar_data.csv")



## @knitr elevation_gradient
message("placeholder for ...")

## @knitr latitude_gradient
message("placeholder for ...")

## @knitr across_habitats
message("placeholder for ...")

## @knitr two_localities
message("placeholder for ...")

## @knitr endemism
message("placeholder for ...")

## @knitr accumulation
message("placeholder for ...")