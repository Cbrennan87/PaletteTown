#` Title: A Collection of Palettes based upon the Pokemon Franchise
#'
#' A collection of many colour palettes based upon pokemon types, towns, trainers, and more. Contains functions compatible with ggplot fill and colour.
#'
#' @param palette name of palette
#' @param randomize determines whether palette colours are randomized or not. Either "YES" or "NO".
#' @param palette_gen()  A Desc
#' @param scale_colour_palette_town() A Desc
#' @param scale_color_palette_town() A Desc
#' @param scale_fill_palette_town() A Desc
#' @returns A plot with the designated colour scheme
#' @import ggplot2
#' @examples
#' ggplot(iris, aes(Sepal.Length, Sepal.Width, fill = Species))+geom_col()+
#' scale_fill_palette_town(palette = "Types", randomize = "YES")


palette_town_palette <- function(palette = "Types", ...) {

  palette_town_palettes <- list(
    `Types` = c("#fe4422", "#3399ff", "#77cc55", "#ffcc33",
                "#ff5599", "#889aff", "#bb5544", "#66ccff",
                "#aabc21", "#aa5599", "#6666bb", "#775544",
                "#ef98ee","#bbaa66", "#7766ee", "#aaaabb",
                "#ddbb55"),

    `Pokeballs` = c("#ED5B43", "#268AB7", "#7762A2", "#515151", "#81BB3E",
                    "#D73E90", "#9DA0A5","#00A8BB" ,"#5778BB", "#F28F36", "#80AE7C", "#A68561", "#F1C942", "#43A2A2", "#EE6048",
                    "#56A5E6"),

    `Towns` = c("#4281A4", "#40826d", "#606263", "#E34234", "#D9027D","#FFC72C","#B2A4D4", "#ADDFB3"),

    `Eevee` = c("#C08C5B","#75C8DB", "#F7D372", "#EC814A", "#E2C9DC", "#47585D", "#A0D6B2", "#BAE2DF","#F19FB0", "#AD80B6"),

    `Vivillion` = c("#D07DA6", "#7ACAB9","#5078B3", "#E6CA45", "#6C598A", "#DF615E", "#4EB7CB", "#3B4041", "#FFFD7C",
                    "#5BB7B8", "#B8D883", "#E6768D"),

    `Games` = c("#C73921", "#20A72C", "#3A6BB7", "#F8D134", "#BDB078","#959CA4", "#56BDA2", "#D33C39", "#2D60AC",
                "#45AD45", "#435C83", "#D29B9B", "#797486", "#DAB236", "#F69223", "#D39149",
                "#00ADEF", "#DF1261", "#C7244A", "#B644B1"),

    `Normal` = c( "#E3D3AC", "#CBBD95", "#B39E8D","#FAD086", "#C79D69","#D8A764","#B98C75", "#87725F",
                  "#8D8175", "#F2ABC2", "#C485A3", "#9FA0C9"),

    `Fire` = c("#F2B248", "#E9802F", "#E5643A", "#EA7F4D", "#F9AB70", "#F3CF81", "#F7CE4A",
               "#CE8960", "#BD5844","#E77050", "#DE515A"),

    `Water` = c("#5AA4B9", "#598DB9", "#8EC9F3", "#3E6AA8","#58A4B0", "#78CDE0", "#336077","#2B3B65","#88D0F5",
                "#0165A8", "#455787", "#5ABBCE","#3E4C62"),

    `Grass` = c("#76A348","#B0BA40",  "#328920",  "#A7967D","#5FAEAD", "#B8D992", "#8CC693",
                "#8CB179","#488B6F" , "#457049", "#A68057", "#DFD86E", "#C0CF60","#233117" ),

    `Ghost` = c("#6F6395", "#AA344A", "#84A7D8", "#DED2DF", "#BEC7E6",  "#7EA2D5", "#786FAF",
                "#BFC3BA", "#635F5F",  "#2E2230"),

    `Beautifly` = c("#E46463","#00A3BA", "#FCC15F", "#F9D1FF", "#B268BB",  "#46374E",
                    "#F94569","#39B62A", "#C8C4C5", "#69696B"),

    `Cynthia` = c("#484B70", "#DB623F", "#EECA3B", "#51504D", "#E4D196", "#C17A9D", "#6AA94A", "#B9A08A", "#E1646D",  "#70B87A", "#8EA5DC", "#F9A6CA", "#E8D767",
                  "#937040", "#71A6BD", "#A591A2", "#FCF1C6", "#E0767C", "#7CC6E3"),

    `Psychic` = c("#FF69B4","#9400D3","#EE82EE","#800080","#8A2BE2","#DA70D6", "#BA55D3", "#FF69B4"),

    `Oddish` = c("#5b9dbf","#55af33","#ff967a","#ec3f52","#fcd03e"),

    `Gen3Myths` = c("#61bc91","#f88048","#f9e059","#6888f8","#f87768"),


    `Pastel_Types` = c("#D3D3A4","#F8B98D","#A4C5F9","#FAE78B","#B8E2A7","#C8F1F4","#E89A92", "#D5A0D6","#E8D7A9","#D0C8F7", "#F9A1C7",
                       "#D9E88C", "#E1D3A8","#C5A3D8", "#BBA5F8", "#B1A19B","#DADAE6"),

    `Iono` = c("#f8e2fd", "#b8d3e5","#d8d980","#fceccb","#ffcdba"),

    `Oricoro` = c("#ea535f", "#efe43e", "#ed7f99","#9798c9", "#cfbed7","#c1e2e5", "#f0afb7","#f5ede2","#f0efa5"),

    `GBA_Colours` = c("#5AB88D","#F2BE4F", "#A864A8","#828282","#3C84A8","#D96060", "#4E3C79","#3F7646","#92D4DE","#E098B8"),

    `Xerneas` = c("#7e90c3","#a781bb","#ee7445","#f6ca9e","#90d5e1","#fad3e6","#fcf590"),

    `Ho-oh` = c("#b93127", "#b7d15d", "#f3a62f","#7e5756","#817f93","#8595fa"),

    `Minior` = c( "#e46e9a", "#f7ac46","#f3e966","#a7cf75","#78d1df","#2084e5","#ac81d8"),

    `AMuk` = c("#efe43e","#1852a3","#759b77","#eb74a9","#bbb0c3","#5989c7", "#aa5598" ),
    
    `Gen3_Gyms` = c("#597fb9", "#f57191", "#f88740","#f8bf57","#b02837","#8799a7","#a468be" ),
    
    `Celdon` = c("#ff143c","#ff6600","#fff049","#92fe35","#37e300","#3bfff0", "#177dfe", "#fe3df0" ),
    
    `Gen2_Birds` = c("#89c1e7", "#b99cc1", "#fcdc75", "#f18f64","#eb82ab" ),
    
    `Gen2_Starters` = c("#d4e4a9", "#ed9072", "#6bc0cb","#97a865", "#316972", "#dc6c69", "#aa69a7" )


  )

  palette_town_palettes[[palette]]

}

