#' A list of color palettes inspired by Islamic art
#'
#' This is a named list of character vectors with hex colors hand picked from
#' photos Islamic art to give some feel of the original art. Most of them are
#' from architecture. Art from the following cities were selected here:
#' Abu Dhabi, Alhambra, Cordoba, Damascus, Fes, Istanbul, Jerusalem, Konya,
#' Samarqand, and Shiraz. There is also a palette for an Ottoman tile color
#' scheme
#'
#' Efforts were made to avoid overly similar colors in the same palettes as well
#' as colors that are too light. Some cities were not included not because they
#' are not awesome, but because it's difficult to make a good palette from
#' landmarks of those cities.
#'
#' These are the names of palettes available and where they come fome:
#'
#' \describe{
#' \item{shiraz}{Nasir al-Mulk Mosque, Shiraz, Iran}
#' \item{shiraz2}{The Jerrāḥ Pasha Quran Quran, Shiraz}
#' \item{samarqand}{Samarqand Shah-i-Zinda Necropolis}
#' \item{samarqand2}{Samarqand Bibi-Khanym Mosque tile}
#' \item{abu_dhabi}{Abu Dhabi Sheikh Zayed Grand Mosque}
#' \item{istanbul}{Istanbul Sultan Ahmed Mosque (Blue Mosque) exterior}
#' \item{istanbul2}{Blue Mosque interior}
#' \item{istanbul3}{Hagia Sophia interior}
#' \item{konya}{Konya Mevlana Museum}
#' \item{jerusalem}{Dome of the Rock}
#' \item{fes}{Panorama of Fes, Morocco}
#' \item{fes2}{Qarawiyyin University, Fes}
#' \item{alhambra}{Geometric tile of al-Andalus style}
#' \item{cordoba}{Great Mosque of Cordoba}
#' \item{damascus}{Umayyad Mosque, Damascus, Syria}
#' \item{ottoman}{Ottoman tile}
#' }
#'
#' @export

islamic_palettes <- list(
  # Nasir al-Mulk Mosque, Shiraz
  # https://www.atlasobscura.com/places/nasir-al-mulk-mosque
  shiraz = c("#402733", "#8F6052", "#2F6349", "#AE2B47", "#7BC17D", "#68D8F2",
             "#7982F7", "#E03E4A", "#FFF759", "#ECA987", "#705549", "#9F4739"),

  # Samarqand Shah-i-Zinda necropole
  # https://www.flickr.com/photos/danielzolli/1443764917
  samarqand = c("#DFD5CA", "#907A58", "#A59DA2", "#406975", "#A2D2D4", "#475286",
                "#738492", "#D1BFA2", "#AB8A5A", "#4C9AC4", "#8EC6E9", "#B7DAEC"),

  # Samarqand Bibi-Khanym Mosque tile
  # https://www.flickr.com/photos/mayhlen/6411406569
  samarqand2 = c(
    "#002594",
    "#E0B2CD",
    "#54C4E3",
    "#F3AA4F"
  ),

  # The Jerrāḥ Pasha Quran Quran, Shiraz
  # http://islamic-arts.org/2012/the-morgan-treasures-of-islamic-manuscripts/
  shiraz2 = c("#8B633D", "#8A999D", "#C4B57C", "#CB4E33", "#F0D1A9", "#1B3F8A",
              "#68A1D3", "#AECCDF", "#D18860", "#30588B", "#C2944F", "#F9D073"),

  # Abu Dhabi Sheikh Zayed Grand Mosque
  # https://blog.headout.com/sheikh-zayed-grand-mosque-abu-dhabi-tours/
  abu_dhabi = c("#715843", "#4C525E", "#80848E", "#BFC8D3", "#A26B3A", "#E9B972",
                "#856B59", "#AFA099", "#D8C0B6", "#DAD9DC", "#D5CFCA", "#A3A4AF",
                "#D2AB6C"),

  # Istanbul Sultan Ahmed Mosque (Blue Mosque) exterior
  # https://istanbultourstudio.com/things-to-do/blue-mosque
  istanbul = c("#888485", "#BF8967", "#A4ADBA", "#D1CDCD", "#A7ABB0", "#BAB5B5",
               "#4E6279", "#B1AFA4"),

  # Blue Mosque interior
  # https://minoritynomad.com/istanbuls-the-blue-mosque-interior-prayer/
  istanbul2 = c("#083ED0", "#AE904E", "#503329", "#C18155", "#9E3E1C", "#DB7C3C",
                "#EACB85", "#9CA897", "#BDA173", "#63BDD3", "#9399A5"),

  # Hagia Sophia interior
  # https://www.travelandleisure.com/attractions/museums-galleries/hagia-sophia-unique-facts-history
  istanbul3 = c("#896C51", "#D9682B", "#BF964A", "#7D8795", "#F7C145", "#B56F2B",
                "#6A5557", "#D88D36"),

  # Konya Mevlana Museum
  # https://sufism.org/threshold
  konya = c("#94856E", "#E2BE8A", "#BFBDBA", "#2A696E", "#69C1C5", "#8BDFE5",
            "#CEC4A8", "#848A8A"),

  # Dome of the Rock, Jerusalem
  # http://www.flickriver.com/photos/mikeghouse/4045803559/
  jerusalem = c("#CBC5B8", "#4F779F", "#729E93", "#99985D", "#699CB6", "#485178",
                "#A47443", "#FAE3A0", "#CEAE88"),

  # Fes, Morocco
  # https://www.dreamstime.com/panoramic-view-medina-old-town-fes-morocco-image108882071
  fes = c("#C8876E", "#5A4532", "#2F533C", "#63764E", "#A87735", "#F3C571",
          "#EEB043", "#E0D2B5"),

  # Qarawiyyin University, Fes, Morocco
  # https://camel76.wordpress.com/2013/05/26/fez-the-holy-city-of-green-domes/al-qarawiyyin-2/
  fes2 = c("#4E4B4D", "#AE9366", "#7F7657", "#A6A48D", "#7F6960", "#C9CBC8",
           "#95949B", "#507A69", "#344A47"),

  # Tiles of al-Andalus (here Alhambra)
  # https://www.pinterest.com/pin/566609196846357568/
  alhambra = c(
    "#DBC197",
    "#372D2F",
    "#5B7CA7",
    "#DB9942",
    "#8DAE87",
    "#985A71"
  ),

  # Mosque of Cordoba
  # https://www.ruralidays.co.uk/blog/mosque-of-cordoba-spain-facts/
  cordoba = c("#594B3F", "#525A5E", "#886A50", "#E9AA52",
              "#F7D380", "#CA6C3D", "#D6B478", "#B6966C"),

  # Damascus Umayyad mosque
  # https://depositphotos.com/216371518/stock-photo-umayyad-mosque-damascus-syria.html
  damascus = c("#BF816B", "#653F2C", "#BABAAF", "#959BA1", "#937D61", "#C29961",
               "#9AA490", "#415555", "#E3CA97"),

  # Ottoman tile
  # https://www.etsy.com/listing/554967554/turkish-ceramic-tile-motif-vector
  ottoman = c(
    "#05215D",
    "#BFC8D3",
    "#E63833",
    "#5E9546",
    "#3381A8"
  )
)