palette_gen <- function(palette = "Types", direction = 1) {

  function(n) {

    if (n > length(palette_town_palette(palette)))
      warning("This palette does not include enough colours!")

    else {

      all_colors <- palette_town_palette(palette)

    }
  }
}


scale_fill_palette_town <- function(palette = "Types", randomize = "YES", direction = 1, ...) {

  if(randomize == "YES"){
    palette_gen <- function(palette = "Types", direction = 1) {

      function(n) {

        if (n > length(palette_town_palette(palette)))
          warning("This palette does not include enough colours!")

        else {

          all_colors <- palette_town_palette(palette)

          all_colors <- unname(unlist(all_colors))

          all_colors <- if (direction >= 0) all_colors else rev(all_colors)

          color_list <- sample(all_colors, n)

        }
      }
    }

    if(randomize == "NO"){
      palette_gen <- function(palette = "Types", direction = 1) {

        function(n) {

          if (n > length(palette_town_palette(palette)))
            warning("This palette does not include enough colours!")

          else {

            all_colors <- palette_town_palette(palette)

          }
        }
      }


    }
  }

  ggplot2::discrete_scale(
    "fill", "palette_town",
    palette_gen(palette, direction),
    ...
  )
}


scale_colour_palette_town <- function(palette = "Types", randomize = "YES", direction = 1, ...) {

  if(randomize == "YES"){
    palette_gen <- function(palette = "Types", direction = 1) {

      function(n) {

        if (n > length(palette_town_palette(palette)))
          warning("This palette does not include enough colours!")

        else {

          all_colors <- palette_town_palette(palette)

          all_colors <- unname(unlist(all_colors))

          all_colors <- if (direction >= 0) all_colors else rev(all_colors)

          color_list <- sample(all_colors, n)

        }
      }
    }

    if(randomize == "NO"){
      palette_gen <- function(palette = "Types", randomize = "YES",direction = 1) {

        function(n) {

          if (n > length(palette_town_palette(palette)))
            warning("This palette does not include enough colours!")

          else {

            all_colors <- palette_town_palette(palette)

          }
        }
      }


    }
  }

  ggplot2::discrete_scale(
    "colour", "palette_town",
    palette_gen(palette, direction),
    ...
  )
}

scale_color_palette_town <- function(palette = "Types", randomize = "YES", direction = 1, ...) {

  if(randomize == "YES"){
    palette_gen <- function(palette = "Types", direction = 1) {

      function(n) {

        if (n > length(palette_town_palette(palette)))
          warning("This palette does not include enough colours!")

        else {

          all_colors <- palette_town_palette(palette)

          all_colors <- unname(unlist(all_colors))

          all_colors <- if (direction >= 0) all_colors else rev(all_colors)

          color_list <- sample(all_colors, n)

        }
      }
    }

    if(randomize == "NO"){
      palette_gen <- function(palette = "Types", direction = 1) {

        function(n) {

          if (n > length(palette_town_palette(palette)))
            warning("This palette does not include enough colours!")

          else {

            all_colors <- palette_town_palette(palette)

          }
        }
      }


    }
  }

  ggplot2::discrete_scale(
    "color", "palette_town",
    palette_gen(palette, direction),
    ...
  )
}
