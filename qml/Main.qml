import Felgo 3.0
import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtMultimedia 5.9

GameWindow {
    property int score: 0
    property int scorertb: 0
    id: gameWindow
    activeScene: scene
    screenWidth: 1060
    screenHeight: 840

    Scene {
        id: scene
        width: gameWindow.screenWidth
        height: gameWindow.screenHeight

           // main page
           NavigationStack {
               Page {
                   id: home
                   title:" Learn Arabic - تعلَّم اللغة العربية"
                   Image {
                       id:backgrond
                       anchors.fill: parent
                       source: "../Images/3.jpg"
                   }

          Column{

                    anchors.centerIn: parent

                   AppButton{
                       backgroundColor: "indianred"
                       radius: {50;30;50;30}
                       x: -8
                       text:"Letters - الحروف"
                       fontBold: true
                       fontFamily: "times"
                       onClicked: home.navigationStack.push(letters)
                   }
                   AppButton{
                       backgroundColor: "indianred"
                       radius: {50;30;50;30}
                       x:-30
                       text: "Vowelization - التَشْكِيلُ"
                       fontBold: true
                       fontFamily: "times"
                       onClicked: home.navigationStack.push(vowel1)
                   }
                   AppButton{
                       backgroundColor: "indianred"
                       radius: {50;30;50;30}
                       text: "Words - الكلمات"
                       fontBold: true
                       fontFamily: "times"
                       onClicked: home.navigationStack.push(letterA)
                   }
                   AppButton{
                       backgroundColor: "indianred"
                       radius: {50;30;50;30}
                       x:10
                       text: "Choose - اختر"
                       fontBold: true
                       fontFamily: "times"
                       onClicked: home.navigationStack.push(level3)
                   }
                   AppButton{
                       backgroundColor: "indianred"
                       radius: {50;30;50;30}
                       x:14
                       text: "Sort - رتّب"
                       fontBold: true
                       fontFamily: "times"
                       onClicked: home.navigationStack.push(t2)
                   }

                 }

                    BackgroundMusic{
                        id:music
                        source:"../audios/music.mp3"
                    }
              AppButton {
                    backgroundColor: "transparent"
                    radius: {50;30;50;30}
                    width:100
                    height:100
                    x: 950
                    y:650
                    icon: IconType.volumeup
                    textColor: "black"
                    iconSize: 65
                    onClicked: {
                        settings.musicEnabled = !settings.musicEnabled
                        source: settings.musicEnabled ? icon = IconType.volumeup : icon = IconType.volumeoff
                    }
                 }
                AppButton {
                    backgroundColor: "transparent"
                    radius: {80;30;80;30}
                    x: 20
                    y:650
                    width:100
                    height:100
                    icon: IconType.arrowcircleoleft
                    textColor: "dark red"
                    iconSize: 65
                    onClicked: {
                        Qt.quit()
                    }
                  }
        }

           Component{
            id: letters
               Page {
               title: "Letters - الحروف"

               Image {
                   id:back
                   anchors.fill: parent
                   source: "../Images/background2.jpg"
               }

                 GridLayout {
                    id: grid
                    columns: 4
                    anchors.centerIn: parent

                 AppButton {
                   text: "ث"
                   radius: {25;25;25;25}
                   backgroundColor: "darkcyan"
                   opacity: .75
                   fontFamily: "arial"
                   textSize: 35
                   borderWidth: 3
                   fontBold: true
                   textColor: "yellow"
                   onClicked:{
                       audio4.play()
                 }
                   Audio{
                       id:audio4
                       source: "../audios/Letters/ثاء.mp3"
                   }
        }
                 AppButton {
                     text: "ت"
                     radius: {25;25;25;25}
                     fontFamily: "arial"
                     textSize: 35
                     backgroundColor: "darkcyan"
                     textColor: "yellow"
                     fontBold: true
                     opacity: .75
                     borderWidth: 3
                     onClicked:{
                         audio3.play()
                   }
                     Audio{
                         id:audio3
                         source: "../audios/Letters/تاء.mp3"
                     }
                 }

                 AppButton {
                     text: "ب"
                     radius: {25;25;25;25}
                     fontFamily: "arial"
                     textSize: 35
                     backgroundColor: "darkcyan"
                     textColor: "yellow"
                     opacity: .75
                     borderWidth: 3
                     fontBold: true
                     onClicked:{
                         audio2.play()
                   }
                     Audio{
                         id:audio2
                         source: "../audios/Letters/باء.mp3"
                     }
                 }
                 AppButton {
                     text: "أ"
                     radius: {25;25;25;25}
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 35
                     backgroundColor: "darkcyan"
                     textColor: "yellow"
                     fontBold: true
                     borderWidth: 3
                     onClicked:{
                         audio1.play()
                   }
                     Audio{
                         id:audio1
                         source: "../audios/Letters/الف.mp3"
                     }
                 }
                 AppButton {
                     text: "د"
                     radius: {25;25;25;25}
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 35
                     backgroundColor: "darkcyan"
                     textColor: "yellow"
                     fontBold: true
                     borderWidth: 3
                     onClicked:{
                         audio8.play()
                   }
                     Audio{
                         id:audio8
                         source: "../audios/Letters/دال.mp3"
                     }
                 }

                AppButton {
                     text: "خ"
                     radius: {25;25;25;25}
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 35
                     backgroundColor: "darkcyan"
                     textColor: "yellow"
                     fontBold: true
                     borderWidth: 3
                     onClicked:{
                         audio7.play()
                   }
                     Audio{
                         id:audio7
                         source: "../audios/Letters/خاء.mp3"
                     }
                 }
                AppButton {
                     text: "ح"
                     radius: {25;25;25;25}
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 35
                     backgroundColor: "darkcyan"
                     textColor: "yellow"
                     fontBold: true
                     borderWidth: 3
                     onClicked:{
                         audio6.play()
                   }
                     Audio{
                         id:audio6
                         source: "../audios/Letters/حاء.mp3"
                     }
                 }
                 AppButton {
                     text: "ج"
                     radius: {25;25;25;25}
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 35
                     backgroundColor: "darkcyan"
                     textColor: "yellow"
                     borderWidth: 3
                     fontBold: true
                     onClicked:{
                         audio5.play()
                   }
                     Audio{
                         id:audio5
                         source: "../audios/Letters/جيم.mp3"
                     }
                 }
                AppButton {
                     text: "س"
                     radius: {25;25;25;25}
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 35
                     backgroundColor: "darkcyan"
                     textColor: "yellow"
                     fontBold: true
                     borderWidth: 3
                     onClicked:{
                         audio12.play()
                   }
                     Audio{
                         id:audio12
                         source: "../audios/Letters/سين.mp3"
                     }
                 }
                 AppButton {
                     text: "ز"
                     radius: {25;25;25;25}
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 35
                     backgroundColor: "darkcyan"
                     textColor: "yellow"
                     borderWidth: 3
                     fontBold: true
                     onClicked:{
                         audio11.play()
                   }
                     Audio{
                         id:audio11
                         source: "../audios/Letters/زين.mp3"
                     }
                 }
                 AppButton {
                     text: "ر"
                     radius: {25;25;25;25}
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 35
                     backgroundColor: "darkcyan"
                     textColor: "yellow"
                     borderWidth: 3
                     fontBold: true
                     onClicked:{
                         audio10.play()
                   }
                     Audio{
                         id:audio10
                         source: "../audios/Letters/راء.mp3"
                     }
                 }
                 AppButton {
                     text: "ذ"
                     radius: {25;25;25;25}
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 35
                     backgroundColor: "darkcyan"
                     textColor: "yellow"
                     borderWidth: 3
                     fontBold: true
                     onClicked:{
                         audio9.play()
                   }
                     Audio{
                         id:audio9
                         source: "../audios/Letters/ذال.mp3"
                     }
                 }
                 AppButton {
                     text: "ط"
                     radius: {25;25;25;25}
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 35
                     backgroundColor: "darkcyan"
                     textColor: "yellow"
                     borderWidth: 3
                     fontBold: true
                     onClicked:{
                         audio16.play()
                   }
                     Audio{
                         id:audio16
                         source: "../audios/Letters/طاء.mp3"
                     }
                 }
                 AppButton {
                     text: "ض"
                     radius: {25;25;25;25}
                     fontFamily: "arial"
                     textSize: 35
                     backgroundColor: "darkcyan"
                     textColor: "yellow"
                     opacity: .75
                     borderWidth: 3
                     fontBold: true
                     onClicked:{
                         audio15.play()
                   }
                     Audio{
                         id:audio15
                         source: "../audios/Letters/ضاد.mp3"
                     }
                 }
                 AppButton {
                     text: "ص"
                     radius: {25;25;25;25}
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 35
                     backgroundColor: "darkcyan"
                     textColor: "yellow"
                     borderWidth: 3
                     fontBold: true
                     onClicked:{
                         audio14.play()
                   }
                     Audio{
                         id:audio14
                         source: "../audios/Letters/صاد.mp3"
                     }
                 }
                 AppButton {
                     text: "ش"
                     radius: {25;25;25;25}
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 35
                     backgroundColor: "darkcyan"
                     textColor: "yellow"
                     borderWidth: 3
                     fontBold: true
                     onClicked:{
                         audio13.play()
                   }
                     Audio{
                         id:audio13
                         source: "../audios/Letters/شين.mp3"
                     }
                 }
                 AppButton {
                     text: "ف"
                     radius: {25;25;25;25}
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 35
                     backgroundColor: "darkcyan"
                     textColor: "yellow"
                     borderWidth: 3
                     fontBold: true
                     onClicked:{
                         audio20.play()
                   }
                     Audio{
                         id:audio20
                         source: "../audios/Letters/فاء.mp3"
                     }
                 }
                 AppButton {
                     text: "غ"
                     radius: {25;25;25;25}
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 35
                     backgroundColor: "darkcyan"
                     textColor: "yellow"
                     borderWidth: 3
                     fontBold: true
                     onClicked:{
                         audio19.play()
                   }
                     Audio{
                         id:audio19
                         source: "../audios/Letters/غين.mp3"
                     }
                 }
                 AppButton {
                     text: "ع"
                     radius: {25;25;25;25}
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 35
                     backgroundColor: "darkcyan"
                     textColor: "yellow"
                     borderWidth: 3
                     fontBold: true
                     onClicked:{
                         audio18.play()
                   }
                     Audio{
                         id:audio18
                         source: "../audios/Letters/عين.mp3"
                     }
                 }
                 AppButton {
                     text: "ظ"
                     radius: {25;25;25;25}
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 35
                     backgroundColor: "darkcyan"
                     textColor: "yellow"
                     borderWidth: 3
                     fontBold: true
                     onClicked:{
                         audio17.play()
                   }
                     Audio{
                         id:audio17
                         source: "../audios/Letters/ظاء.mp3"
                     }
                 }
                 AppButton {
                     text: "م"
                     radius: {25;25;25;25}
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 35
                     backgroundColor: "darkcyan"
                     textColor: "yellow"
                     fontBold: true
                     borderWidth: 3
                     onClicked:{
                         audio24.play()
                   }
                     Audio{
                         id:audio24
                         source: "../audios/Letters/ميم.mp3"
                     }
                 }
                 AppButton {
                     text: "ل"
                     radius: {25;25;25;25}
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 35
                     backgroundColor: "darkcyan"
                     textColor: "yellow"
                     borderWidth: 3
                     fontBold: true
                     onClicked:{
                         audio23.play()
                   }
                     Audio{
                         id:audio23
                         source: "../audios/Letters/لام.mp3"
                     }
                 }
                 AppButton {
                     text: "ك"
                     radius: {25;25;25;25}
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 35
                     backgroundColor: "darkcyan"
                     textColor: "yellow"
                     borderWidth: 3
                     fontBold: true
                     onClicked:{
                         audio22.play()
                   }
                     Audio{
                         id:audio22
                         source: "../audios/Letters/كاف.mp3"
                     }
                 }
                 AppButton {
                     text: "ق"
                     radius: {25;25;25;25}
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 35
                     backgroundColor: "darkcyan"
                     textColor: "yellow"
                     borderWidth: 3
                     fontBold: true
                     onClicked:{
                         audio21.play()
                   }
                     Audio{
                         id:audio21
                         source: "../audios/Letters/قاف.mp3"
                     }
                 }
                 AppButton {
                     text: "ي"
                     radius: {25;25;25;25}
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 35
                     backgroundColor: "darkcyan"
                     textColor: "yellow"
                     borderWidth: 3
                     fontBold: true
                     onClicked:{
                         audio28.play()
                   }
                     Audio{
                         id:audio28
                         source: "../audios/Letters/ياء.mp3"
                     }
                 }
                 AppButton {
                     text: "و"
                     radius: {25;25;25;25}
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 35
                     backgroundColor: "darkcyan"
                     textColor: "yellow"
                     borderWidth: 3
                     fontBold: true
                     onClicked:{
                         audio27.play()
                   }
                     Audio{
                         id:audio27
                         source: "../audios/Letters/واو.mp3"
                     }
                 }
                 AppButton {
                     text: "هـ"
                     radius: {25;25;25;25}
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 35
                     backgroundColor: "darkcyan"
                     textColor: "yellow"
                     borderWidth: 3
                     fontBold: true
                     onClicked:{
                         audio26.play()
                   }
                     Audio{
                         id:audio26
                         source: "../audios/Letters/هاء.mp3"
                     }
                 }
                 AppButton {
                     text: "ن"
                     radius: {25;25;25;25}
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 35
                     backgroundColor: "darkcyan"
                     textColor: "yellow"
                     borderWidth: 3
                     fontBold: true
                     onClicked:{
                         audio25.play()
                   }
                     Audio{
                         id:audio25
                         source: "../audios/Letters/نون.mp3"
                     }
                 }
               }
             }
           }
}
}
    Component{
            id:vowel1

            Page{
                title:" الفتحة"
                Image {
                    id:back
                    anchors.fill: parent
                    source: "../Images/5.jpg"
                }

                  GridLayout {
                     id: grid
                     columns: 3
                     anchors.centerIn: parent



                  AppButton {
                    text: "أَسَد"
                    radius: {25;25;25;25}
                    backgroundColor: "mediumorchid"
                    opacity: .75
                    fontFamily: "arial"
                    textSize: 50
                    borderWidth: 3
                    fontBold: true
                    textColor: "yellow"
                    onClicked:{
                        audio4.play()
                  }
                    Audio{
                        id:audio4
                        source: "../audios/Words/lion.mp3"
                    }

            }

                  AppButton {
                    text: "خَروف"
                    radius: {25;25;25;25}
                    backgroundColor: "mediumorchid"
                    opacity: .75
                    fontFamily: "arial"
                    textSize: 50
                    borderWidth: 3
                    fontBold: true
                    textColor: "yellow"
                    onClicked:{
                        audio6.play()
                  }
                    Audio{
                        id:audio6
                        source: "../audios/Words/sheep.mp3"
                    }

            }

                  AppButton {
                    text: "جَمَل"
                    radius: {25;25;25;25}
                    backgroundColor: "mediumorchid"
                    opacity: .75
                    fontFamily: "arial"
                    textSize: 50
                    borderWidth: 3
                    fontBold: true
                    textColor: "yellow"
                    onClicked:{
                        audio8.play()
                  }
                    Audio{
                        id:audio8
                        source: "../audios/Words/camel.mp3"
                    }

            }
                  AppButton {
                    text: "سَمَكَة"
                    radius: {25;25;25;25}
                    backgroundColor: "mediumorchid"
                    opacity: .75
                    fontFamily: "arial"
                    textSize: 50
                    borderWidth: 3
                    fontBold: true
                    textColor: "yellow"
                    onClicked:{
                        audio9.play()
                  }
                    Audio{
                        id:audio9
                        source: "../audios/Words/fish.mp3"
                    }

            }
                  AppButton {
                    text: "زَرَافَة"
                    radius: {25;25;25;25}
                    backgroundColor: "mediumorchid"
                    opacity: .75
                    fontFamily: "arial"
                    textSize: 50
                    borderWidth: 3
                    fontBold: true
                    textColor: "yellow"
                    onClicked:{
                        audio10.play()
                  }
                    Audio{
                        id:audio10
                        source: "../audios/Words/giraffe.mp3"
                    }

            }


             AppButton {
                      text: "صَحن"
                      radius: {25;25;25;25}
                      backgroundColor: "mediumorchid"
                      opacity: .75
                      fontFamily: "arial"
                      textSize: 50
                      borderWidth: 3
                      fontBold: true
                      textColor: "yellow"
                      onClicked:{
                          audio15.play()
                    }
                      Audio{
                          id:audio15
                          source: "../audios/Words/plate.mp3"
                      }

              } AppButton {
                      text: "شَجَرَة"
                      radius: {25;25;25;25}
                      backgroundColor: "mediumorchid"
                      opacity: .75
                      fontFamily: "arial"
                      textSize: 50
                      borderWidth: 3
                      fontBold: true
                      textColor: "yellow"
                      onClicked:{
                          audio16.play()
                    }
                      Audio{
                          id:audio16
                          source: "../audios/Words/tree.mp3"
                      }

              } AppButton {
                      text: "فَرَاولَة"
                      radius: {25;25;25;25}
                      backgroundColor: "mediumorchid"
                      opacity: .75
                      fontFamily: "arial"
                      textSize: 50
                      borderWidth: 3
                      fontBold: true
                      textColor: "yellow"
                      onClicked:{
                          audio17.play()
                    }
                      Audio{
                          id:audio17
                          source: "../audios/Words/strawberry.mp3"
                      }
            }
                AppButton {
                      text: "ظَرف"
                      radius: {25;25;25;25}
                      backgroundColor: "mediumorchid"
                      opacity: .75
                      fontFamily: "arial"
                      textSize: 50
                      borderWidth: 3
                      fontBold: true
                      textColor: "yellow"
                      onClicked:{
                          audio20.play()
                    }
                      Audio{
                          id:audio20
                          source: "../audios/Words/letter.mp3"
                      }

              } AppButton {
                      text: "مَوز"
                      radius: {25;25;25;25}
                      backgroundColor: "mediumorchid"
                      opacity: .75
                      fontFamily: "arial"
                      textSize: 50
                      borderWidth: 3
                      fontBold: true
                      textColor: "yellow"
                      onClicked:{
                          audio21.play()
                    }
                      Audio{
                          id:audio21
                          source: "../audios/Words/banana.mp3"
                      }

              } AppButton {
                      text: "لَيمون"
                      radius: {25;25;25;25}
                      backgroundColor: "mediumorchid"
                      opacity: .75
                      fontFamily: "arial"
                      textSize: 50
                      borderWidth: 3
                      fontBold: true
                      textColor: "yellow"
                      onClicked:{
                          audio22.play()
                    }
                      Audio{
                          id:audio22
                          source: "../audios/Words/lemon.mp3"
                      }

              }
                  AppButton {
                                   text: "كَلب"
                                   radius: {25;25;25;25}
                                   backgroundColor: "mediumorchid"
                                   opacity: .75
                                   fontFamily: "arial"
                                   textSize: 50
                                   borderWidth: 3
                                   fontBold: true
                                   textColor: "yellow"
                                   onClicked:{
                                       audio23.play()
                                 }
                                   Audio{
                                       id:audio23
                                       source: "../audios/Words/dog.mp3"
                                   }

                           }
                  AppButton {
                      text: "يَد"
                      radius: {25;25;25;25}
                      backgroundColor: "mediumorchid"
                      opacity: .75
                      fontFamily: "arial"
                      textSize: 50
                      borderWidth: 3
                      fontBold: true
                      textColor: "yellow"
                      onClicked:{
                          audio25.play()
                    }
                      Audio{
                          id:audio25
                          source: "../audios/Words/hand.mp3"
                      }

              } AppButton {
                      text: "وَردَة"
                      radius: {25;25;25;25}
                      backgroundColor: "mediumorchid"
                      opacity: .75
                      fontFamily: "arial"
                      textSize: 50
                      borderWidth: 3
                      fontBold: true
                      textColor: "yellow"
                      onClicked:{
                          audio26.play()
                    }
                      Audio{
                          id:audio26
                          source: "../audios/Words/flower.mp3"
                      }

              }
                  AppButton {
                      text: "نَمر"
                      radius: {25;25;25;25}
                      backgroundColor: "mediumorchid"
                      opacity: .75
                      fontFamily: "arial"
                      textSize: 50
                      borderWidth: 3
                      fontBold: true
                      textColor: "yellow"
                      onClicked:{
                          audio28.play()
                    }
                      Audio{
                          id:audio28
                          source: "../audios/Words/tiger.mp3"
                      }

              }
        }
                  AppButton{
                      radius: {50;30;50;30}
                      opacity: .75
                      backgroundColor: "transparent"
                      textColor: "black"
                      icon: IconType.arrowright
                      fontBold: true
                      x:880
                      y:300
                      onClicked: home.navigationStack.push(vowel2)
             }

                  AppButton{
                        radius: {50;30;50;30}
                        opacity: .75
                        backgroundColor: "transparent"
                        textColor: "brown"
                        icon: IconType.home
                        fontBold: true
                        x:-10
                        y:0
                        onClicked: home.navigationStack.push(home)
                    }

    }
    }

        Component{
            id:vowel2

            Page{
                title:"الكسرة"
                Image {
                    id:back
                    anchors.fill: parent
                    source: "../Images/5.jpg"
                }

                  GridLayout {
                     id: grid
                     columns: 2
                     anchors.centerIn: parent

                  AppButton {
                    text: "حِصان"
                    radius: {25;25;25;25}
                    backgroundColor: "mediumorchid"
                    opacity: .75
                    fontFamily: "arial"
                    textSize: 50
                    borderWidth: 3
                    fontBold: true
                    textColor: "yellow"
                    onClicked:{
                        audio7.play()
                  }
                    Audio{
                        id:audio7
                        source: "../audios/Words/horse.mp3"
                    }

            }

                  AppButton {
                    text: "طِفل"
                    radius: {25;25;25;25}
                    backgroundColor: "mediumorchid"
                    opacity: .75
                    fontFamily: "arial"
                    textSize: 50
                    borderWidth: 3
                    fontBold: true
                    textColor: "yellow"
                    onClicked:{
                        audio13.play()
                  }
                    Audio{
                        id:audio13
                        source: "../audios/Words/baby.mp3"
                    }

            }
                  AppButton {
                      text: "عِنب"
                      radius: {25;25;25;25}
                      backgroundColor: "mediumorchid"
                      opacity: .75
                      fontFamily: "arial"
                      textSize: 50
                      borderWidth: 3
                      fontBold: true
                      textColor: "yellow"
                      onClicked:{
                          audio19.play()
                    }
                      Audio{
                          id:audio19
                          source: "../audios/Words/grape.mp3"
                      }

              }
                 AppButton {
                      text: "قِطة"
                      radius: {25;25;25;25}
                      backgroundColor: "mediumorchid"
                      opacity: .75
                      fontFamily: "arial"
                      textSize: 50
                      borderWidth: 3
                      fontBold: true
                      textColor: "yellow"
                      onClicked:{
                          audio24.play()
                    }
                      Audio{
                          id:audio24
                          source: "../audios/Words/cat.mp3"
                      }

              }
        }
                  AppButton{
                      radius: {50;30;50;30}
                      opacity: .75
                      backgroundColor: "transparent"
                      textColor: "black"
                      icon: IconType.arrowright
                      fontBold: true
                      x:880
                      y:300
                      onClicked: home.navigationStack.push(vowel3)
             }

                  AppButton{
                       radius: {50;30;50;30}
                       opacity: .75
                       backgroundColor: "transparent"
                       textColor: "black"
                       icon: IconType.arrowleft
                       fontBold: true
                       x:15
                       y:300
                       onClicked: home.navigationStack.push(vowel1)
                  }

                  AppButton{
                        radius: {50;30;50;30}
                        opacity: .75
                        backgroundColor: "transparent"
                        textColor: "brown"
                        icon: IconType.home
                        fontBold: true
                        x:-10
                        y:0
                        onClicked: home.navigationStack.push(home)
                    }

    }
    }


        Component{
            id:vowel3

            Page{
                title:"الضمة"
                Image {
                    id:back
                    anchors.fill: parent
                    source: "../Images/5.jpg"
                }

                  GridLayout {
                     id: grid
                     columns: 3
                     anchors.centerIn: parent

                  AppButton {
                    text: "ثُعبان"
                    radius: {25;25;25;25}
                    backgroundColor: "mediumorchid"
                    opacity: .75
                    fontFamily: "arial"
                    textSize: 50
                    borderWidth: 3
                    fontBold: true
                    textColor: "yellow"
                    onClicked:{
                        audio1.play()
                  }
                    Audio{
                        id:audio1
                        source: "../audios/Words/snake.mp3"
                    }

            }

                  AppButton {
                    text: "تُفاح"
                    radius: {25;25;25;25}
                    backgroundColor: "mediumorchid"
                    opacity: .75
                    fontFamily: "arial"
                    textSize: 50
                    borderWidth: 3
                    fontBold: true
                    textColor: "yellow"
                    onClicked:{
                        audio2.play()
                  }
                    Audio{
                        id:audio2
                        source: "../audios/Words/apple.mp3"
                    }

            }
                  AppButton {
                    text: "دُودة"
                    radius: {25;25;25;25}
                    backgroundColor: "mediumorchid"
                    opacity: .75
                    fontFamily: "arial"
                    textSize: 50
                    borderWidth: 3
                    fontBold: true
                    textColor: "yellow"
                    onClicked:{
                        audio5.play()
                  }
                    Audio{
                        id:audio5
                        source: "../audios/Words/worm.mp3"
                    }

            }

                  AppButton {
                    text: "رُمان"
                    radius: {25;25;25;25}
                    backgroundColor: "mediumorchid"
                    opacity: .75
                    fontFamily: "arial"
                    textSize: 50
                    borderWidth: 3
                    fontBold: true
                    textColor: "yellow"
                    onClicked:{
                        audio11.play()
                  }
                    Audio{
                        id:audio11
                        source: "../audios/Words/pome.mp3"
                    }

            }
                  AppButton {
                    text: "ذُرة"
                    radius: {25;25;25;25}
                    backgroundColor: "mediumorchid"
                    opacity: .75
                    fontFamily: "arial"
                    textSize: 50
                    borderWidth: 3
                    fontBold: true
                    textColor: "yellow"
                    onClicked:{
                        audio12.play()
                  }
                    Audio{
                        id:audio12
                        source: "../audios/Words/corn.mp3"
                    }

            }

                  AppButton {
                      text: "هُدهُد"
                      radius: {25;25;25;25}
                      backgroundColor: "mediumorchid"
                      opacity: .75
                      fontFamily: "arial"
                      textSize: 50
                      borderWidth: 3
                      fontBold: true
                      textColor: "yellow"
                      onClicked:{
                          audio27.play()
                    }
                      Audio{
                          id:audio27
                          source: "../audios/Words/hoopoe.mp3"
                      }

              }
        }
                  AppButton{
                      radius: {50;30;50;30}
                      opacity: .75
                      backgroundColor: "transparent"
                      textColor: "black"
                      icon: IconType.arrowright
                      fontBold: true
                      x:900
                      y:300
                      onClicked: home.navigationStack.push(vowel4)
             }

                  AppButton{
                       radius: {50;30;50;30}
                       opacity: .75
                       backgroundColor: "transparent"
                       textColor: "black"
                       icon: IconType.arrowleft
                       fontBold: true
                       x:-5
                       y:300
                       onClicked: home.navigationStack.push(vowel2)
                  }

                  AppButton{
                        radius: {50;30;50;30}
                        opacity: .75
                        backgroundColor: "transparent"
                        textColor: "brown"
                        icon: IconType.home
                        fontBold: true
                        x:-10
                        y:0
                        onClicked: home.navigationStack.push(home)
                    }

    }
    }

        Component{
            id:vowel4

            Page{
                title:"السُكون"
                Image {
                    id:back
                    anchors.fill: parent
                    source: "../Images/5.jpg"
                }

                  GridLayout {
                     id: grid
                     columns: 3
                     anchors.centerIn: parent

                  AppButton {
                    text: "ليْمون"
                    radius: {25;25;25;25}
                    backgroundColor: "mediumorchid"
                    opacity: .75
                    fontFamily: "arial"
                    textSize: 50
                    borderWidth: 3
                    fontBold: true
                    textColor: "yellow"
                    onClicked:{
                        audio1.play()
                  }
                    Audio{
                        id:audio1
                        source: "../audios/Words/lemon.mp3"
                    }

            }

                  AppButton {
                    text: "هدْهد"
                    radius: {25;25;25;25}
                    backgroundColor: "mediumorchid"
                    opacity: .75
                    fontFamily: "arial"
                    textSize: 50
                    borderWidth: 3
                    fontBold: true
                    textColor: "yellow"
                    onClicked:{
                        audio2.play()
                  }
                    Audio{
                        id:audio2
                        source: "../audios/Words/hoopoe.mp3"
                    }

            }

                  AppButton {
                    text: "ثعْبان"
                    radius: {25;25;25;25}
                    backgroundColor: "mediumorchid"
                    opacity: .75
                    fontFamily: "arial"
                    textSize: 50
                    borderWidth: 3
                    fontBold: true
                    textColor: "yellow"
                    onClicked:{
                        audio3.play()
                  }
                    Audio{
                        id:audio3
                        source: "../audios/Words/snake.mp3"
                    }

            }
                  AppButton {
                    text: "موْز"
                    radius: {25;25;25;25}
                    backgroundColor: "mediumorchid"
                    opacity: .75
                    fontFamily: "arial"
                    textSize: 50
                    borderWidth: 3
                    fontBold: true
                    textColor: "yellow"
                    onClicked:{
                        audio4.play()
                  }
                    Audio{
                        id:audio4
                        source: "../audios/Words/banana.mp3"
                    }

            }
                  AppButton {
                    text: "طفْل"
                    radius: {25;25;25;25}
                    backgroundColor: "mediumorchid"
                    opacity: .75
                    fontFamily: "arial"
                    textSize: 50
                    borderWidth: 3
                    fontBold: true
                    textColor: "yellow"
                    onClicked:{
                        audio5.play()
                  }
                    Audio{
                        id:audio5
                        source: "../audios/Words/baby.mp3"
                    }

            }
                  AppButton {
                    text: "ظرْف"
                    radius: {25;25;25;25}
                    backgroundColor: "mediumorchid"
                    opacity: .75
                    fontFamily: "arial"
                    textSize: 50
                    borderWidth: 3
                    fontBold: true
                    textColor: "yellow"
                    onClicked:{
                        audio6.play()
                  }
                    Audio{
                        id:audio6
                        source: "../audios/Words/letter.mp3"
                    }

            }
                  AppButton {
                    text: "صحْن"
                    radius: {25;25;25;25}
                    backgroundColor: "mediumorchid"
                    opacity: .75
                    fontFamily: "arial"
                    textSize: 50
                    borderWidth: 3
                    fontBold: true
                    textColor: "yellow"
                    onClicked:{
                        audio7.play()
                  }
                    Audio{
                        id:audio7
                        source: "../audios/Words/plate.mp3"
                    }

            }
                  AppButton {
                    text: "ضفْدع"
                    radius: {25;25;25;25}
                    backgroundColor: "mediumorchid"
                    opacity: .75
                    fontFamily: "arial"
                    textSize: 50
                    borderWidth: 3
                    fontBold: true
                    textColor: "yellow"
                    onClicked:{
                        audio8.play()
                  }
                    Audio{
                        id:audio8
                        source: "../audios/Words/frog.mp3"
                    }

                 }
                  AppButton {
                    text: "كلْب"
                    radius: {25;25;25;25}
                    backgroundColor: "mediumorchid"
                    opacity: .75
                    fontFamily: "arial"
                    textSize: 50
                    borderWidth: 3
                    fontBold: true
                    textColor: "yellow"
                    onClicked:{
                        audio9.play()
                  }
                    Audio{
                        id:audio9
                        source: "../audios/Words/dog.mp3"
                    }

            }

                  }
                  AppButton{
                      radius: {50;30;50;30}
                      opacity: .75
                      backgroundColor: "transparent"
                      textColor: "black"
                      icon: IconType.arrowright
                      fontBold: true
                      x:850
                      y:300
                      onClicked: {home.navigationStack.push(vowel5)
                          audio10.play()

                      }
                          Audio {
                                  id: audio10
                                  source: "../audios/Children Yay!   Sound Effect.mp3"
                                }
             }

                  AppButton{
                       radius: {50;30;50;30}
                       opacity: .75
                       backgroundColor: "transparent"
                       textColor: "black"
                       icon: IconType.arrowleft
                       fontBold: true
                       x:40
                       y:300
                       onClicked: home.navigationStack.push(vowel3)
                  }

                  AppButton{
                        radius: {50;30;50;30}
                        opacity: .75
                        backgroundColor: "transparent"
                        textColor: "brown"
                        icon: IconType.home
                        fontBold: true
                        x:-5
                        y:0
                        onClicked: home.navigationStack.push(home)
                    }
            }
        }


        Component{
            id: vowel5

            Page{

                     Image {
                         id:backgrondw
                         anchors.fill: parent
                         source:"../Images/5.jpg"
                     }

                     NumberAnimation on y {
                             id: animation
                             target: tex
                             property: "rotation"
                             from: 0
                             to: 360
                             duration: 1000
                           }

                     AppText{
                         id: tex
                         text: "أحسنت..لقد انتهيت"
                         x:320
                         y:250
                         font.pixelSize: 40
                         font.bold: true
                         color: "red"
    }
                     NumberAnimation on y {
                             id: animation1
                             target: tex1
                             property: "rotation"
                             from: 0
                             to: 360
                             duration: 1000
                           }
                     AppText{
                         id: tex1
                         text: "Congratulations!..You did it."
                         x:280
                         y:350
                         font.pixelSize: 35
                         font.bold: true
                         color: "red"
    }

                     AppButton{
                           radius: {50;30;50;30}
                           opacity: .75
                           backgroundColor: "lavenderblush"
                           borderColor: "red"
                           textColor: "brown"
                           icon: IconType.home
                           borderWidth: 3
                           fontBold: true
                           x:-10
                           y:0
                           onClicked: home.navigationStack.push(home)
                       }
              }
       }

    Component{
        id: letterA

        Page {
           title:"حرف - أ"

            Image {
                id:backgrond
                anchors.fill: parent
                source: "../Images/background4.jpg"
            }

            Rectangle{
                width: 200
                height: 200
                x: 420
                y: 220
                color: "transparent"

            Image{
                id: lion
                anchors.fill: parent
                source: "../Images/Words/Lion.png"
            }

            Text{
                text: "أسد"
                x:50
                y:320
                font.pixelSize: 50
                font.bold: true
                color: "orange"

                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowright
                    borderWidth: 3
                    fontBold: true
                    x:250
                    y:-250
                    onClicked: home.navigationStack.push(letterB)
                }
                AppButton{
                    anchors.bottom: parent
                    x: 350
                    y:30
                    backgroundColor: "brown"
                    width:100
                    height:100
                    radius: {3;50;3;50}
                    icon:IconType.headphones
                    onClicked: {
                        audio.play()
                    }
                    Audio{
                        id:audio
                        source:"../audios/Words/lion.mp3"
                    }
                }
                AppButton{
                      radius: {50;30;50;30}
                      opacity: .75
                      backgroundColor: "lavenderblush"
                      borderColor: "red"
                      textColor: "brown"
                      icon: IconType.home
                      borderWidth: 3
                      fontBold: true
                      x:-480
                      y:-550
                      onClicked: home.navigationStack.push(home)
                  }
                }
            }
        }
    }

    Component{
        id: letterB

        Page {
            title:"حرف - ب"

            Image {
                id:backgrond
                anchors.fill: parent
                source: "../Images//background4.jpg"
            }

            Rectangle{
                width: 200
                height: 200
                x: 420
                y: 220
                color: "transparent"

            Image{
                id: watermelon
                anchors.fill: parent
                source: "../Images/Words/Watermelon.png"
            }

            Text{
                text: "بطيخ"
                x:50
                y:320
                font.pixelSize: 50
                font.bold: true
                color: "green"

                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowright
                    borderWidth: 3
                    fontBold: true
                    x:250
                    y:-250
                    onClicked: home.navigationStack.push(letterC)
                }
                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowleft
                    borderWidth: 3
                    fontBold: true
                    x:-380
                    y:-250
                    onClicked: home.navigationStack.push(letterA)
                }
                AppButton{
                    anchors.bottom: parent
                    x: 350
                    y:30
                    backgroundColor: "brown"
                    width:100
                    height:100
                    radius: {3;50;3;50}
                    icon:IconType.headphones
                    onClicked: {
                        audio.play()
                    }
                    Audio{
                        id:audio
                        source:"../audios/Words/watermelon.mp3"
                    }
                }
                AppButton{
                      radius: {50;30;50;30}
                      opacity: .75
                      backgroundColor: "lavenderblush"
                      borderColor: "red"
                      textColor: "brown"
                      icon: IconType.home
                      borderWidth: 3
                      fontBold: true
                      x:-480
                      y:-550
                      onClicked: home.navigationStack.push(home)
                  }
             }
          }
        }
    }

    Component{
            id: letterC

        Page{
            title: "حرف - ت"

            Image {
                id:backgrond
                anchors.fill: parent
                source: "../Images//background4.jpg"
            }

            Rectangle{
                width: 200
                height: 200
                x: 420
                y: 220
                color: "transparent"

            Image{
                id: apple
                anchors.fill: parent
                source: "../Images/Words/Apple.png"
            }

            Text{
                text: "تفاح"
                x:50
                y:320
                font.pixelSize: 50
                font.bold: true
                color: "Red"

                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowright
                    borderWidth: 3
                    fontBold: true
                    x:250
                    y:-250
                    onClicked: home.navigationStack.push(letterD)
                }
                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowleft
                    borderWidth: 3
                    fontBold: true
                    x:-380
                    y:-250
                    onClicked: home.navigationStack.push(letterB)
                }
                AppButton{
                    anchors.bottom: parent
                    x: 350
                    y:30
                    backgroundColor: "brown"
                    width:100
                    height:100
                    radius: {3;50;3;50}
                    icon:IconType.headphones
                    onClicked: {
                        audio.play()
                    }
                    Audio{
                        id:audio
                        source:"../audios/Words/apple.mp3"
                    }
                }
                AppButton{
                      radius: {50;30;50;30}
                      opacity: .75
                      backgroundColor: "lavenderblush"
                      borderColor: "red"
                      textColor: "brown"
                      icon: IconType.home
                      borderWidth: 3
                      fontBold: true
                      x:-480
                      y:-550
                      onClicked: home.navigationStack.push(home)
              }
            }
        }
    }
}

    Component{
            id: letterD

        Page{
            title: "حرف - ث"

            Image {
                id:backgrond
                anchors.fill: parent
                source: "../Images//background4.jpg"
            }

            Rectangle{
                width: 200
                height: 200
                x: 420
                y: 220
                color: "transparent"

            Image{
                id: snake
                anchors.fill: parent
                source: "../Images/Words/Snake.png"
            }

            Text{
                text: "ثعبان"
                x:50
                y:320
                font.pixelSize: 50
                font.bold: true
                color: "orange"

                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowright
                    borderWidth: 3
                    fontBold: true
                    x:250
                    y:-250
                    onClicked: home.navigationStack.push(letterE)
                }
                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowleft
                    borderWidth: 3
                    fontBold: true
                    x:-380
                    y:-250
                    onClicked: home.navigationStack.push(letterC)
                }
                AppButton{
                    anchors.bottom: parent
                    x: 350
                    y:30
                    backgroundColor: "brown"
                    width:100
                    height:100
                    radius: {3;50;3;50}
                    icon:IconType.headphones
                    onClicked: {
                        audio.play()
                    }
                    Audio{
                        id:audio
                        source:"../audios/Words/snake.mp3"
                    }
                }
                AppButton{
                      radius: {50;30;50;30}
                      opacity: .75
                      backgroundColor: "lavenderblush"
                      borderColor: "red"
                      textColor: "brown"
                      icon: IconType.home
                      borderWidth: 3
                      fontBold: true
                      x:-480
                      y:-550
                      onClicked: home.navigationStack.push(home)
                 }
               }
            }
        }
    }

    Component{
            id: letterE

        Page{
            title: "حرف - ج"

            Image {
                id:backgrond
                anchors.fill: parent
                source: "../Images//background4.jpg"
            }

            Rectangle{
                width: 200
                height: 200
                x: 420
                y: 220
                color: "transparent"

            Image{
                id: camel
                anchors.fill: parent
                source: "../Images/Words/camel.png"
            }

            Text{
                text: "جمل"
                x:50
                y:320
                font.pixelSize: 50
                font.bold: true
                color: "orange"

                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowright
                    borderWidth: 3
                    fontBold: true
                    x:250
                    y:-250
                    onClicked: home.navigationStack.push(letterF)
                }
                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowleft
                    borderWidth: 3
                    fontBold: true
                    x:-380
                    y:-250
                    onClicked: home.navigationStack.push(letterD)
                }
                AppButton{
                    anchors.bottom: parent
                    x: 350
                    y:30
                    backgroundColor: "brown"
                    width:100
                    height:100
                    radius: {3;50;3;50}
                    icon:IconType.headphones
                    onClicked: {
                        audio.play()
                    }
                    Audio{
                        id:audio
                        source:"../audios/Words/camel.mp3"
                    }
            }
                AppButton{
                   radius: {50;30;50;30}
                   opacity: .75
                   backgroundColor: "lavenderblush"
                   borderColor: "red"
                   textColor: "brown"
                   icon: IconType.home
                   borderWidth: 3
                   fontBold: true
                   x:-480
                   y:-550
                   onClicked: home.navigationStack.push(home)
                 }
              }
        }
    }
}

    Component{
            id: letterF

        Page{
            title: "حرف - ح"

            Image {
                id:backgrond
                anchors.fill: parent
                source: "../Images//background4.jpg"
            }

            Rectangle{
                width: 200
                height: 200
                x: 420
                y: 220
                color: "transparent"

            Image{
                id: horse
                anchors.fill: parent
                source: "../Images/Words/horse.png"
            }

            Text{
                text: "حصان"
                x:50
                y:320
                font.pixelSize: 50
                font.bold: true
                color: "brown"

                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowright
                    borderWidth: 3
                    fontBold: true
                    x:250
                    y:-250
                    onClicked: home.navigationStack.push(letterG)
                }

                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowleft
                    borderWidth: 3
                    fontBold: true
                    x:-380
                    y:-250
                    onClicked: home.navigationStack.push(letterE)
                }
                AppButton{
                    anchors.bottom: parent
                    x: 350
                    y:30
                    backgroundColor: "brown"
                    width:100
                    height:100
                    radius: {3;50;3;50}
                    icon:IconType.headphones
                    onClicked: {
                        audio.play()
                    }
                    Audio{
                        id:audio
                        source:"../audios/Words/horse.mp3"
                    }
            }
                AppButton{
                      radius: {50;30;50;30}
                      opacity: .75
                      backgroundColor: "lavenderblush"
                      borderColor: "red"
                      textColor: "brown"
                      icon: IconType.home
                      borderWidth: 3
                      fontBold: true
                      x:-480
                      y:-550
                      onClicked: home.navigationStack.push(home)
                }
            }
        }
    }
}

    Component{
            id: letterG

        Page{
            title: "حرف - خ"

            Image {
                id:backgrond
                anchors.fill: parent
                source: "../Images//background4.jpg"
            }

            Rectangle{
                width: 200
                height: 200
                x: 420
                y: 220
                color: "transparent"

            Image{
                id: sheep
                anchors.fill: parent
                source: "../Images/Words/sheep.png"
            }

            Text{
                text: "خروف"
                x:50
                y:320
                font.pixelSize: 50
                font.bold: true
                color: "dark gray"

                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowright
                    borderWidth: 3
                    fontBold: true
                    x:250
                    y:-250
                    onClicked: home.navigationStack.push(letterH)
                }
                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowleft
                    borderWidth: 3
                    fontBold: true
                    x:-380
                    y:-250
                    onClicked: home.navigationStack.push(letterF)
                }
                AppButton{
                    anchors.bottom: parent
                    x: 350
                    y:30
                    backgroundColor: "brown"
                    width:100
                    height:100
                    radius: {3;50;3;50}
                    icon:IconType.headphones
                    onClicked: {
                        audio.play()
                    }
                    Audio{
                        id:audio
                        source:"../audios/Words/sheep.mp3"
                    }
            }
                AppButton{
                      radius: {50;30;50;30}
                      opacity: .75
                      backgroundColor: "lavenderblush"
                      borderColor: "red"
                      textColor: "brown"
                      icon: IconType.home
                      borderWidth: 3
                      fontBold: true
                      x:-480
                      y:-550
                      onClicked: home.navigationStack.push(home)
                }
              }
            }
        }
}

    Component{
            id: letterH

        Page{
            title: "حرف - د"

            Image {
                id:backgrond
                anchors.fill: parent
                source: "../Images//background4.jpg"
            }

            Rectangle{
                width: 200
                height: 200
                x: 420
                y: 220
                color: "transparent"

            Image{
                id: worm
                anchors.fill: parent
                source: "../Images/Words/worm.png"
            }

            Text{
                text: "دودة"
                x:50
                y:320
                font.pixelSize: 50
                font.bold: true
                color: "light green"

                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowright
                    borderWidth: 3
                    fontBold: true
                    x:250
                    y:-250
                    onClicked: home.navigationStack.push(letterI)
                }
                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowleft
                    borderWidth: 3
                    fontBold: true
                    x:-380
                    y:-250
                    onClicked: home.navigationStack.push(letterG)
                }
                AppButton{
                    anchors.bottom: parent
                    x: 350
                    y:30
                    backgroundColor: "brown"
                    width:100
                    height:100
                    radius: {3;50;3;50}
                    icon:IconType.headphones
                    onClicked: {
                        audio.play()
                    }
                    Audio{
                        id:audio
                        source:"../audios/Words/worm.mp3"
                    }
            }
                AppButton{
                      radius: {50;30;50;30}
                      opacity: .75
                      backgroundColor: "lavenderblush"
                      borderColor: "red"
                      textColor: "brown"
                      icon: IconType.home
                      borderWidth: 3
                      fontBold: true
                      x:-480
                      y:-550
                      onClicked: home.navigationStack.push(home)
                  }
               }
            }
          }
    }

    Component{
            id: letterI

        Page{
            title: "حرف - ذ"

            Image {
                id:backgrond
                anchors.fill: parent
                source: "../Images//background4.jpg"
            }

            Rectangle{
                width: 200
                height: 200
                x: 420
                y: 220
                color: "transparent"

            Image{
                id: corn
                anchors.fill: parent
                source: "../Images/Words/corn.png"
            }

            Text{
                text: "ذرة"
                x:50
                y:320
                font.pixelSize: 50
                font.bold: true
                color: "yellow"

                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowright
                    borderWidth: 3
                    fontBold: true
                    x:250
                    y:-250
                    onClicked: home.navigationStack.push(letterJ)
                }

                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowleft
                    borderWidth: 3
                    fontBold: true
                    x:-380
                    y:-250
                    onClicked: home.navigationStack.push(letterH)
                }
                AppButton{
                    anchors.bottom: parent
                    x: 350
                    y:30
                    backgroundColor: "brown"
                    width:100
                    height:100
                    radius: {3;50;3;50}
                    icon:IconType.headphones
                    onClicked: {
                        audio.play()
                    }
                    Audio{
                        id:audio
                        source:"../audios/Words/corn.mp3"
                    }
                }
                AppButton{
                      radius: {50;30;50;30}
                      opacity: .75
                      backgroundColor: "lavenderblush"
                      borderColor: "red"
                      textColor: "brown"
                      icon: IconType.home
                      borderWidth: 3
                      fontBold: true
                      x:-480
                      y:-550
                      onClicked: home.navigationStack.push(home)
                }
            }
        }
    }
}

    Component{
            id: letterJ

        Page{
            title: "حرف - ر"

            Image {
                id:backgrond
                anchors.fill: parent
                source: "../Images//background4.jpg"
            }

            Rectangle{
                width: 200
                height: 200
                x: 420
                y: 220
                color: "transparent"

            Image{
                id: pome
                anchors.fill: parent
                source: "../Images/Words/pome.png"
            }

            Text{
                text: "رمان"
                x:50
                y:320
                font.pixelSize: 50
                font.bold: true
                color: "red"

                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowright
                    borderWidth: 3
                    fontBold: true
                    x:250
                    y:-250
                    onClicked: home.navigationStack.push(letterK)
                }
                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowleft
                    borderWidth: 3
                    fontBold: true
                    x:-380
                    y:-250
                    onClicked: home.navigationStack.push(letterI)
                }
                AppButton{
                    anchors.bottom: parent
                    x: 350
                    y:30
                    backgroundColor: "brown"
                    width:100
                    height:100
                    radius: {3;50;3;50}
                    icon:IconType.headphones
                    onClicked: {
                        audio.play()
                    }
                    Audio{
                        id:audio
                        source:"../audios/Words/pome.mp3"
                    }
            }
                AppButton{
                      radius: {50;30;50;30}
                      opacity: .75
                      backgroundColor: "lavenderblush"
                      borderColor: "red"
                      textColor: "brown"
                      icon: IconType.home
                      borderWidth: 3
                      fontBold: true
                      x:-480
                      y:-550
                      onClicked: home.navigationStack.push(home)
                }
            }
        }
    }
}

    Component{
            id: letterK

        Page{
            title: "حرف - ز"

            Image {
                id:backgrond
                anchors.fill: parent
                source: "../Images//background4.jpg"
            }

            Rectangle{
                width: 200
                height: 200
                x: 420
                y: 220
                color: "transparent"

            Image{
                id: giraffe
                anchors.fill: parent
                source: "../Images/Words/giraffe.png"
            }

            Text{
                text: "زرافة"
                x:50
                y:320
                font.pixelSize: 50
                font.bold: true
                color: "orange"

                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowright
                    borderWidth: 3
                    fontBold: true
                    x:250
                    y:-250
                    onClicked: home.navigationStack.push(letterL)
                }
                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowleft
                    borderWidth: 3
                    fontBold: true
                    x:-380
                    y:-250
                    onClicked: home.navigationStack.push(letterJ)
                }
                AppButton{
                    anchors.bottom: parent
                    x: 350
                    y:30
                    backgroundColor: "brown"
                    width:100
                    height:100
                    radius: {3;50;3;50}
                    icon:IconType.headphones
                    onClicked: {
                        audio.play()
                    }
                    Audio{
                        id:audio
                        source:"../audios/Words/giraffe.mp3"
                    }
                }
                AppButton{
                      radius: {50;30;50;30}
                      opacity: .75
                      backgroundColor: "lavenderblush"
                      borderColor: "red"
                      textColor: "brown"
                      icon: IconType.home
                      borderWidth: 3
                      fontBold: true
                      x:-480
                      y:-550
                      onClicked: home.navigationStack.push(home)
                }
              }
          }
        }
    }

    Component{
            id: letterL

        Page{
            title: "حرف - س"

            Image {
                id:backgrond
                anchors.fill: parent
                source: "../Images//background4.jpg"
            }

            Rectangle{
                width: 200
                height: 200
                x: 420
                y: 220
                color: "transparent"

            Image{
                id: fish
                anchors.fill: parent
                source: "../Images/Words/fish.png"
            }

            Text{
                text: "سمكة"
                x:50
                y:320
                font.pixelSize: 50
                font.bold: true
                color: "light blue"

                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowright
                    borderWidth: 3
                    fontBold: true
                    x:250
                    y:-250
                    onClicked: home.navigationStack.push(letterM)
                }
                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowleft
                    borderWidth: 3
                    fontBold: true
                    x:-380
                    y:-250
                    onClicked: home.navigationStack.push(letterK)
                }
                AppButton{
                    anchors.bottom: parent
                    x: 350
                    y:30
                    backgroundColor: "brown"
                    width:100
                    height:100
                    radius: {3;50;3;50}
                    icon:IconType.headphones
                    onClicked: {
                        audio.play()
                    }
                    Audio{
                        id:audio
                        source:"../audios/Words/fish.mp3"
                    }
            }
                AppButton{
                      radius: {50;30;50;30}
                      opacity: .75
                      backgroundColor: "lavenderblush"
                      borderColor: "red"
                      textColor: "brown"
                      icon: IconType.home
                      borderWidth: 3
                      fontBold: true
                      x:-480
                      y:-550
                      onClicked: home.navigationStack.push(home)
                    }
                }
            }
        }
    }

    Component{
            id: letterM

        Page{
            title: "حرف - ش"

            Image {
                id:backgrond
                anchors.fill: parent
                source: "../Images//background4.jpg"
            }

            Rectangle{
                width: 200
                height: 200
                x: 420
                y: 220
                color: "transparent"

                Image{
                    id: tree
                    anchors.fill: parent
                    source: "../Images/Words/tree.png"
                }

            Text{
                text: "شجرة"
                x:50
                y:320
                font.pixelSize: 50
                font.bold: true
                color: "dark green"

                AppButton{

                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowright
                    borderWidth: 3
                    fontBold: true
                    x:250
                    y:-250
                    onClicked: home.navigationStack.push(letterN)
                }
                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowleft
                    borderWidth: 3
                    fontBold: true
                    x:-380
                    y:-250
                    onClicked: home.navigationStack.push(letterL)
                }
                AppButton{
                    anchors.bottom: parent
                    x: 350
                    y:30
                    backgroundColor: "brown"
                    width:100
                    height:100
                    radius: {3;50;3;50}
                    icon:IconType.headphones
                    onClicked: {
                        audio.play()
                    }
                    Audio{
                        id:audio
                        source:"../audios/Words/tree.mp3"
                    }
                }
                AppButton{
                      radius: {50;30;50;30}
                      opacity: .75
                      backgroundColor: "lavenderblush"
                      borderColor: "red"
                      textColor: "brown"
                      icon: IconType.home
                      borderWidth: 3
                      fontBold: true
                      x:-480
                      y:-550
                      onClicked: home.navigationStack.push(home)
                 }
             }
         }
       }
    }

    Component{
            id: letterN

        Page{
            title: "حرف - ص"

            Image {
                id:backgrond
                anchors.fill: parent
                source: "../Images//background4.jpg"
            }

            Rectangle{
                width: 200
                height: 200
                x: 420
                y: 220
                color: "transparent"

            Image{
                id: plate
                anchors.fill: parent
                source: "../Images/Words/plate.png"
            }

            Text{
                text: "صحن"
                x:50
                y:320
                font.pixelSize: 50
                font.bold: true
                color: "dark blue"

                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowright
                    borderWidth: 3
                    fontBold: true
                    x:250
                    y:-250
                    onClicked: home.navigationStack.push(letterO)
                }
                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowleft
                    borderWidth: 3
                    fontBold: true
                    x:-380
                    y:-250
                    onClicked: home.navigationStack.push(letterM)
                }
                AppButton{
                    anchors.bottom: parent
                    x: 350
                    y:30
                    backgroundColor: "brown"
                    width:100
                    height:100
                    radius: {3;50;3;50}
                    icon:IconType.headphones
                    onClicked: {
                        audio.play()
                    }
                    Audio{
                        id:audio
                        source:"../audios/Words/plate.mp3"
                    }
                }
                AppButton{
                      radius: {50;30;50;30}
                      opacity: .75
                      backgroundColor: "lavenderblush"
                      borderColor: "red"
                      textColor: "brown"
                      icon: IconType.home
                      borderWidth: 3
                      fontBold: true
                      x:-480
                      y:-550
                      onClicked: home.navigationStack.push(home)
                  }
               }
             }
         }
    }

    Component{
            id: letterO

        Page{
            title: "حرف - ض"

            Image {
                id:backgrond
                anchors.fill: parent
                source: "../Images//background4.jpg"
            }

            Rectangle{
                width: 200
                height: 200
                x: 420
                y: 220
                color: "transparent"

            Image{
                id: frog
                anchors.fill: parent
                source: "../Images/Words/frog.png"
            }

            Text{
                text: "ضفدع"
                x:50
                y:320
                font.pixelSize: 50
                font.bold: true
                color: "dark green"

                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowright
                    borderWidth: 3
                    fontBold: true
                    x:250
                    y:-250
                    onClicked: home.navigationStack.push(letterP)
                }
                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowleft
                    borderWidth: 3
                    fontBold: true
                    x:-380
                    y:-250
                    onClicked: home.navigationStack.push(letterN)
                }
                AppButton{
                    anchors.bottom: parent
                    x: 350
                    y:30
                    backgroundColor: "brown"
                    width:100
                    height:100
                    radius: {3;50;3;50}
                    icon:IconType.headphones
                    onClicked: {
                        audio.play()
                    }
                    Audio{
                        id:audio
                        source:"../audios/Words/frog.mp3"
                    }
            }
                AppButton{
                      radius: {50;30;50;30}
                      opacity: .75
                      backgroundColor: "lavenderblush"
                      borderColor: "red"
                      textColor: "brown"
                      icon: IconType.home
                      borderWidth: 3
                      fontBold: true
                      x:-480
                      y:-550
                      onClicked: home.navigationStack.push(home)
                  }
             }
         }
      }
    }

    Component{
            id: letterP

        Page{
            title: "حرف - ط"

            Image {
                id:backgrond
                anchors.fill: parent
                source: "../Images//background4.jpg"
            }

            Rectangle{
                width: 200
                height: 200
                x: 420
                y: 220
                color: "transparent"

            Image{
                id: baby
                anchors.fill: parent
                source: "../Images/Words/baby.png"
            }

            Text{
                text: "طفل"
                x:50
                y:320
                font.pixelSize: 50
                font.bold: true
                color: "orange"

                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowright
                    borderWidth: 3
                    fontBold: true
                    x:250
                    y:-250
                    onClicked: home.navigationStack.push(letterQ)
                }
                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowleft
                    borderWidth: 3
                    fontBold: true
                    x:-380
                    y:-250
                    onClicked: home.navigationStack.push(letterO)
                }
                AppButton{
                    anchors.bottom: parent
                    x: 350
                    y:30
                    backgroundColor: "brown"
                    width:100
                    height:100
                    radius: {3;50;3;50}
                    icon:IconType.headphones
                    onClicked: {
                        audio.play()
                    }
                    Audio{
                        id:audio
                        source:"../audios/Words/baby.mp3"
                    }
                }
                AppButton{
                      radius: {50;30;50;30}
                      opacity: .75
                      backgroundColor: "lavenderblush"
                      borderColor: "red"
                      textColor: "brown"
                      icon: IconType.home
                      borderWidth: 3
                      fontBold: true
                      x:-480
                      y:-550
                      onClicked: home.navigationStack.push(home)
                 }
              }
           }
        }
    }

    Component{
            id: letterQ

        Page{
            title: "حرف - ظ"

            Image {
                id:backgrond
                anchors.fill: parent
                source: "../Images//background4.jpg"
            }

            Rectangle{
                width: 200
                height: 200
                x: 420
                y: 220
                color: "transparent"

            Image{
                id: letter
                anchors.fill: parent
                source: "../Images/Words/letter.png"
            }

            Text{
                text: "ظرف"
                x:50
                y:320
                font.pixelSize: 50
                font.bold: true
                color: "yellow"

                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowright
                    borderWidth: 3
                    fontBold: true
                    x:250
                    y:-250
                    onClicked: home.navigationStack.push(letterR)
                }
                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowleft
                    borderWidth: 3
                    fontBold: true
                    x:-380
                    y:-250
                    onClicked: home.navigationStack.push(letterP)
                }
                AppButton{
                    anchors.bottom: parent
                    x: 350
                    y:30
                    backgroundColor: "brown"
                    width:100
                    height:100
                    radius: {3;50;3;50}
                    icon:IconType.headphones
                    onClicked: {
                        audio.play()
                    }
                    Audio{
                        id:audio
                        source:"../audios/Words/letter.mp3"
                    }
                 }
                AppButton{
                      radius: {50;30;50;30}
                      opacity: .75
                      backgroundColor: "lavenderblush"
                      borderColor: "red"
                      textColor: "brown"
                      icon: IconType.home
                      borderWidth: 3
                      fontBold: true
                      x:-480
                      y:-550
                      onClicked: home.navigationStack.push(home)
                }
             }
         }
      }
    }

    Component{
            id: letterR

        Page{
            title: "حرف - ع"

            Image {
                id:backgrond
                anchors.fill: parent
                source: "../Images//background4.jpg"
            }

            Rectangle{
                width: 200
                height: 200
                x: 420
                y: 220
                color: "transparent"

            Image{
                id: grape
                anchors.fill: parent
                source: "../Images/Words/grape.png"
            }

            Text{
                text: "عنب"
                x:50
                y:320
                font.pixelSize: 50
                font.bold: true
                color: "red"

                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowright
                    borderWidth: 3
                    fontBold: true
                    x:250
                    y:-250
                    onClicked: home.navigationStack.push(letterT)
                }
                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowleft
                    borderWidth: 3
                    fontBold: true
                    x:-380
                    y:-250
                    onClicked: home.navigationStack.push(letterQ)
                }
                AppButton{
                    anchors.bottom: parent
                    x: 350
                    y:30
                    backgroundColor: "brown"
                    width:100
                    height:100
                    radius: {3;50;3;50}
                    icon:IconType.headphones
                    onClicked: {
                        audio.play()
                    }
                    Audio{
                        id:audio
                        source:"../audios/Words/grape.mp3"
                    }
                }
                AppButton{
                      radius: {50;30;50;30}
                      opacity: .75
                      backgroundColor: "lavenderblush"
                      borderColor: "red"
                      textColor: "brown"
                      icon: IconType.home
                      borderWidth: 3
                      fontBold: true
                      x:-480
                      y:-550
                      onClicked: home.navigationStack.push(home)
              }
            }
        }
    }
}

    Component{
            id: letterT

        Page{
            title: "حرف - غ"

            Image {
                id:backgrond
                anchors.fill: parent
                source: "../Images//background4.jpg"
            }

            Rectangle{
                width: 200
                height: 200
                x: 420
                y: 220
                color: "transparent"

            Image{
                id: crow
                anchors.fill: parent
                source: "../Images/Words/crow.png"
            }

            Text{
                text: "غراب"
                x:50
                y:320
                font.pixelSize: 50
                font.bold: true
                color: "black"

                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowright
                    borderWidth: 3
                    fontBold: true
                    x:250
                    y:-250
                    onClicked: home.navigationStack.push(letterS)
                }
                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowleft
                    borderWidth: 3
                    fontBold: true
                    x:-380
                    y:-250
                    onClicked: home.navigationStack.push(letterR)
                }
                AppButton{
                    anchors.bottom: parent
                    x: 350
                    y:30
                    backgroundColor: "brown"
                    width:100
                    height:100
                    radius: {3;50;3;50}
                    icon:IconType.headphones
                    onClicked: {
                        audio.play()
                    }
                    Audio{
                        id:audio
                        source:"../audios/Words/crow.mp3"
                    }
                }
                AppButton{
                      radius: {50;30;50;30}
                      opacity: .75
                      backgroundColor: "lavenderblush"
                      borderColor: "red"
                      textColor: "brown"
                      icon: IconType.home
                      borderWidth: 3
                      fontBold: true
                      x:-480
                      y:-550
                      onClicked: home.navigationStack.push(home)
                  }
             }
         }
      }
    }

    Component{
            id: letterS

        Page{
            title: "حرف - ف"

            Image {
                id:backgrond
                anchors.fill: parent
                source: "../Images//background4.jpg"
            }

            Rectangle{
                width: 200
                height: 200
                x: 420
                y: 220
                color: "transparent"

            Image{
                id: strawberry
                anchors.fill: parent
                source: "../Images/Words/strawberry.png"
            }

            Text{
                text: "فراولة"
                x:50
                y:320
                font.pixelSize: 50
                font.bold: true
                color: "red"

                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowright
                    borderWidth: 3
                    fontBold: true
                    x:250
                    y:-250
                    onClicked: home.navigationStack.push(letterV)
                }
                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowleft
                    borderWidth: 3
                    fontBold: true
                    x:-380
                    y:-250
                    onClicked: home.navigationStack.push(letterT)
                }
                AppButton{
                    anchors.bottom: parent
                    x: 350
                    y:30
                    backgroundColor: "brown"
                    width:100
                    height:100
                    radius: {3;50;3;50}
                    icon:IconType.headphones
                    onClicked: {
                        audio.play()
                    }
                    Audio{
                        id:audio
                        source:"../audios/Words/strawberry.mp3"
                    }
                }
                AppButton{
                      radius: {50;30;50;30}
                      opacity: .75
                      backgroundColor: "lavenderblush"
                      borderColor: "red"
                      textColor: "brown"
                      icon: IconType.home
                      borderWidth: 3
                      fontBold: true
                      x:-480
                      y:-550
                      onClicked: home.navigationStack.push(home)
                  }
                }
          }
      }
    }

    Component{
            id: letterV
        Page{
            title: "حرف - ق"

            Image {
                id:backgrond
                anchors.fill: parent
                source: "../Images//background4.jpg"
            }

            Rectangle{
                width: 200
                height: 200
                x: 420
                y: 220
                color: "transparent"

            Image{
                id: cat
                anchors.fill: parent
                source: "../Images/Words/cat.png"
            }

            Text{
                text: "قطة"
                x:50
                y:320
                font.pixelSize: 50
                font.bold: true
                color: "brown"

                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowright
                    borderWidth: 3
                    fontBold: true
                    x:250
                    y:-250
                    onClicked: home.navigationStack.push(letterU)
                }
                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowleft
                    borderWidth: 3
                    fontBold: true
                    x:-380
                    y:-250
                    onClicked: home.navigationStack.push(letterS)
                }
                AppButton{
                    anchors.bottom: parent
                    x: 350
                    y:30
                    backgroundColor: "brown"
                    width:100
                    height:100
                    radius: {3;50;3;50}
                    icon:IconType.headphones
                    onClicked: {
                        audio.play()
                    }
                    Audio{
                        id:audio
                        source:"../audios/Words/cat.mp3"
                    }
                 }
                AppButton{
                      radius: {50;30;50;30}
                      opacity: .75
                      backgroundColor: "lavenderblush"
                      borderColor: "red"
                      textColor: "brown"
                      icon: IconType.home
                      borderWidth: 3
                      fontBold: true
                      x:-480
                      y:-550
                      onClicked: home.navigationStack.push(home)
                  }
             }
          }
        }
    }

    Component{
            id: letterU

        Page{
            title: "حرف - ك"

            Image {
                id:backgrond
                anchors.fill: parent
                source: "../Images//background4.jpg"
            }

            Rectangle{
                width: 200
                height: 200
                x: 420
                y: 220
                color: "transparent"

            Image{
                id: dog
                anchors.fill: parent
                source: "../Images/Words/dog.png"
            }

            Text{
                text: "كلب"
                x:50
                y:320
                font.pixelSize: 50
                font.bold: true
                color: "gold"

                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowright
                    borderWidth: 3
                    fontBold: true
                    x:250
                    y:-250
                    onClicked: home.navigationStack.push(letterW)
                }
                AppButton{

                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowleft
                    borderWidth: 3
                    fontBold: true
                    x:-380
                    y:-250
                    onClicked: home.navigationStack.push(letterV)
                }
                AppButton{
                    anchors.bottom: parent
                    x: 350
                    y:30
                    backgroundColor: "brown"
                    width:100
                    height:100
                    radius: {3;50;3;50}
                    icon:IconType.headphones
                    onClicked: {
                        audio.play()
                    }
                    Audio{
                        id:audio
                        source:"../audios/Words/dog.mp3"
                    }
                 }
                AppButton{
                      radius: {50;30;50;30}
                      opacity: .75
                      backgroundColor: "lavenderblush"
                      borderColor: "red"
                      textColor: "brown"
                      icon: IconType.home
                      borderWidth: 3
                      fontBold: true
                      x:-480
                      y:-550
                      onClicked: home.navigationStack.push(home)
                 }
             }
         }
       }
    }

    Component{
            id: letterW

        Page{
            title: "حرف - ل"

            Image {
                id:backgrond
                anchors.fill: parent
                source: "../Images//background4.jpg"
            }

            Rectangle{
                width: 200
                height: 200
                x: 420
                y: 220
                color: "transparent"

                Image{
                    id: lemon
                    anchors.fill: parent
                    source: "../Images/Words/lemon.png"
                }

            Text{
                text: "ليمون"
                x:50
                y:320
                font.pixelSize: 50
                font.bold: true
                color: "yellow"

                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowright
                    borderWidth: 3
                    fontBold: true
                    x:250
                    y:-250
                    onClicked: home.navigationStack.push(letterX)
                }
                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowleft
                    borderWidth: 3
                    fontBold: true
                    x:-380
                    y:-250
                    onClicked: home.navigationStack.push(letterU)
                }
                AppButton{
                    anchors.bottom: parent
                    x: 350
                    y:30
                    backgroundColor: "brown"
                    width:100
                    height:100
                    radius: {3;50;3;50}
                    icon:IconType.headphones
                    onClicked: {
                        audio.play()
                    }
                    Audio{
                        id:audio
                        source:"../audios/Words/lemon.mp3"
                    }
                 }
                AppButton{
                      radius: {50;30;50;30}
                      opacity: .75
                      backgroundColor: "lavenderblush"
                      borderColor: "red"
                      textColor: "brown"
                      icon: IconType.home
                      borderWidth: 3
                      fontBold: true
                      x:-480
                      y:-550
                      onClicked: home.navigationStack.push(home)
               }
            }
        }
    }
}

    Component{
            id: letterX

        Page{
            title: "حرف - م"

            Image {
                id:backgrond
                anchors.fill: parent
                source: "../Images//background4.jpg"
            }

            Rectangle{
                width: 200
                height: 200
                x: 420
                y: 220
                color: "transparent"

            Image{
                id: banana
                anchors.fill: parent
                source: "../Images/Words/banana.png"
            }

            Text{
                text: "موز"
                x:50
                y:320
                font.pixelSize: 50
                font.bold: true
                color: "yellow"

                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowright
                    borderWidth: 3
                    fontBold: true
                    x:250
                    y:-250
                    onClicked: home.navigationStack.push(letterY)
                }
                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowleft
                    borderWidth: 3
                    fontBold: true
                    x:-380
                    y:-250
                    onClicked: home.navigationStack.push(letterW)
                }
                AppButton{
                    anchors.bottom: parent
                    x: 350
                    y:30
                    backgroundColor: "brown"
                    width:100
                    height:100
                    radius: {3;50;3;50}
                    icon:IconType.headphones
                    onClicked: {
                        audio.play()
                    }
                    Audio{
                        id:audio
                        source:"../audios/Words/banana.mp3"
                    }
                 }
                AppButton{
                      radius: {50;30;50;30}
                      opacity: .75
                      backgroundColor: "lavenderblush"
                      borderColor: "red"
                      textColor: "brown"
                      icon: IconType.home
                      borderWidth: 3
                      fontBold: true
                      x:-480
                      y:-550
                      onClicked: home.navigationStack.push(home)
               }
            }
        }
    }
}

    Component{
            id: letterY

        Page{
            title: "حرف - ن"

            Image {
                id:backgrond
                anchors.fill: parent
                source: "../Images//background4.jpg"
            }

            Rectangle{
                width: 200
                height: 200
                x: 420
                y: 220
                color: "transparent"

            Image{
                id: tiger
                anchors.fill: parent
                source: "../Images/Words/tiger.png"
            }

            Text{
                text: "نمر"
                x:50
                y:320
                font.pixelSize: 50
                font.bold: true
                color: "orange"

                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowright
                    borderWidth: 3
                    fontBold: true
                    x:250
                    y:-250
                    onClicked: home.navigationStack.push(letterZ)
                }
                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowleft
                    borderWidth: 3
                    fontBold: true
                    x:-380
                    y:-250
                    onClicked: home.navigationStack.push(letterX)
                }
                AppButton{
                    anchors.bottom: parent
                    x: 350
                    y:30
                    backgroundColor: "brown"
                    width:100
                    height:100
                    radius: {3;50;3;50}
                    icon:IconType.headphones
                    onClicked: {
                        audio.play()
                    }
                    Audio{
                        id:audio
                        source:"../audios/Words/tiger.mp3"
                    }
                 }
                AppButton{
                      radius: {50;30;50;30}
                      opacity: .75
                      backgroundColor: "lavenderblush"
                      borderColor: "red"
                      textColor: "brown"
                      icon: IconType.home
                      borderWidth: 3
                      fontBold: true
                      x:-480
                      y:-550
                      onClicked: home.navigationStack.push(home)
                 }
            }
        }
    }
}

    Component{
            id: letterZ

        Page{
            title: "حرف - هـ"

            Image {
                id:backgrond
                anchors.fill: parent
                source: "../Images//background4.jpg"
            }

            Rectangle{
                width: 200
                height: 200
                x: 420
                y: 220
                color: "transparent"

            Image{
                id: hoopoe
                anchors.fill: parent
                source: "../Images/Words/hoopoe.png"
            }

            Text{
                text: "هدهد"
                x:50
                y:320
                font.pixelSize: 50
                font.bold: true
                color: "brown"

                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowright
                    borderWidth: 3
                    fontBold: true
                    x:250
                    y:-250
                    onClicked: home.navigationStack.push(letter27)
                }
                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowleft
                    borderWidth: 3
                    fontBold: true
                    x:-380
                    y:-250
                    onClicked: home.navigationStack.push(letterY)
                }
                AppButton{
                    anchors.bottom: parent
                    x: 350
                    y:30
                    backgroundColor: "brown"
                    width:100
                    height:100
                    radius: {3;50;3;50}
                    icon:IconType.headphones
                    onClicked: {
                        audio.play()
                    }
                    Audio{
                        id:audio
                        source:"../audios/Words/hoopoe.mp3"
                    }
                 }
                AppButton{
                      radius: {50;30;50;30}
                      opacity: .75
                      backgroundColor: "lavenderblush"
                      borderColor: "red"
                      textColor: "brown"
                      icon: IconType.home
                      borderWidth: 3
                      fontBold: true
                      x:-480
                      y:-550
                      onClicked: home.navigationStack.push(home)
                 }
             }
        }
    }
}

    Component{
            id: letter27

        Page{
            title: "حرف - و"

            Image {
                id:backgrond
                anchors.fill: parent
                source: "../Images//background4.jpg"
            }

            Rectangle{
                width: 200
                height: 200
                x: 420
                y: 220
                color: "transparent"

            Image{
                id: flower
                anchors.fill: parent
                source: "../Images/Words/flower.png"
            }

            Text{
                text: "وردة"
                x:50
                y:320
                font.pixelSize: 50
                font.bold: true
                color: "dark red"

                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowright
                    borderWidth: 3
                    fontBold: true
                    x:250
                    y:-250
                    onClicked: home.navigationStack.push(letter28)
                }
                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowleft
                    borderWidth: 3
                    fontBold: true
                    x:-380
                    y:-250
                    onClicked: home.navigationStack.push(letterZ)
                }
                AppButton{
                    anchors.bottom: parent
                    x: 350
                    y:30
                    backgroundColor: "brown"
                    width:100
                    height:100
                    radius: {3;50;3;50}
                    icon:IconType.headphones
                    onClicked: {
                        audio.play()
                    }
                    Audio{
                        id:audio
                        source:"../audios/Words/flower.mp3"
                    }
                 }
                AppButton{
                      radius: {50;30;50;30}
                      opacity: .75
                      backgroundColor: "lavenderblush"
                      borderColor: "red"
                      textColor: "brown"
                      icon: IconType.home
                      borderWidth: 3
                      fontBold: true
                      x:-480
                      y:-550
                      onClicked: home.navigationStack.push(home)
                 }
             }
         }
      }
    }

    Component{
            id: letter28

        Page{
            title: "حرف - ي"

            Image {
                id:backgrond
                anchors.fill: parent
                source: "../Images/background4.jpg"
            }

            Rectangle{
                width: 200
                height: 200
                x: 420
                y: 220
                color: "transparent"

            Image{
                id: hand
                anchors.fill: parent
                source: "../Images/Words/hand.png"
            }

            Text{
                text: "يد"
                x:50
                y:320
                font.pixelSize: 50
                font.bold: true
                color: "black"

                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowright
                    borderWidth: 3
                    fontBold: true
                    x:250
                    y:-250
                    onClicked: {
                        home.navigationStack.push(word)
                        audiof.play()
                    }
                    Audio {
                            id: audiof
                            source: "../audios/Children Yay!   Sound Effect.mp3"
                          }
                }
                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.arrowleft
                    borderWidth: 3
                    fontBold: true
                    x:-380
                    y:-250
                    onClicked: home.navigationStack.push(letter27)
                }
                AppButton{
                    anchors.bottom: parent
                    x: 350
                    y:30
                    backgroundColor: "brown"
                    width:100
                    height:100
                    radius: {3;50;3;50}
                    icon:IconType.headphones
                    onClicked: {
                        audio.play()
                    }
                    Audio{
                        id:audio
                        source:"../audios/Words/hand.mp3"
                    }
            }
                AppButton{
                      radius: {50;30;50;30}
                      opacity: .75
                      backgroundColor: "lavenderblush"
                      borderColor: "red"
                      textColor: "brown"
                      icon: IconType.home
                      borderWidth: 3
                      fontBold: true
                      x:-480
                      y:-550
                      onClicked: home.navigationStack.push(home)
                  }
               }
          }
      }
    }
    Component{
        id: word

        Page{

                 Image {
                     id:backgrondw
                     anchors.fill: parent
                     source:"../Images/background4.jpg"
                 }

                 NumberAnimation on y {
                         id: animation
                         target: tex
                         property: "rotation"
                         from: 0
                         to: 360
                         duration: 1000
                       }

                 AppText{
                     id: tex
                     text: "أحسنت"
                     x:450
                     y:250
                     font.pixelSize: 40
                     font.bold: true
                     color: "red"
}
                 NumberAnimation on y {
                         id: animation1
                         target: tex1
                         property: "rotation"
                         from: 0
                         to: 360
                         duration: 1000
                       }
                 AppText{
                     id: tex1
                     text: "Congratulations!"
                     x:400
                     y:350
                     font.pixelSize: 35
                     font.bold: true
                     color: "red"
}

                 AppButton{
                       radius: {50;30;50;30}
                       opacity: .75
                       backgroundColor: "lavenderblush"
                       borderColor: "red"
                       textColor: "brown"
                       icon: IconType.home
                       borderWidth: 3
                       fontBold: true
                       x:-10
                       y:0
                       onClicked: home.navigationStack.push(home)
                   }

          }
   }
    Component{
           id: level3

           Page{
               title:"Choose - اختر"

                    Image {
                        id:backgrond3
                        anchors.fill: parent
                        source:"../Images/Words/children.jpg"
                    }
                   Rectangle{
                        anchors.centerIn: parent
                        width: dp(200)
                        height: dp(200)
                        color: "transparent"

                      NumberAnimation on y{
                          id:anime
                          target: lion
                          property: "rotation"
                          from: 0
                          to: 360
                          duration: 1000
                      }
                       Image {
                         id: lion
                         anchors.fill:parent
                         source: "../Images/Words/Lion.png"
                       }
                    }

                   AppButton {
                       id:acd
                       backgroundColor: "indigo"
                          flat: false
                          text: "أسد"
                          x: 650
                          y: 600
                          onClicked:{
                              if(acd.x === 650 ){
                                  score = score + 1
                                  audio1.play()
                                  text = "الاجابة صحيحة"
                                  backgroundColor = "green"
                                  x = 651
                                  y = 601
                                  bta.x = 251
                                  bta.y = 601
                                  bta.backgroundColor = "red"
                              }
                            }
                          Audio {
                                  id: audio1
                                  source: "../audios/Clapping Sound Effects.mp3"
                                }

                    }

                    AppButton {
                          id:bta
                          backgroundColor: "indigo"
                          flat: false
                          text: "بطة"
                          x: 250
                          y: 600
                          onClicked: {
                              if(bta.x === 250 ){
                                  audio2.play()
                                  text = "الاجابة خاطئة"
                                  backgroundColor = "red"
                                  x = 251
                                  y = 601
                                  acd.x = 651
                                  acd.y = 601
                                  acd.backgroundColor = "green"
                            }
                          }
                          Audio {
                              id: audio2
                              source: "../audios/Wrong Buzzer - Sound Effect.mp3"
                                }
                        }
                    AppButton{
                        radius: {50;30;50;30}
                        opacity: .75
                        backgroundColor: "lavenderblush"
                        borderColor: "red"
                        textColor: "black"
                        icon: IconType.longarrowright
                        borderWidth: 3
                        fontBold: true
                        x:800
                        y:350
                        onClicked: {
                            home.navigationStack.push(level4)
                        }
        }

                     AppButton{
                         radius: {50;30;50;30}
                         opacity: .75
                         backgroundColor: "lavenderblush"
                         borderColor: "red"
                         textColor: "brown"
                         icon: IconType.home
                         borderWidth: 3
                         fontBold: true
                         x:-10
                         y:0
                         onClicked: {
                             score = 0
                             home.navigationStack.push(home)
                     }
                     }
                     Text {
                         id: scores
                         text: "Score: " + score
                         color: "black"
                         x: 900
                         y: 30
                         font.pixelSize: 25
                         font.bold: true
                     }
           }
       }

       Component{
           id: level4

           Page{
               title:"Choose - اختر"

                    Image {
                        id:backgrond4
                        anchors.fill: parent
                        source:"../Images/Words/children.jpg"
                    }
                   Rectangle{
                       anchors.centerIn: parent
                       width: dp(200)
                       height: dp(200)
                       color: "transparent"

                       NumberAnimation on y{
                           target: baby
                           property: "rotation"
                           from: x
                           to: 360
                           duration: 1000
                       }

                       Image {
                             id: baby
                             anchors.fill:parent
                             source: "../Images/Words/baby.png"
                           }
                   }

                   AppButton {
                       id:moza
                        backgroundColor: "indigo"
                        flat: false
                        text: "موزة"
                        x: 650
                        y: 600
                        onClicked:{
                            if(moza.x === 650 ){
                             audio2.play()
                             text = "الاجابة خاطئة"
                             backgroundColor = "red"
                             x = 651
                             y = 601
                             tfl.x = 251
                             tfl.y = 601
                             tfl.backgroundColor = "green"
                               }
                                                  }
                              Audio {
                               id: audio2
                                 source: "../audios/Wrong Buzzer - Sound Effect.mp3"
                                       }
                        }
                    AppButton {
                        id:tfl
                        backgroundColor: "indigo"
                         flat: false
                         text: "طفل"
                         x: 250
                         y: 600
                         onClicked: {
                             if(tfl.x === 250 ){
                              score = score + 1
                              audio1.play()
                              text = "الاجابة صحيحة"
                              backgroundColor = "green"
                              x = 251
                              y = 601
                              moza.x = 651
                              moza.y = 601
                               moza.backgroundColor = "red"
                                                        }
                                             }
                               Audio {
                                 id: audio1
                                 source: "../audios/Clapping Sound Effects.mp3"
                                         }
                        }

                    AppButton{
                        radius: {50;30;50;30}
                        opacity: .75
                        backgroundColor: "lavenderblush"
                        borderColor: "red"
                        textColor: "black"
                        icon: IconType.longarrowright
                        borderWidth: 3
                        fontBold: true
                        x:800
                        y:350
                        onClicked: {
                            home.navigationStack.push(level5)
                        }
                    }
                    AppButton{
                          radius: {50;30;50;30}
                          opacity: .75
                          backgroundColor: "lavenderblush"
                          borderColor: "red"
                          textColor: "brown"
                          icon: IconType.home
                          borderWidth: 3
                          fontBold: true
                          x:-10
                          y:0
                          onClicked:{
                              score = 0
                              home.navigationStack.push(home)
                     }
                    }
                    Text {
                        id: scores
                        text: "Score: " + score
                        color: "black"
                        x: 900
                        y: 30
                        font.pixelSize: 25
                        font.bold: true
                    }


           }
       }

       Component{
           id: level5

           Page{
               title:"Choose - اختر"

                    Image {
                        id:backgrond5
                        anchors.fill: parent
                        source:"../Images/Words/children.jpg"
                    }

                   Rectangle{
                       anchors.centerIn: parent
                       width: dp(200)
                       height: dp(200)
                       color: "transparent"

                   NumberAnimation on y {
                       target: camel
                       property: "rotation"
                       from: 0
                       to: 360
                       duration: 1000
                       }
                       Image {
                         id: camel
                         anchors.fill:parent
                         source: "../Images/Words/camel.png"
                        }
                    }
                   AppButton {
                       id:qrd
                       backgroundColor: "indigo"
                          flat: false
                          text: "قرد"
                          x: 650
                          y: 600
                          onClicked:{
                              if(qrd.x === 650 )
                              {
                                audio2.play()
                                text = "الاجابة خاطئة"
                                backgroundColor = "red"
                                x = 651
                                y = 601
                                gml.x = 251
                                gml.y = 601
                                gml.backgroundColor = "green"
                              }

                            }
                          Audio {
                              id: audio2
                              source: "../audios/Wrong Buzzer - Sound Effect.mp3"
                                }
                        }

                    AppButton {
                        id:gml
                         backgroundColor: "indigo"
                          flat: false
                          text: "جمل"
                          x: 250
                          y: 600
                          onClicked: {
                              if(gml.x === 250 )
                              {
                                 score = score + 1
                                 audio1.play()
                                 text = "الاجابة صحيحة"
                                 backgroundColor = "green"
                                 x = 251
                                 y = 601
                                 qrd.x = 651
                                 qrd.y = 601
                                 qrd.backgroundColor = "red"
                              }
                            }

                          Audio {
                              id: audio1
                              source: "../audios/Clapping Sound Effects.mp3"
                          }
                        }
                    AppButton{
                        radius: {50;30;50;30}
                        opacity: .75
                        backgroundColor: "lavenderblush"
                        borderColor: "red"
                        textColor: "black"
                        icon: IconType.longarrowright
                        borderWidth: 3
                        fontBold: true
                        x:800
                        y:350
                        onClicked: {
                            home.navigationStack.push(level6)
                        }
                    }

                    AppButton{
                      radius: {50;30;50;30}
                      opacity: .75
                      backgroundColor: "lavenderblush"
                      borderColor: "red"
                      textColor: "brown"
                      icon: IconType.home
                      borderWidth: 3
                      fontBold: true
                      x:-10
                      y:0
                      onClicked: {
                          score = 0
                          home.navigationStack.push(home)
                   }
                    }

                    Text {
                        id: scores
                        text: "Score: " + score
                        color: "black"
                        x: 900
                        y: 30
                        font.pixelSize: 25
                        font.bold: true
                    }


           }
       }


       Component{
           id: level6

           Page{
               title:"Choose - اختر"

                    Image {
                        id:backgrond6
                        anchors.fill: parent
                        source:"../Images/Words/children.jpg"
                    }

                   Rectangle{
                       anchors.centerIn: parent
                               width: dp(200)
                               height: dp(200)
                               color: "transparent"

                       NumberAnimation on y {
                           target: banana
                           property: "rotation"
                           from: 0
                           to: 360
                           duration: 1000
                           }
                       Image {
                         id: banana
                         anchors.fill:parent

                         source: "../Images/Words/banana.png"
                       }
                    }

                   AppButton {
                       id:mwz
                       backgroundColor: "indigo"
                          flat: false
                          text: "موز"
                          x: 650
                          y: 600
                          onClicked:{
                              if(mwz.x === 650 ){
                                  score = score + 1
                                  audio1.play()
                                  text = "الاجابة صحيحة"
                                  backgroundColor = "green"
                                  x = 651
                                  y = 601
                                  tofaha.x = 251
                                  tofaha.y = 601
                                  tofaha.backgroundColor = "red"
                              }

                            }
                          Audio {
                              id: audio1
                              source: "../audios/Clapping Sound Effects.mp3"
                                }
                    }
                    AppButton {
                        id:tofaha
                        backgroundColor: "indigo"
                          flat: false
                          text: "تفاحة"
                          x: 250
                          y: 600
                          onClicked: {
                              if(tofaha.x === 250 )
                              {
                                  audio2.play()
                                  text = "الاجابة خاطئة"
                                  backgroundColor = "red"
                                  x = 251
                                  y = 601
                                  mwz.x = 651
                                  mwz.y = 601
                                  mwz.backgroundColor = "green"
                            }

                            }
                          Audio {
                              id: audio2
                              source: "../audios/Wrong Buzzer - Sound Effect.mp3"
                                }
                    }
                    AppButton{
                        radius: {50;30;50;30}
                        opacity: .75
                        backgroundColor: "lavenderblush"
                        borderColor: "red"
                        textColor: "black"
                        icon: IconType.longarrowright
                        borderWidth: 3
                        fontBold: true
                        x:800
                        y:350
                        onClicked: {
                            home.navigationStack.push(level7)
                        }
                    }
                   AppButton{
                     radius: {50;30;50;30}
                     opacity: .75
                     backgroundColor: "lavenderblush"
                     borderColor: "red"
                     textColor: "brown"
                     icon: IconType.home
                     borderWidth: 3
                     fontBold: true
                     x:-10
                     y:0
                     onClicked:{
                         score = 0
                         home.navigationStack.push(home)
                   }
                   }

                   Text {
                       id: scores
                       text: "Score: " + score
                       color: "black"
                       x: 900
                       y: 30
                       font.pixelSize: 25
                       font.bold: true
                   }

           }
       }

           Component{
               id: level7

               Page{
                   title:"Choose - اختر"

                        Image {
                            id:backgrond7
                            anchors.fill: parent
                            source:"../Images/Words/children.jpg"
                        }

                       Rectangle{
                           anchors.centerIn: parent
                                   width: dp(200)
                                   height: dp(200)
                                   color: "transparent"
                           NumberAnimation on y {
                               target: cat
                               property: "rotation"
                               from: 0
                               to: 360
                               duration: 1000
                               }
                           Image {
                             id: cat
                             anchors.fill:parent
                             source: "../Images/Words/cat.png"
                           }
                    }

                   AppButton {
                       id:qta
                       backgroundColor: "indigo"
                          flat: false
                          text: "قطة"
                          x: 650
                          y: 600
                          onClicked:{
                              if(qta.x === 650 ){
                                  score = score + 1
                                  audio1.play()
                                  text = "الاجابة صحيحة"
                                  backgroundColor = "green"
                                  x = 651
                                  y = 601
                                  arnb.x = 251
                                  arnb.y = 601
                                  arnb.backgroundColor = "red"
                              }
                            }
                          Audio {
                              id: audio1
                              source: "../audios/Clapping Sound Effects.mp3"
                                }
                    }
                    AppButton {
                        id:arnb
                        backgroundColor: "indigo"
                          flat: false
                          text: "أرنب"
                          x: 250
                          y: 600
                          onClicked: {
                              if(arnb.x === 250 )
                              {

                                  audio2.play()
                                  text = "الاجابة خاطئة"
                                  backgroundColor = "red"
                                  x = 251
                                  y = 601
                                  qta.x = 651
                                  qta.y = 601
                                  qta.backgroundColor = "green"
                            }
                            }
                          Audio {
                              id: audio2
                              source: "../audios/Wrong Buzzer - Sound Effect.mp3"
                                }
                     }
                    AppButton{
                        radius: {50;30;50;30}
                        opacity: .75
                        backgroundColor: "lavenderblush"
                        borderColor: "red"
                        textColor: "black"
                        icon: IconType.longarrowright
                        borderWidth: 3
                        fontBold: true
                        x:800
                        y:350
                        onClicked: {
                            home.navigationStack.push(level8)
                        }
                     }
                  AppButton{
                     radius: {50;30;50;30}
                     opacity: .75
                     backgroundColor: "lavenderblush"
                     borderColor: "red"
                     textColor: "brown"
                     icon: IconType.home
                     borderWidth: 3
                     fontBold: true
                     x:-10
                     y:0
                     onClicked: {
                         score = 0
                         home.navigationStack.push(home)
                  }
                  }

                  Text {
                      id: scores
                      text: "Score: " + score
                      color: "black"
                      x: 900
                      y: 30
                      font.pixelSize: 25
                      font.bold: true
                  }

            }
       }


           Component{
               id: level8

               Page{
                   title:"Choose - اختر"
                        Image {
                            id:backgrond8
                            anchors.fill: parent
                            source:"../Images/Words/children.jpg"
                        }

                       Rectangle{
                           anchors.centerIn: parent
                                   width: dp(200)
                                   height: dp(200)
                                   color: "transparent"
                       NumberAnimation on y {
                           target: corn
                           property: "rotation"
                           from: 0
                           to: 390
                           duration: 1000
                           }
                       Image {
                         id: corn
                         anchors.fill:parent
                         source: "../Images/Words/corn.png"
                       }
                 }
                    AppButton {
                        id:tofah
                       backgroundColor: "indigo"
                          flat: false
                          text: "تفاحة"
                          x: 650
                          y: 600
                          onClicked:{
                              if(tofah.x === 650 )
                              {
                                audio2.play()
                                text = "الاجابة خاطئة"
                                backgroundColor = "red"
                                x = 651
                                y = 601
                                zra.x = 251
                                zra.y = 601
                                zra.backgroundColor = "green"
                              }
                            }
                          Audio {
                              id: audio2
                              source: "../audios/Wrong Buzzer - Sound Effect.mp3"
                                }
                     }
                     AppButton {
                         id:zra
                        backgroundColor: "indigo"
                          flat: false
                          text: "ذرة"
                          x: 250
                          y: 600
                          onClicked: {
                              if(zra.x === 250 )
                              {
                                 score = score + 1
                                 audio1.play()
                                 text = "الاجابة صحيحة"
                                 backgroundColor = "green"
                                 x = 251
                                 y = 601
                                 tofah.x = 651
                                 tofah.y = 601
                                 tofah.backgroundColor = "red"
                              }
                            }

                          Audio {
                                  id: audio1
                                  source: "../audios/Clapping Sound Effects.mp3"
                                }
                 }
               AppButton{
                   radius: {50;30;50;30}
                   opacity: .75
                   backgroundColor: "lavenderblush"
                   borderColor: "red"
                   textColor: "black"
                   icon: IconType.longarrowright
                   borderWidth: 3
                   fontBold: true
                   x:800
                   y:350
                   onClicked: {
                       home.navigationStack.push(level9)
                   }
               }


                        AppButton{
                          radius: {50;30;50;30}
                          opacity: .75
                          backgroundColor: "lavenderblush"
                          borderColor: "red"
                          textColor: "brown"
                          icon: IconType.home
                          borderWidth: 3
                          fontBold: true
                          x:-10
                          y:0
                          onClicked: {
                              score = 0
                              home.navigationStack.push(home)
                      }
                        }

                        Text {
                            id: scores
                            text: "Score: " + score
                            color: "black"
                            x: 900
                            y: 30
                            font.pixelSize: 25
                            font.bold: true
                        }

            }
      }

       Component{
               id: level9
               Page{
                   title:"Choose - اختر"
                Image {
                        id:backgrond9
                        anchors.fill: parent
                        source:"../Images/Words/children.jpg"
                    }

                   Rectangle{
                       anchors.centerIn: parent
                               width: dp(200)
                               height: dp(200)
                               color: "transparent"
                       NumberAnimation on y {
                           target: crow
                           property: "rotation"
                           from: 0
                           to: 360
                           duration: 1000
                           }
                           Image {
                             id: crow
                             anchors.fill:parent
                             source: "../Images/Words/crow.png"
                           }

                    }
               AppButton {
                   id:ghrab
                   backgroundColor: "indigo"
                      flat: false
                      text: "غراب"
                       x: 650
                      y: 600
                      onClicked:{
                          if(ghrab.x === 650 ){
                              score = score + 1
                              audio1.play()
                              text = "الاجابة صحيحة"
                              backgroundColor = "green"
                              x = 651
                              y = 601
                              thalb.x = 251
                              thalb.y = 601
                              thalb.backgroundColor = "red"
                          }
                        }
                      Audio {
                          id: audio1
                          source: "../audios/Clapping Sound Effects.mp3"
                            }
                 }
                AppButton {
                    id:thalb
                    backgroundColor: "indigo"
                      flat: false
                      text: "ثعلب"
                      x: 250
                      y: 600
                      onClicked: {
                          if(thalb.x === 250 ){
                              audio2.play()
                              text = "الاجابة خاطئة"
                              backgroundColor = "red"
                              x = 251
                              y = 601
                              ghrab.x = 651
                              ghrab.y = 601
                              ghrab.backgroundColor = "green"
                        }
                        }
                      Audio {
                              id: audio2
                              source: "../audios/Wrong Buzzer - Sound Effect.mp3"
                            }
                   }
                AppButton{
                    radius: {50;30;50;30}
                    opacity: .75
                    backgroundColor: "lavenderblush"
                    borderColor: "red"
                    textColor: "black"
                    icon: IconType.longarrowright
                    borderWidth: 3
                    fontBold: true
                    x:800
                    y:350
                    onClicked: {
                        home.navigationStack.push(level10)
                    }
    }
                  AppButton{
                     radius: {50;30;50;30}
                     opacity: .75
                     backgroundColor: "lavenderblush"
                     borderColor: "red"
                     textColor: "brown"
                     icon: IconType.home
                     borderWidth: 3
                     fontBold: true
                     x:-10
                     y:0
                     onClicked: {
                         score = 0
                         home.navigationStack.push(home)
                  }
                  }

                  Text {
                      id: scores
                      text: "Score: " + score
                      color: "black"
                      x: 900
                      y: 30
                      font.pixelSize: 25
                      font.bold: true
                  }

            }
       }


           Component{
               id: level10

               Page{
                   title:"Choose - اختر"

                Image {
                    id:backgrond10
                    anchors.fill: parent
                    source:"../Images/Words/children.jpg"
                }

               Rectangle{
                   anchors.centerIn: parent
                           width: dp(200)
                           height: dp(200)
                           color: "transparent"
                       NumberAnimation on y {
                           target: dog
                           property: "rotation"
                           from: 0
                           to: 360
                           duration: 1000
                           }
                       Image {
                         id: dog
                         anchors.fill:parent
                         source: "../Images/Words/dog.png"
                       }
                 }

                       AppButton {
                           id:qrda
                           backgroundColor: "indigo"
                              flat: false
                              text: "قرد"
                              x: 650
                              y: 600
                              onClicked:{
                                  if(qrda.x === 650 )
                                  {
                                    audio2.play()
                                    text = "الاجابة خاطئة"
                                    backgroundColor = "red"
                                    x = 651
                                    y = 601
                                    klb.x = 251
                                    klb.y = 601
                                    klb.backgroundColor = "green"
                                  }
                                }
                              Audio {
                                      id: audio2
                                      source: "../audios/Wrong Buzzer - Sound Effect.mp3"
                                    }
                            }
                        AppButton {
                            id:klb
                            backgroundColor: "indigo"
                              flat: false
                              text: "كلب"
                              x: 250
                              y: 600
                              onClicked: {
                                  if(klb.x === 250 )
                                  {
                                     score = score + 1
                                     audio1.play()
                                     text = "الاجابة صحيحة"
                                     backgroundColor = "green"
                                     x = 251
                                     y = 601
                                     qrda.x = 651
                                     qrda.y = 601
                                     qrda.backgroundColor = "red"
                                    }
                                }
                              Audio {
                                      id: audio1
                                      source: "../audios/Clapping Sound Effects.mp3"
                                    }
                            }
                        AppButton{
                            radius: {50;30;50;30}
                            opacity: .75
                            backgroundColor: "lavenderblush"
                            borderColor: "red"
                            textColor: "black"
                            icon: IconType.longarrowright
                            borderWidth: 3
                            fontBold: true
                            x:800
                            y:350
                            onClicked: {
                                home.navigationStack.push(level11)
                            }
                        }


                        AppButton{
                          radius: {50;30;50;30}
                          opacity: .75
                          backgroundColor: "lavenderblush"
                          borderColor: "red"
                          textColor: "brown"
                          icon: IconType.home
                          borderWidth: 3
                          fontBold: true
                          x:-10
                          y:0
                          onClicked: {
                              score = 0
                              home.navigationStack.push(home)
                      }
                        }

                        Text {
                            id: scores
                            text: "Score: " + score
                            color: "black"
                            x: 900
                            y: 30
                            font.pixelSize: 25
                            font.bold: true
                        }

               }
        }


           Component{
               id: level11

               Page{
                   title:"Choose - اختر"
                        Image {
                            id:backgrond11
                            anchors.fill: parent
                            source:"../Images/Words/children.jpg"
                        }

                        Rectangle{
                           anchors.centerIn: parent
                                   width: dp(200)
                                   height: dp(200)
                                   color: "transparent"
                       NumberAnimation on y {
                           target: fish
                           property: "rotation"
                           from: 0
                           to: 360
                           duration: 1000
                           }
                   Image {
                     id: fish
                     anchors.fill:parent
                     source: "../Images/Words/fish.png"
                   }
                 }
                       AppButton {
                           id:qtah
                           backgroundColor: "indigo"
                              flat: false
                              text: "قطة"
                               x: 650
                              y: 600
                              onClicked:{
                                  if(qtah.x === 650 )
                                  {
                                    audio2.play()
                                    text = "الاجابة خاطئة"
                                    backgroundColor = "red"
                                    x = 651
                                    y = 601
                                    cmka.x = 251
                                    cmka.y = 601
                                    cmka.backgroundColor = "green"
                                  }

                                }
                              Audio {
                                      id: audio2
                                      source: "../audios/Wrong Buzzer - Sound Effect.mp3"
                                    }
                            }

                        AppButton {
                            id:cmka
                            backgroundColor: "indigo"

                              flat: false
                              text: "سمكة"
                              x: 250
                              y: 600
                              onClicked: {
                                  if(cmka.x === 250 )
                                  {
                                     score = score + 1
                                     audio1.play()
                                     text = "الاجابة صحيحة"
                                     backgroundColor = "green"
                                     x = 251
                                     y = 601
                                     qtah.x = 651
                                     qtah.y = 601
                                     qtah.backgroundColor = "red"
                                    }
                                }
                              Audio {
                                      id: audio1
                                      source: "../audios/Clapping Sound Effects.mp3"
                                    }
                            }
                        AppButton{
                            radius: {50;30;50;30}
                            opacity: .75
                            backgroundColor: "lavenderblush"
                            borderColor: "red"
                            textColor: "black"
                            icon: IconType.longarrowright
                            borderWidth: 3
                            fontBold: true
                            x:800
                            y:350
                            onClicked: {
                                home.navigationStack.push(level12)
                            }
                        }


                         AppButton{
                              radius: {50;30;50;30}
                              opacity: .75
                              backgroundColor: "lavenderblush"
                              borderColor: "red"
                              textColor: "brown"
                              icon: IconType.home
                              borderWidth: 3
                              fontBold: true
                              x:-10
                              y:0
                              onClicked: {
                                  score = 0
                                  home.navigationStack.push(home)
                          }
                         }

                         Text {
                             id: scores
                             text: "Score: " + score
                             color: "black"
                             x: 900
                             y: 30
                             font.pixelSize: 25
                             font.bold: true
                         }


       }
           }


           Component{
               id: level12
               Page{
                   title:"Choose - اختر"
                        Image {
                            id:backgrond12
                            anchors.fill: parent
                            source:"../Images/Words/children.jpg"
                        }

                       Rectangle{
                           anchors.centerIn: parent
                                   width: dp(200)
                                   height: dp(200)
                                   color: "transparent"
                   NumberAnimation on y {
                       target: flower
                       property: "rotation"
                       from: 0
                       to: 360
                       duration: 1000
                       }
                   Image {
                     id: flower
                     anchors.fill:parent

                     source: "../Images/Words/flower.png"

                   }

                 }

                       AppButton {
                           id:wrda
                           backgroundColor: "indigo"

                              flat: false
                              text: "وردة"
                               x: 650
                              y: 600
                              onClicked:{
                                  if(wrda.x === 650 ){
                                      score = score + 1
                                      audio1.play()
                                      text = "الاجابة صحيحة"
                                      backgroundColor = "green"
                                      x = 651
                                      y = 601
                                      kup.x = 251
                                      kup.y = 601
                                      kup.backgroundColor = "red"
                                  }
                                }

                              Audio {
                                      id: audio1
                                      source: "../audios/Clapping Sound Effects.mp3"
                                    }
                            }

                        AppButton {
                           id: kup
                            backgroundColor: "indigo"
                              flat: false
                              text: "كوب"
                              x: 250
                              y: 600
                              onClicked: {
                                  if(kup.x === 250 ){
                                      audio2.play()
                                      text = "الاجابة خاطئة"
                                      backgroundColor = "red"
                                      x = 251
                                      y = 601
                                      wrda.x = 651
                                      wrda.y = 601
                                      wrda.backgroundColor = "green"
                                }
                                }
                              Audio {
                                      id: audio2
                                      source: "../audios/Wrong Buzzer - Sound Effect.mp3"
                                    }
                            }
                        AppButton{
                            radius: {50;30;50;30}
                            opacity: .75
                            backgroundColor: "lavenderblush"
                            borderColor: "red"
                            textColor: "black"
                            icon: IconType.longarrowright
                            borderWidth: 3
                            fontBold: true
                            x:800
                            y:350
                            onClicked: {
                                home.navigationStack.push(level13)
                            }
            }
                  AppButton{
                     radius: {50;30;50;30}
                     opacity: .75
                     backgroundColor: "lavenderblush"
                     borderColor: "red"
                     textColor: "brown"
                     icon: IconType.home
                     borderWidth: 3
                     fontBold: true
                     x:-10
                     y:0
                     onClicked: {
                         score = 0
                         home.navigationStack.push(home)
                   }
                  }

                  Text {
                      id: scores
                      text: "Score: " + score
                      color: "black"
                      x: 900
                      y: 30
                      font.pixelSize: 25
                      font.bold: true
                  }

            }
       }


           Component{
               id: level13

               Page{
                   title:"Choose - اختر"
                        Image {
                            id:backgrond13
                            anchors.fill: parent
                            source:"../Images/Words/children.jpg"
                        }
                       Rectangle{
                           anchors.centerIn: parent
                                   width: dp(200)
                                   height: dp(200)
                                   color: "transparent"
               NumberAnimation on y {
                   target: frog
                   property: "rotation"
                   from: 0
                   to: 360
                   duration: 1000
                   }
                   Image {
                     id: frog
                     anchors.fill:parent

                     source: "../Images/Words/frog.png"

                   }
                 }

                       AppButton {
                           id:tmcah
                           backgroundColor: "indigo"
                              flat: false
                              text: "تمساح"
                               x: 650
                              y: 600
                              onClicked:{
                                  if(tmcah.x === 650 )
                                  {
                                    audio2.play()
                                    text = "الاجابة خاطئة"
                                    backgroundColor = "red"
                                    x = 651
                                    y = 601
                                    dfda.x = 251
                                    dfda.y = 601
                                    dfda.backgroundColor = "green"
                                  }
                                }

                              Audio {
                                      id: audio2
                                      source: "../audios/Wrong Buzzer - Sound Effect.mp3"
                                    }
                            }

                        AppButton {
                            id:dfda
                            backgroundColor: "indigo"
                              flat: false
                              text: "ضفدع"
                              x: 250
                              y: 600
                              onClicked: {
                                  if(dfda.x === 250 )
                                  {
                                     score = score + 1
                                     audio1.play()
                                     text = "الاجابة صحيحة"
                                     backgroundColor = "green"
                                     x = 251
                                     y = 601
                                     tmcah.x = 651
                                     tmcah.y = 601
                                     tmcah.backgroundColor = "red"
                                    }
                                }
                              Audio {
                                      id: audio1
                                      source: "../audios/Clapping Sound Effects.mp3"
                                    }
                            }
                        AppButton{
                            radius: {50;30;50;30}
                            opacity: .75
                            backgroundColor: "lavenderblush"
                            borderColor: "red"
                            textColor: "black"
                            icon: IconType.longarrowright
                            borderWidth: 3
                            fontBold: true
                            x:800
                            y:350
                            onClicked: {
                                home.navigationStack.push(level14)
                            }
                        }

                        AppButton{
                          radius: {50;30;50;30}
                          opacity: .75
                          backgroundColor: "lavenderblush"
                          borderColor: "red"
                          textColor: "brown"
                          icon: IconType.home
                          borderWidth: 3
                          fontBold: true
                          x:-10
                          y:0
                          onClicked:{
                              score = 0
                              home.navigationStack.push(home)
                      }
                        }

                        Text {
                            id: scores
                            text: "Score: " + score
                            color: "black"
                            x: 900
                            y: 30
                            font.pixelSize: 25
                            font.bold: true
                        }

   }
   }



           Component{
               id: level14

               Page{
                   title:"Choose - اختر"
                        Image {
                            id:backgrond14
                            anchors.fill: parent
                            source:"../Images/Words/children.jpg"
                        }
                       Rectangle{
                           anchors.centerIn: parent
                                   width: dp(200)
                                   height: dp(200)
                                   color: "transparent"
                   NumberAnimation on y {
                       target: giraffe
                       property: "rotation"
                       from: 0
                       to: 360
                       duration: 1000
                       }
                   Image {
                     id: giraffe
                     anchors.fill:parent

                     source: "../Images/Words/giraffe.png"
                   }
                 }
                       AppButton {
                           id:zrafa
                           backgroundColor: "indigo"
                              flat: false
                              text: "زرافة"
                              x: 650
                              y: 600
                              onClicked:{
                                  if(zrafa.x === 650 ){
                                      score = score + 1
                                      audio1.play()
                                      text = "الاجابة صحيحة"
                                      backgroundColor = "green"
                                      x = 651
                                      y = 601
                                      asd.x = 251
                                      asd.y = 601
                                      asd.backgroundColor = "red"
                                  }
                                }

                              Audio {
                                      id: audio1
                                      source: "../audios/Clapping Sound Effects.mp3"
                                    }
                            }

                        AppButton {
                            id:asd
                            backgroundColor: "indigo"
                              flat: false
                              text: "أسد"
                              x: 250
                              y: 600
                              onClicked: {
                                  if(asd.x === 250 ){
                                      audio2.play()
                                      text = "الاجابة خاطئة"
                                      backgroundColor = "red"
                                      x = 251
                                      y = 601
                                      zrafa.x = 651
                                      zrafa.y = 601
                                      zrafa.backgroundColor = "green"
                                }
                                }
                              Audio {
                                      id: audio2
                                      source: "../audios/Wrong Buzzer - Sound Effect.mp3"
                                    }
                            }
                        AppButton{
                            radius: {50;30;50;30}
                            opacity: .75
                            backgroundColor: "lavenderblush"
                            borderColor: "red"
                            textColor: "black"
                            icon: IconType.longarrowright
                            borderWidth: 3
                            fontBold: true
                            x:800
                            y:350
                            onClicked: {
                                home.navigationStack.push(level15)
                            }
            }
                  AppButton{
                     radius: {50;30;50;30}
                     opacity: .75
                     backgroundColor: "lavenderblush"
                     borderColor: "red"
                     textColor: "brown"
                     icon: IconType.home
                     borderWidth: 3
                     fontBold: true
                     x:-10
                     y:0
                     onClicked: {
                         score = 0
                         home.navigationStack.push(home)
                 }
                  }

                  Text {
                      id: scores
                      text: "Score: " + score
                      color: "black"
                      x: 900
                      y: 30
                      font.pixelSize: 25
                      font.bold: true
                  }
   }

       }


           Component{
               id: level15

               Page{
                   title:"Choose - اختر"
                        Image {
                            id:backgrond15
                            anchors.fill: parent
                            source:"../Images/Words/children.jpg"
                        }
                       Rectangle{
                           anchors.centerIn: parent
                                   width: dp(200)
                                   height: dp(200)
                                   color: "transparent"
                   NumberAnimation on y {
                       target: grape
                       property: "rotation"
                       from: 0
                       to: 360
                       duration: 1000
                       }
                   Image {
                     id: grape
                     anchors.fill:parent

                     source: "../Images/Words/grape.png"
                   }
                 }
                       AppButton {
                           id:enb
                           backgroundColor: "indigo"
                              flat: false
                              text: "عنب"
                               x: 650
                              y: 600
                              onClicked:{
                                  if(enb.x === 650 ){
                                      score = score + 1
                                      audio1.play()
                                      text = "الاجابة صحيحة"
                                      backgroundColor = "green"
                                      x = 651
                                      y = 601
                                      guafa.x = 251
                                      guafa.y = 601
                                      guafa.backgroundColor = "red"
                                  }
                                }

                              Audio {
                                      id: audio1
                                      source: "../audios/Clapping Sound Effects.mp3"
                                    }
                            }

                        AppButton {
                            id:guafa
                            backgroundColor: "indigo"
                              flat: false
                              text: "جوافة"
                              x: 250
                              y: 600
                              onClicked: {
                                  if(guafa.x === 250 ){
                                      audio2.play()
                                      text = "الاجابة خاطئة"
                                      backgroundColor = "red"
                                      x = 251
                                      y = 601
                                      enb.x = 651
                                      enb.y = 601
                                      enb.backgroundColor = "green"
                                }
                                }
                              Audio {
                                      id: audio2
                                      source: "../audios/Wrong Buzzer - Sound Effect.mp3"
                                    }
                            }
                        AppButton{
                            radius: {50;30;50;30}
                            opacity: .75
                            backgroundColor: "lavenderblush"
                            borderColor: "red"
                            textColor: "black"
                            icon: IconType.longarrowright
                            borderWidth: 3
                            fontBold: true
                            x:800
                            y:350
                            onClicked: {
                                home.navigationStack.push(level16)
                            }
            }
                  AppButton{
                     radius: {50;30;50;30}
                     opacity: .75
                     backgroundColor: "lavenderblush"
                     borderColor: "red"
                     textColor: "brown"
                     icon: IconType.home
                     borderWidth: 3
                     fontBold: true
                     x:-10
                     y:0
                     onClicked: {
                         score = 0
                         home.navigationStack.push(home)
                 }
                  }

                  Text {
                      id: scores
                      text: "Score: " + score
                      color: "black"
                      x: 900
                      y: 30
                      font.pixelSize: 25
                      font.bold: true
                  }

   }

   }

           Component{
               id: level16

               Page{
                   title:"Choose - اختر"

                        Image {
                            id:backgrond16
                            anchors.fill: parent
                            source:"../Images/Words/children.jpg"
                        }
                       Rectangle{
                           anchors.centerIn: parent
                                   width: dp(200)
                                   height: dp(200)
                                   color: "transparent"
                   NumberAnimation on y {
                       target: hand
                       property: "rotation"
                       from: 0
                       to: 360
                       duration: 1000
                       }
                   Image {
                     id: hand
                     anchors.fill:parent

                     source: "../Images/Words/hand.png"

                   }
                 }

                       AppButton {
                           id:anf
                           backgroundColor: "indigo"
                              flat: false
                              text: "أنف"
                               x: 650
                              y: 600
                              onClicked:{
                                  if(anf.x === 650 )
                                  {
                                    audio2.play()
                                    text = "الاجابة خاطئة"
                                    backgroundColor = "red"
                                    x = 651
                                    y = 601
                                    yd.x = 251
                                    yd.y = 601
                                    yd.backgroundColor = "green"
                                  }

                                }

                              Audio {
                                      id: audio2
                                      source: "../audios/Wrong Buzzer - Sound Effect.mp3"
                                    }
                            }

                        AppButton {
                            id:yd
                            backgroundColor: "indigo"
                              flat: false
                              text: "يد"
                              x: 250
                              y: 600
                              onClicked: {
                                  if(yd.x === 250 )
                                  {
                                     score = score + 1
                                     audio1.play()
                                     text = "الاجابة صحيحة"
                                     backgroundColor = "green"
                                     x = 251
                                     y = 601
                                     anf.x = 651
                                     anf.y = 601
                                     anf.backgroundColor = "red"
                                    }
                                }
                              Audio {
                                      id: audio1
                                      source: "../audios/Clapping Sound Effects.mp3"
                                    }
                            }
                        AppButton{
                            radius: {50;30;50;30}
                            opacity: .75
                            backgroundColor: "lavenderblush"
                            borderColor: "red"
                            textColor: "black"
                            icon: IconType.longarrowright
                            borderWidth: 3
                            fontBold: true
                            x:800
                            y:350
                            onClicked: {
                                home.navigationStack.push(level17)
                            }
                        }


                        AppButton{
                          radius: {50;30;50;30}
                          opacity: .75
                          backgroundColor: "lavenderblush"
                          borderColor: "red"
                          textColor: "brown"
                          icon: IconType.home
                          borderWidth: 3
                          fontBold: true
                          x:-10
                          y:0
                          onClicked: {
                              score = 0
                              home.navigationStack.push(home)
                      }
                        }

                        Text {
                            id: scores
                            text: "Score: " + score
                            color: "black"
                            x: 900
                            y: 30
                            font.pixelSize: 25
                            font.bold: true
                        }
   }
           }


           Component{
               id: level17

               Page{
                   title:"Choose - اختر"
                        Image {
                            id:backgrond17
                            anchors.fill: parent
                            source:"../Images/Words/children.jpg"
                        }
                       Rectangle{
                           anchors.centerIn: parent
                                   width: dp(200)
                                   height: dp(200)
                                   color: "transparent"
                   NumberAnimation on y {
                       target: hoopoe
                       property: "rotation"
                       from: 0
                       to: 360
                       duration: 1000
                       }
                   Image {
                     id: hoopoe
                     anchors.fill:parent

                     source: "../Images/Words/hoopoe.png"
                   }
                 }
                       AppButton {
                           id:hdhd
                           backgroundColor: "indigo"

                              flat: false
                              text: "هدهد"
                               x: 650
                              y: 600
                              onClicked:{
                                  if(hdhd.x === 650 ){
                                      score = score + 1
                                      audio1.play()
                                      text = "الاجابة صحيحة"
                                      backgroundColor = "green"
                                      x = 651
                                      y = 601
                                      bth.x = 251
                                      bth.y = 601
                                      bth.backgroundColor = "red"
                                  }
                                }

                              Audio {
                                      id: audio1
                                      source: "../audios/Clapping Sound Effects.mp3"
                                    }
                            }

                        AppButton {
                            id:bth
                            backgroundColor: "indigo"
                              flat: false
                              text: "بطة"
                              x: 250
                              y: 600
                              onClicked: {
                                  if(bth.x === 250 ){
                                      audio2.play()
                                      text = "الاجابة خاطئة"
                                      backgroundColor = "red"
                                      x = 251
                                      y = 601
                                      hdhd.x = 651
                                      hdhd.y = 601
                                      hdhd.backgroundColor = "green"
                                }
                                }
                              Audio {
                                      id: audio2
                                      source: "../audios/Wrong Buzzer - Sound Effect.mp3"
                                    }
                            }
                        AppButton{
                            radius: {50;30;50;30}
                            opacity: .75
                            backgroundColor: "lavenderblush"
                            borderColor: "red"
                            textColor: "black"
                            icon: IconType.longarrowright
                            borderWidth: 3
                            fontBold: true
                            x:800
                            y:350
                            onClicked: {
                                home.navigationStack.push(level18)
                            }
            }
                  AppButton{
                     radius: {50;30;50;30}
                     opacity: .75
                     backgroundColor: "lavenderblush"
                     borderColor: "red"
                     textColor: "brown"
                     icon: IconType.home
                     borderWidth: 3
                     fontBold: true
                     x:-10
                     y:0
                     onClicked: {
                         score = 0
                         home.navigationStack.push(home)
                 }
                  }

                  Text {
                      id: scores
                      text: "Score: " + score
                      color: "black"
                      x: 900
                      y: 30
                      font.pixelSize: 25
                      font.bold: true
                  }

   }

   }


           Component{
               id: level18

               Page{
                   title:"Choose - اختر"

                        Image {
                            id:backgrond18
                            anchors.fill: parent
                            source:"../Images/Words/children.jpg"
                        }
                       Rectangle{
                           anchors.centerIn: parent
                                   width: dp(200)
                                   height: dp(200)
                                   color: "transparent"
                       NumberAnimation on y {
                           target: horse
                           property: "rotation"
                           from: 0
                           to: 360
                           duration: 1000
                           }
                   Image {
                     id: horse
                     anchors.fill:parent

                     source: "../Images/Words/horse.png"

                   }
                 }

                       AppButton {
                           id:hot
                           backgroundColor: "indigo"
                              flat: false
                              text: "حوت"
                               x: 650
                              y: 600
                              onClicked:{
                                  if(hot.x === 650 )
                                  {
                                    audio2.play()
                                    text = "الاجابة خاطئة"
                                    backgroundColor = "red"
                                    x = 651
                                    y = 601
                                    hsan.x = 251
                                    hsan.y = 601
                                    hsan.backgroundColor = "green"
                                  }
                                }

                              Audio {
                                      id: audio2
                                      source: "../audios/Wrong Buzzer - Sound Effect.mp3"
                                    }
                            }

                        AppButton {
                            id:hsan
                            backgroundColor: "indigo"
                              flat: false
                              text: "حصان"
                              x: 250
                              y: 600
                              onClicked: {
                                  if(hsan.x === 250 )
                                  {
                                     score = score + 1
                                     audio1.play()
                                     text = "الاجابة صحيحة"
                                     backgroundColor = "green"
                                     x = 251
                                     y = 601
                                     hot.x = 651
                                     hot.y = 601
                                     hot.backgroundColor = "red"
                                    }
                                }
                              Audio {
                                      id: audio1
                                      source: "../audios/Clapping Sound Effects.mp3"
                                    }
                            }
                        AppButton{
                            radius: {50;30;50;30}
                            opacity: .75
                            backgroundColor: "lavenderblush"
                            borderColor: "red"
                            textColor: "black"
                            icon: IconType.longarrowright
                            borderWidth: 3
                            fontBold: true
                            x:800
                            y:350
                            onClicked: {
                                home.navigationStack.push(level19)
                            }
                        }

                        AppButton{
                              radius: {50;30;50;30}
                              opacity: .75
                              backgroundColor: "lavenderblush"
                              borderColor: "red"
                              textColor: "brown"
                              icon: IconType.home
                              borderWidth: 3
                              fontBold: true
                              x:-10
                              y:0
                              onClicked: {
                                  score = 0
                                  home.navigationStack.push(home)
                      }
                        }

                        Text {
                            id: scores
                            text: "Score: " + score
                            color: "black"
                            x: 900
                            y: 30
                            font.pixelSize: 25
                            font.bold: true
                        }
   }
   }


           Component{
               id: level19

               Page{
                   title:"Choose - اختر"

                        Image {
                            id:backgrond19
                            anchors.fill: parent
                            source:"../Images/Words/children.jpg"
                        }
                       Rectangle{
                           anchors.centerIn: parent
                                   width: dp(200)
                                   height: dp(200)
                                   color: "transparent"
                   NumberAnimation on y {
                       target: lemon
                       property: "rotation"
                       from: 0
                       to: 360
                       duration: 1000
                       }
                   Image {
                     id: lemon
                     anchors.fill:parent

                     source: "../Images/Words/lemon.png"

                   }
                 }

                       AppButton {
                           id:brtkal
                           backgroundColor: "indigo"
                              flat: false
                              text: "برتقال"
                               x: 650
                              y: 600
                              onClicked:{
                                  if(brtkal.x === 650 )
                                  {
                                    audio2.play()
                                    text = "الاجابة خاطئة"
                                    backgroundColor = "red"
                                    x = 651
                                    y = 601
                                    limon.x = 251
                                    limon.y = 601
                                    limon.backgroundColor = "green"
                                  }
                                }

                              Audio {
                                      id: audio2
                                      source: "../audios/Wrong Buzzer - Sound Effect.mp3"
                                    }
                            }

                        AppButton {
                            id:limon
                            backgroundColor: "indigo"
                              flat: false
                              text: "ليمون"
                              x: 250
                              y: 600
                              onClicked: {
                                  if(limon.x === 250 )
                                  {
                                     score = score + 1
                                     audio1.play()
                                     text = "الاجابة صحيحة"
                                     backgroundColor = "green"
                                     x = 251
                                     y = 601
                                     brtkal.x = 651
                                     brtkal.y = 601
                                     brtkal.backgroundColor = "red"
                                    }
                                }
                              Audio {
                                      id: audio1
                                      source: "../audios/Clapping Sound Effects.mp3"
                                    }
                            }
                        AppButton{
                            radius: {50;30;50;30}
                            opacity: .75
                            backgroundColor: "lavenderblush"
                            borderColor: "red"
                            textColor: "black"
                            icon: IconType.longarrowright
                            borderWidth: 3
                            fontBold: true
                            x:800
                            y:350
                            onClicked: {
                                home.navigationStack.push(level20)
                            }
                        }

                        AppButton{
                              radius: {50;30;50;30}
                              opacity: .75
                              backgroundColor: "lavenderblush"
                              borderColor: "red"
                              textColor: "brown"
                              icon: IconType.home
                              borderWidth: 3
                              fontBold: true
                              x:-10
                              y:0
                              onClicked: {
                                  score = 0
                                  home.navigationStack.push(home)
                          }
                        }

                        Text {
                            id: scores
                            text: "Score: " + score
                            color: "black"
                            x: 900
                            y: 30
                            font.pixelSize: 25
                            font.bold: true
                        }

       }
           }


           Component{
               id: level20

               Page{
                   title:"Choose - اختر"
                        Image {
                            id:backgrond20
                            anchors.fill: parent
                            source:"../Images/Words/children.jpg"
                        }
                       Rectangle{
                           anchors.centerIn: parent
                                   width: dp(200)
                                   height: dp(200)
                                   color: "transparent"
                       NumberAnimation on y {
                           target: letter
                           property: "rotation"
                           from: 0
                           to: 360
                           duration: 1000
                           }
                   Image {
                     id: letter
                     anchors.fill:parent

                     source: "../Images/Words/letter.png"
                   }
                 }
                       AppButton {
                           id:zrf
                           backgroundColor: "indigo"

                              flat: false
                              text: "ظرف"
                               x: 650
                              y: 600
                              onClicked:{
                                  if(zrf.x === 650 ){
                                      score = score + 1
                                      audio1.play()
                                      text = "الاجابة صحيحة"
                                      backgroundColor = "green"
                                      x = 651
                                      y = 601
                                      frasha.x = 251
                                      frasha.y = 601
                                      frasha.backgroundColor = "red"
                                  }
                                }

                              Audio {
                                      id: audio1
                                      source: "../audios/Clapping Sound Effects.mp3"
                                    }
                            }

                        AppButton {
                            id:frasha
                            backgroundColor: "indigo"
                              flat: false
                              text: "فراشة"
                              x: 250
                              y: 600
                              onClicked: {
                                  if(frasha.x === 250 ){
                                      audio2.play()
                                      text = "الاجابة خاطئة"
                                      backgroundColor = "red"
                                      x = 251
                                      y = 601
                                      zrf.x = 651
                                      zrf.y = 601
                                      zrf.backgroundColor = "green"
                                }
                                }
                              Audio {
                                      id: audio2
                                      source: "../audios/Wrong Buzzer - Sound Effect.mp3"
                                    }
                            }
                        AppButton{
                            radius: {50;30;50;30}
                            opacity: .75
                            backgroundColor: "lavenderblush"
                            borderColor: "red"
                            textColor: "black"
                            icon: IconType.longarrowright
                            borderWidth: 3
                            fontBold: true
                            x:800
                            y:350
                            onClicked: {
                                home.navigationStack.push(level21)
                            }
            }

                  AppButton{
                     radius: {50;30;50;30}
                     opacity: .75
                     backgroundColor: "lavenderblush"
                     borderColor: "red"
                     textColor: "brown"
                     icon: IconType.home
                     borderWidth: 3
                     fontBold: true
                     x:-10
                     y:0
                     onClicked: {
                         score = 0
                         home.navigationStack.push(home)
                 }
                  }

                  Text {
                      id: scores
                      text: "Score: " + score
                      color: "black"
                      x: 900
                      y: 30
                      font.pixelSize: 25
                      font.bold: true
                  }

   }

       }

           Component{
               id: level21

               Page{
                   title:"Choose - اختر"
                        Image {
                            id:backgrond21
                            anchors.fill: parent
                            source:"../Images/Words/children.jpg"
                        }
                       Rectangle{
                           anchors.centerIn: parent
                                   width: dp(200)
                                   height: dp(200)
                                   color: "transparent"
                   NumberAnimation on y {
                       target: plate
                       property: "rotation"
                       from: 0
                       to: 360
                       duration: 1000
                       }
                   Image {
                     id: plate
                     anchors.fill:parent

                     source: "../Images/Words/plate.png"
                   }
                 }
                       AppButton {
                           id:chn
                           backgroundColor: "indigo"

                              flat: false
                              text: "صحن"
                               x: 650
                              y: 600
                              onClicked:{
                                  if(chn.x === 650 ){
                                      score = score + 1
                                      audio1.play()
                                      text = "الاجابة صحيحة"
                                      backgroundColor = "green"
                                      x = 651
                                      y = 601
                                      wrqa.x = 251
                                      wrqa.y = 601
                                      wrqa.backgroundColor = "red"
                                  }
                                }

                              Audio {
                                      id: audio1
                                      source: "../audios/Clapping Sound Effects.mp3"
                                    }
                            }

                        AppButton {
                            id:wrqa
                            backgroundColor: "indigo"
                              flat: false
                              text: "ورقة"
                              x: 250
                              y: 600
                              onClicked: {
                                  if(wrqa.x === 250 ){
                                      audio2.play()
                                      text = "الاجابة خاطئة"
                                      backgroundColor = "red"
                                      x = 251
                                      y = 601
                                      chn.x = 651
                                      chn.y = 601
                                      chn.backgroundColor = "green"
                                }
                                }
                              Audio {
                                      id: audio2
                                      source: "../audios/Wrong Buzzer - Sound Effect.mp3"
                                    }
                            }
                        AppButton{
                            radius: {50;30;50;30}
                            opacity: .75
                            backgroundColor: "lavenderblush"
                            borderColor: "red"
                            textColor: "black"
                            icon: IconType.longarrowright
                            borderWidth: 3
                            fontBold: true
                            x:800
                            y:350
                            onClicked: {
                                home.navigationStack.push(level22)
                            }
            }
                  AppButton{
                     radius: {50;30;50;30}
                     opacity: .75
                     backgroundColor: "lavenderblush"
                     borderColor: "red"
                     textColor: "brown"
                     icon: IconType.home
                     borderWidth: 3
                     fontBold: true
                     x:-10
                     y:0
                     onClicked:{
                         score = 0
                         home.navigationStack.push(home)
                 }
                  }

                  Text {
                      id: scores
                      text: "Score: " + score
                      color: "black"
                      x: 900
                      y: 30
                      font.pixelSize: 25
                      font.bold: true
                  }

   }

       }


           Component{
               id: level22

               Page{
                   title:"Choose - اختر"

                        Image {
                            id:backgrond22
                            anchors.fill: parent
                            source:"../Images/Words/children.jpg"
                        }
                       Rectangle{
                           anchors.centerIn: parent
                                   width: dp(200)
                                   height: dp(200)
                                   color: "transparent"
                       NumberAnimation on y {
                           target: pome
                           property: "rotation"
                           from: 0
                           to: 360
                           duration: 1000
                           }
                   Image {
                     id: pome
                     anchors.fill:parent

                     source: "../Images/Words/pome.png"

                   }
                 }

                       AppButton {
                           id:bhr
                           backgroundColor: "indigo"
                              flat: false
                              text: "بحر"
                               x: 650
                              y: 600
                              onClicked:{
                                  if(bhr.x === 650 )
                                  {
                                    audio2.play()
                                    text = "الاجابة خاطئة"
                                    backgroundColor = "red"
                                    x = 651
                                    y = 601
                                    rman.x = 251
                                    rman.y = 601
                                    rman.backgroundColor = "green"
                                  }
                                }

                              Audio {
                                      id: audio2
                                      source: "../audios/Wrong Buzzer - Sound Effect.mp3"
                                    }
                            }

                        AppButton {
                            id:rman
                            backgroundColor: "indigo"
                              flat: false
                              text: "رمان"
                              x: 250
                              y: 600
                              onClicked: {
                                  if(rman.x === 250 )
                                  {
                                     score = score + 1
                                     audio1.play()
                                     text = "الاجابة صحيحة"
                                     backgroundColor = "green"
                                     x = 251
                                     y = 601
                                     bhr.x = 651
                                     bhr.y = 601
                                     bhr.backgroundColor = "red"
                                    }

                                }
                              Audio {
                                      id: audio1
                                      source: "../audios/Clapping Sound Effects.mp3"
                                    }
                            }
                        AppButton{
                            radius: {50;30;50;30}
                            opacity: .75
                            backgroundColor: "lavenderblush"
                            borderColor: "red"
                            textColor: "black"
                            icon: IconType.longarrowright
                            borderWidth: 3
                            fontBold: true
                            x:800
                            y:350
                            onClicked: {
                                home.navigationStack.push(level23)
                            }
                        }


                        AppButton{
                              radius: {50;30;50;30}
                              opacity: .75
                              backgroundColor: "lavenderblush"
                              borderColor: "red"
                              textColor: "brown"
                              icon: IconType.home
                              borderWidth: 3
                              fontBold: true
                              x:-10
                              y:0
                              onClicked:{
                                  score = 0
                                  home.navigationStack.push(home)
                          }
                        }

                        Text {
                            id: scores
                            text: "Score: " + score
                            color: "black"
                            x: 900
                            y: 30
                            font.pixelSize: 25
                            font.bold: true
                        }


   }
   }


           Component{
               id: level23
               Page{
                   title:"Choose - اختر"
                        Image {
                            id:backgrond23
                            anchors.fill: parent
                            source:"../Images/Words/children.jpg"
                        }
                       Rectangle{
                           anchors.centerIn: parent
                                   width: dp(200)
                                   height: dp(200)
                                   color: "transparent"
               NumberAnimation on y {
                   target: sheep
                   property: "rotation"
                   from: 0
                   to: 360
                   duration: 1000
                   }
                   Image {
                     id: sheep
                     anchors.fill:parent

                     source: "../Images/Words/sheep.png"
                   }
                 }
                       AppButton {
                           id:khrof
                           backgroundColor: "indigo"

                              flat: false
                              text: "خروف"
                               x: 650
                              y: 600
                              onClicked:{
                                  if(khrof.x === 650 ){
                                      score = score + 1
                                      audio1.play()
                                      text = "الاجابة صحيحة"
                                      backgroundColor = "green"
                                      x = 651
                                      y = 601
                                      bkra.x = 251
                                      bkra.y = 601
                                      bkra.backgroundColor = "red"
                                  }
                                }

                              Audio {
                                      id: audio1
                                      source: "../audios/Clapping Sound Effects.mp3"
                                    }
                            }

                        AppButton {
                            id:bkra
                            backgroundColor: "indigo"
                              flat: false
                              text: "بقرة"
                              x: 250
                              y: 600
                              onClicked: {
                                  if(bkra.x === 250 ){
                                      audio2.play()
                                      text = "الاجابة خاطئة"
                                      backgroundColor = "red"
                                      x = 251
                                      y = 601
                                      khrof.x = 651
                                      khrof.y = 601
                                      khrof.backgroundColor = "green"
                                }
                                }
                              Audio {
                                      id: audio2
                                      source: "../audios/Wrong Buzzer - Sound Effect.mp3"
                                    }
                            }
                        AppButton{
                            radius: {50;30;50;30}
                            opacity: .75
                            backgroundColor: "lavenderblush"
                            borderColor: "red"
                            textColor: "black"
                            icon: IconType.longarrowright
                            borderWidth: 3
                            fontBold: true
                            x:800
                            y:350
                            onClicked: {
                                home.navigationStack.push(level24)
                            }
            }

                  AppButton{
                     radius: {50;30;50;30}
                     opacity: .75
                     backgroundColor: "lavenderblush"
                     borderColor: "red"
                     textColor: "brown"
                     icon: IconType.home
                     borderWidth: 3
                     fontBold: true
                     x:-10
                     y:0
                     onClicked:{
                         score = 0
                         home.navigationStack.push(home)
                 }
                  }

                  Text {
                      id: scores
                      text: "Score: " + score
                      color: "black"
                      x: 900
                      y: 30
                      font.pixelSize: 25
                      font.bold: true
                  }

   }

       }

           Component{
               id: level24

               Page{
                   title:"Choose - اختر"

                        Image {
                            id:backgrond24
                            anchors.fill: parent
                            source:"../Images/Words/children.jpg"
                        }
                   Rectangle{
                           anchors.centerIn: parent
                           width: dp(200)
                           height: dp(200)
                           color: "transparent"
                       NumberAnimation on y {
                           target: strawberry
                           property: "rotation"
                           from: 0
                           to: 360
                           duration: 1000
                           }
                          Image {
                             id: strawberry
                             anchors.fill:parent
                             source: "../Images/Words/strawberry.png"
                           }
                 }

                       AppButton {
                           id:ananas
                           backgroundColor: "indigo"
                              flat: false
                              text: "أناناس"
                               x: 650
                              y: 600
                              onClicked:{
                                  if(ananas.x === 650 )
                                  {
                                    audio2.play()
                                    text = "الاجابة خاطئة"
                                    backgroundColor = "red"
                                    x = 651
                                    y = 601
                                    frawla.x = 251
                                    frawla.y = 601
                                    frawla.backgroundColor = "green"
                                  }

                                }

                              Audio {
                                      id: audio2
                                      source: "../audios/Wrong Buzzer - Sound Effect.mp3"
                                    }
                            }

                        AppButton {
                            id:frawla
                            backgroundColor: "indigo"
                              flat: false
                              text: "فراولة"
                              x: 250
                              y: 600
                              onClicked: {
                                  if(frawla.x === 250 )
                                  {
                                     score = score + 1
                                     audio1.play()
                                     text = "الاجابة صحيحة"
                                     backgroundColor = "green"
                                     x = 251
                                     y = 601
                                     ananas.x = 651
                                     ananas.y = 601
                                     ananas.backgroundColor = "red"
                                    }
                                }
                              Audio {
                                      id: audio1
                                      source: "../audios/Clapping Sound Effects.mp3"
                                    }
                            }
                        AppButton{
                            radius: {50;30;50;30}
                            opacity: .75
                            backgroundColor: "lavenderblush"
                            borderColor: "red"
                            textColor: "black"
                            icon: IconType.longarrowright
                            borderWidth: 3
                            fontBold: true
                            x:800
                            y:350
                            onClicked: {
                                home.navigationStack.push(level25)
                            }
                        }

                        AppButton{
                          radius: {50;30;50;30}
                          opacity: .75
                          backgroundColor: "lavenderblush"
                          borderColor: "red"
                          textColor: "brown"
                          icon: IconType.home
                          borderWidth: 3
                          fontBold: true
                          x:-10
                          y:0
                          onClicked:{
                              score = 0
                              home.navigationStack.push(home)
                      }
                        }

                        Text {
                            id: scores
                            text: "Score: " + score
                            color: "black"
                            x: 900
                            y: 30
                            font.pixelSize: 25
                            font.bold: true
                        }

       }
           }


           Component{
               id: level25

               Page{
                   title:"Choose - اختر"
                        Image {
                            id:backgrond25
                            anchors.fill: parent
                            source:"../Images/Words/children.jpg"
                        }
                       Rectangle{
                           anchors.centerIn: parent
                           width: dp(200)
                           height: dp(200)
                           color: "transparent"
                       NumberAnimation on y {
                           target: tree
                           property: "rotation"
                           from: 0
                           to: 360
                           duration: 1000
                           }
                               Image {
                                 id: tree
                                 anchors.fill:parent

                                 source: "../Images/Words/tree.png"
                               }
                 }
                       AppButton {
                           id:shgra
                           backgroundColor: "indigo"

                              flat: false
                              text: "شجرة"
                               x: 650
                              y: 600
                              onClicked:{
                                  if(shgra.x === 650 ){
                                      score = score + 1
                                      audio1.play()
                                      text = "الاجابة صحيحة"
                                      backgroundColor = "green"
                                      x = 651
                                      y = 601
                                      hfra.x = 251
                                      hfra.y = 601
                                      hfra.backgroundColor = "red"
                                  }
                                }

                              Audio {
                                      id: audio1
                                      source: "../audios/Clapping Sound Effects.mp3"
                                    }
                            }

                        AppButton {
                            id:hfra
                            backgroundColor: "indigo"
                              flat: false
                              text: "حفرة"
                              x: 250
                              y: 600
                              onClicked: {
                                  if(hfra.x === 250 ){
                                      audio2.play()
                                      text = "الاجابة خاطئة"
                                      backgroundColor = "red"
                                      x = 251
                                      y = 601
                                      shgra.x = 651
                                      shgra.y = 601
                                      shgra.backgroundColor = "green"
                                }
                                }
                              Audio {
                                      id: audio2
                                      source: "../audios/Wrong Buzzer - Sound Effect.mp3"
                                    }
                            }
                        AppButton{
                            radius: {50;30;50;30}
                            opacity: .75
                            backgroundColor: "lavenderblush"
                            borderColor: "red"
                            textColor: "black"
                            icon: IconType.longarrowright
                            borderWidth: 3
                            fontBold: true
                            x:800
                            y:350
                            onClicked: {
                                home.navigationStack.push(level26)
                            }
            }

                  AppButton{
                     radius: {50;30;50;30}
                     opacity: .75
                     backgroundColor: "lavenderblush"
                     borderColor: "red"
                     textColor: "brown"
                     icon: IconType.home
                     borderWidth: 3
                     fontBold: true
                     x:-10
                     y:0
                     onClicked: {
                         score = 0
                         home.navigationStack.push(home)
                 }
                  }

                  Text {
                      id: scores
                      text: "Score: " + score
                      color: "black"
                      x: 900
                      y: 30
                      font.pixelSize: 25
                      font.bold: true
                  }

   }

       }


           Component{
               id: level26

               Page{
                   title:"Choose - اختر"

                        Image {
                            id:backgrond26
                            anchors.fill: parent
                            source:"../Images/Words/children.jpg"
                        }
                       Rectangle{
                           anchors.centerIn: parent
                                   width: dp(200)
                                   height: dp(200)
                                   color: "transparent"
                           NumberAnimation on y {
                               target: apple
                               property: "rotation"
                               from: 0
                               to: 360
                               duration: 1000
                               }
                               Image {
                                 id: apple
                                 anchors.fill:parent
                                 source: "../Images/Words/Apple.png"

                               }
                 }

                       AppButton {
                           id:tot
                           backgroundColor: "indigo"
                              flat: false
                              text: "توت"
                               x: 650
                              y: 600
                              onClicked:{
                                  if(tot.x === 650 )
                                  {
                                    audio2.play()
                                    text = "الاجابة خاطئة"
                                    backgroundColor = "red"
                                    x = 651
                                    y = 601
                                    tfah.x = 251
                                    tfah.y = 601
                                    tfah.backgroundColor = "green"
                                  }
                                }

                              Audio {
                                      id: audio2
                                      source: "../audios/Wrong Buzzer - Sound Effect.mp3"
                                    }
                            }

                        AppButton {
                            id:tfah
                            backgroundColor: "indigo"
                              flat: false
                              text: "تفاح"
                              x: 250
                              y: 600
                              onClicked: {
                                  if(tfah.x === 250 )
                                  {
                                     score = score + 1
                                     audio1.play()
                                     text = "الاجابة صحيحة"
                                     backgroundColor = "green"
                                     x = 251
                                     y = 601
                                     tot.x = 651
                                     tot.y = 601
                                     tot.backgroundColor = "red"
                                    }
                                }
                              Audio {
                                      id: audio1
                                      source: "../audios/Clapping Sound Effects.mp3"
                                    }
                            }
                        AppButton{
                            radius: {50;30;50;30}
                            opacity: .75
                            backgroundColor: "lavenderblush"
                            borderColor: "red"
                            textColor: "black"
                            icon: IconType.longarrowright
                            borderWidth: 3
                            fontBold: true
                            x:800
                            y:350
                            onClicked: {
                                home.navigationStack.push(level27)
                            }
                        }


                        AppButton{
                              radius: {50;30;50;30}
                              opacity: .75
                              backgroundColor: "lavenderblush"
                              borderColor: "red"
                              textColor: "brown"
                              icon: IconType.home
                              borderWidth: 3
                              fontBold: true
                              x:-10
                              y:0
                              onClicked: {
                                  score = 0
                                  home.navigationStack.push(home)
                          }
                        }

                        Text {
                            id: scores
                            text: "Score: " + score
                            color: "black"
                            x: 900
                            y: 30
                            font.pixelSize: 25
                            font.bold: true
                        }

       }
           }


           Component{
               id: level27

               Page{
                   title:"Choose - اختر"

                        Image {
                            id:backgrond27
                            anchors.fill: parent
                            source:"../Images/Words/children.jpg"
                        }
                       Rectangle{
                           anchors.centerIn: parent
                           width: dp(200)
                           height: dp(200)
                           color: "transparent"
                           NumberAnimation on y {
                               target: snake
                               property: "rotation"
                               from: 0
                               to: 360
                               duration: 1000
                               }
                           Image {
                             id: snake
                             anchors.fill:parent
                             source: "../Images/Words/Snake.png"
                           }
            }

                       AppButton {
                           id:ankbot
                           backgroundColor: "indigo"
                              flat: false
                              text: "عنكبوت"
                               x: 650
                              y: 600
                              onClicked:{
                                  if(ankbot.x === 650 )
                                  {
                                    audio2.play()
                                    text = "الاجابة خاطئة"
                                    backgroundColor = "red"
                                    x = 651
                                    y = 601
                                    thoaban.x = 251
                                    thoaban.y = 601
                                    thoaban.backgroundColor = "green"
                                  }
                                }

                              Audio {
                                      id: audio2
                                      source: "../audios/Wrong Buzzer - Sound Effect.mp3"
                                    }
                            }

                        AppButton {
                            id:thoaban
                            backgroundColor: "indigo"
                              flat: false
                              text: "ثعبان"
                              x: 250
                              y: 600
                              onClicked: {
                                  if(thoaban.x === 250 )
                                  {
                                     score = score + 1
                                     audio1.play()
                                     text = "الاجابة صحيحة"
                                     backgroundColor = "green"
                                     x = 251
                                     y = 601
                                     ankbot.x = 651
                                     ankbot.y = 601
                                     ankbot.backgroundColor = "red"
                                    }
                                }
                              Audio {
                                      id: audio1
                                      source: "../audios/Clapping Sound Effects.mp3"
                                    }
                            }
                        AppButton{
                            radius: {50;30;50;30}
                            opacity: .75
                            backgroundColor: "lavenderblush"
                            borderColor: "red"
                            textColor: "black"
                            icon: IconType.longarrowright
                            borderWidth: 3
                            fontBold: true
                            x:800
                            y:350
                            onClicked: {
                                home.navigationStack.push(level28)
                            }
                        }

                        AppButton{
                          radius: {50;30;50;30}
                          opacity: .75
                          backgroundColor: "lavenderblush"
                          borderColor: "red"
                          textColor: "brown"
                          icon: IconType.home
                          borderWidth: 3
                          fontBold: true
                          x:-10
                          y:0
                          onClicked: {
                              score = 0
                              home.navigationStack.push(home)
                      }
                        }

                        Text {
                            id: scores
                            text: "Score: " + score
                            color: "black"
                            x: 900
                            y: 30
                            font.pixelSize: 25
                            font.bold: true
                        }

       }
           }


           Component{
               id: level28

               Page{
                   title:"Choose - اختر"
                        Image {
                            id:backgrond28
                            anchors.fill: parent
                            source:"../Images/Words/children.jpg"
                        }
                       Rectangle{
                           anchors.centerIn: parent
                                   width: dp(200)
                                   height: dp(200)
                                   color: "transparent"
                       NumberAnimation on y {
                           target: watermelon
                           property: "rotation"
                           from: 0
                           to: 360
                           duration: 1000
                           }
                       Image {
                         id: watermelon
                         anchors.fill:parent
                         source: "../Images/Words/Watermelon.png"
                       }
                        }
                       AppButton {
                           id:btekh
                           backgroundColor: "indigo"

                              flat: false
                              text: "بطيخ"
                               x: 650
                              y: 600
                              onClicked:{
                                  if(btekh.x === 650 ){
                                      score = score + 1
                                      audio1.play()
                                      text = "الاجابة صحيحة"
                                      backgroundColor = "green"
                                      x = 651
                                      y = 601
                                      khbz.x = 251
                                      khbz.y = 601
                                      khbz.backgroundColor = "red"
                                  }
                                }

                              Audio {
                                      id: audio1
                                      source: "../audios/Clapping Sound Effects.mp3"
                                    }
                            }

                        AppButton {
                            id:khbz
                            backgroundColor: "indigo"
                              flat: false
                              text: "خبز"
                              x: 250
                              y: 600
                              onClicked: {
                                  if(khbz.x === 250 ){
                                      audio2.play()
                                      text = "الاجابة خاطئة"
                                      backgroundColor = "red"
                                      x = 251
                                      y = 601
                                      btekh.x = 651
                                      btekh.y = 601
                                      btekh.backgroundColor = "green"
                                }
                                }
                              Audio {
                                  id: audio2
                                  source: "../audios/Wrong Buzzer - Sound Effect.mp3"
                                    }
                            }
                        AppButton{
                            radius: {50;30;50;30}
                            opacity: .75
                            backgroundColor: "lavenderblush"
                            borderColor: "red"
                            textColor: "black"
                            icon: IconType.longarrowright
                            borderWidth: 3
                            fontBold: true
                            x:800
                            y:350
                            onClicked: {
                                home.navigationStack.push(level29)
                            }
            }
                  AppButton{
                     radius: {50;30;50;30}
                     opacity: .75
                     backgroundColor: "lavenderblush"
                     borderColor: "red"
                     textColor: "brown"
                     icon: IconType.home
                     borderWidth: 3
                     fontBold: true
                     x:-10
                     y:0
                     onClicked:{
                         score = 0
                         home.navigationStack.push(home)
                 }
                  }

                  Text {
                      id: scores
                      text: "Score: " + score
                      color: "black"
                      x: 900
                      y: 30
                      font.pixelSize: 25
                      font.bold: true
                  }

       }

       }

           Component{
               id: level29

               Page{
                   title:"Choose - اختر"

                        Image {
                            id:backgrond29
                            anchors.fill: parent
                            source:"../Images/Words/children.jpg"
                        }
                       Rectangle{
                           anchors.centerIn: parent
                           width: dp(200)
                           height: dp(200)
                            color: "transparent"
                        NumberAnimation on y {
                            target: worm
                            property: "rotation"
                            from: 0
                            to: 360
                            duration: 1000
                            }
                        Image {
                             id: worm
                             anchors.fill:parent
                             source: "../Images/Words/worm.png"
                           }
                       }

                       AppButton {
                           id:nhla
                           backgroundColor: "indigo"
                              flat: false
                              text: "نحلة"
                               x: 650
                              y: 600
                              onClicked:{
                                  if(nhla.x === 650 )
                                  {
                                    audio2.play()
                                    text = "الاجابة خاطئة"
                                    backgroundColor = "red"
                                    x = 651
                                    y = 601
                                    doda.x = 251
                                    doda.y = 601
                                    doda.backgroundColor = "green"
                                  }
                                }

                              Audio {
                                      id: audio2
                                      source: "../audios/Wrong Buzzer - Sound Effect.mp3"
                                    }
                            }

                        AppButton {
                            id:doda
                            backgroundColor: "indigo"
                              flat: false
                              text: "دودة"
                              x: 250
                              y: 600
                              onClicked: {
                                  if(doda.x === 250 )
                                  {
                                     score = score + 1
                                     audio1.play()
                                     text = "الاجابة صحيحة"
                                     backgroundColor = "green"
                                     x = 251
                                     y = 601
                                     nhla.x = 651
                                     nhla.y = 601
                                     nhla.backgroundColor = "red"
                                    }

                                }
                              Audio {
                                      id: audio1
                                      source: "../audios/Clapping Sound Effects.mp3"
                                    }
                            }
                        AppButton{
                            radius: {50;30;50;30}
                            opacity: .75
                            backgroundColor: "lavenderblush"
                            borderColor: "red"
                            textColor: "black"
                            icon: IconType.longarrowright
                            borderWidth: 3
                            fontBold: true
                            x:800
                            y:350
                            onClicked: {
                                home.navigationStack.push(level30)
                            }
                        }

                        AppButton{
                              radius: {50;30;50;30}
                              opacity: .75
                              backgroundColor: "lavenderblush"
                              borderColor: "red"
                              textColor: "brown"
                              icon: IconType.home
                              borderWidth: 3
                              fontBold: true
                              x:-10
                              y:0
                              onClicked: {
                                  score = 0
                                  home.navigationStack.push(home)
                          }
                        }

                        Text {
                            id: scores
                            text: "Score: " + score
                            color: "black"
                            x: 900
                            y: 30
                            font.pixelSize: 25
                            font.bold: true
                        }

               }
           }


           Component{
               id: level30

               Page{
                   title:"Choose - اختر"

                        Image {
                            id:backgrond30
                            anchors.fill: parent
                            source:"../Images/Words/children.jpg"
                        }
                       Rectangle{
                           anchors.centerIn: parent
                                   width: dp(200)
                                   height: dp(200)
                                   color: "transparent"
                           NumberAnimation on y {
                               target: tiger
                               property: "rotation"
                               from: 0
                               to: 360
                               duration: 1000
                               }
                           Image {
                             id: tiger
                             anchors.fill:parent
                             source: "../Images/Words/tiger.png"

                               }
                         }
                      AppButton {
                          id:fel
                           backgroundColor: "indigo"
                              flat: false
                              text: "فيل"
                               x: 650
                              y: 600
                              onClicked:{
                                  if(fel.x === 650 )
                                  {
                                    audio2.play()
                                    text = "الاجابة خاطئة"
                                    backgroundColor = "red"
                                    x = 651
                                    y = 601
                                    nmr.x = 251
                                    nmr.y = 601
                                    nmr.backgroundColor = "green"
                                  }
                              }
                              Audio {
                                      id: audio2
                                      source: "../audios/Wrong Buzzer - Sound Effect.mp3"
                                    }

                            }
                        AppButton {
                            id:nmr
                            backgroundColor: "indigo"
                              flat: false
                              text: "نمر"
                              x: 250
                              y: 600
                              onClicked: {
                                  if(nmr.x === 250 )
                                  {
                                     score = score + 1
                                     audio1.play()
                                     text = "الاجابة صحيحة"
                                     backgroundColor = "green"
                                     x = 251
                                     y = 601
                                     fel.x = 651
                                     fel.y = 601
                                     fel.backgroundColor = "red"
                                    }
                              }
                              Audio {
                                      id: audio1
                                      source: "../audios/Clapping Sound Effects.mp3"
                                    }

                            }
                        AppButton{
                            radius: {50;30;50;30}
                            opacity: .75
                            backgroundColor: "lavenderblush"
                            borderColor: "red"
                            textColor: "black"
                            icon: IconType.longarrowright
                            borderWidth: 3
                            fontBold: true
                            x:800
                            y:350
                            onClicked: {

                                if (score >= 14){
                                    audiow.play()
                                     home.navigationStack.push(level31)
                                }
                                else {
                                    audiol.play()
                                     home.navigationStack.push(level32)
                                }
                            }
                            Audio{
                                id: audiow
                                source:"../audios/Children Yay!   Sound Effect.mp3"
                            }
                            Audio{
                                id: audiol
                                source:"../audios/Fail Sound Effect.mp3"
                            }


                        }

                        AppButton{
                              radius: {50;30;50;30}
                              opacity: .75
                              backgroundColor: "lavenderblush"
                              borderColor: "red"
                              textColor: "brown"
                              icon: IconType.home
                              borderWidth: 3
                              fontBold: true
                              x:-10
                              y:0
                              onClicked:{
                                  score = 0
                                  home.navigationStack.push(home)
                          }
                        }

                        Text {
                            id: scores
                            text: "Score: " + score
                            color: "black"
                            x: 900
                            y: 30
                            font.pixelSize: 25
                            font.bold: true
                        }

                   }
           }


           Component{
               id: level31

               Page{

                        Image {
                            id:backgrond31
                            anchors.fill: parent
                            source:"../Images/Words/children.jpg"
                        }

                        NumberAnimation on y {
                                id: animation2
                                target: tex2
                                property: "rotation"
                                from: 0
                                to: 360
                                duration: 1000
                              }
                        AppText{
                            id: tex2
                            text: "انتهت الأسئلة..أحسنت"
                            x:250
                            y:250
                            font.pixelSize: 50
                            font.bold: true
                            color: "red"
   }
                        NumberAnimation on y {
                                id: animation4
                                target: scor
                                property: "rotation"
                                from: 0
                                to: 360
                                duration: 1000
                        }
                        AppText{
                            id : scor
                            text: "عدد النقاط الصحيحة: " +score
                            x:430
                            y:450
                            font.pixelSize: 40
                            font.bold: true
                            color: "red"
                        }
                        NumberAnimation on y {
                                id: animation3
                                target: tex3
                                property: "rotation"
                                from: 0
                                to: 360
                                duration: 1000
                              }
                        AppText{
                            id: tex3
                            text: "Questions ended..Congrats!"
                            x:180
                            y:350
                            font.pixelSize: 50
                            font.bold: true
                            color: "red"
   }

                        AppButton{
                              radius: {50;30;50;30}
                              opacity: .75
                              backgroundColor: "lavenderblush"
                              borderColor: "red"
                              textColor: "brown"
                              icon: IconType.home
                              borderWidth: 3
                              fontBold: true
                              x:-10
                              y:0
                              onClicked:{
                                  score = 0
                                  home.navigationStack.push(home)
                          }
                 }
          }

           }

           Component{
               id: level32

               Page{

                        Image {
                            id:backgrond32
                            anchors.fill: parent
                            source:"../Images/Words/children.jpg"
                        }

                        NumberAnimation on y {
                                id: animation2
                                target: tex2
                                property: "rotation"
                                from: 0
                                to: 360
                                duration: 1000
                              }
                        AppText{
                            id: tex2
                            text: "انتهت الأسئلة..حاول مرة أخرى!"
                            x:200
                            y:250
                            font.pixelSize: 50
                            font.bold: true
                            color: "red"
   }
                        NumberAnimation on y {
                                id: animation5
                                target: scorl
                                property: "rotation"
                                from: 0
                                to: 360
                                duration: 1000
                        }
                        AppText{
                            id: scorl
                            text: "عدد النقاط الصحيحة: " +score
                            x:430
                            y:450
                            font.pixelSize: 40
                            font.bold: true
                            color: "red"
                        }

                        NumberAnimation on y {
                                id: animation3
                                target: tex3
                                property: "rotation"
                                from: 0
                                to: 360
                                duration: 1000
                              }
                        AppText{
                            id: tex3
                            text: "Questions ended..Try Again!"
                            x:180
                            y:350
                            font.pixelSize: 50
                            font.bold: true
                            color: "red"
   }

                        AppButton{
                              radius: {50;30;50;30}
                              opacity: .75
                              backgroundColor: "lavenderblush"
                              borderColor: "red"
                              textColor: "brown"
                              icon: IconType.home
                              borderWidth: 3
                              fontBold: true
                              x:-10
                              y:0
                              onClicked:{
                                  score = 0
                                  home.navigationStack.push(home)
                          }
                        }
                 }
                  }
        Component{
                   id: t2

               Page{
                   title: "رتّب"

                   Image {
                       id:backgrond
                       anchors.fill: parent
                       source: "../Images/33.jpg"
                   }

                   Rectangle{
                       anchors.centerIn: parent
                               width: dp(200)
                               height: dp(200)
                               color: "transparent"
               Image {
                 id: lion
                 anchors.fill:parent

                 source: "../Images/Words/Lion.png"

              }
             }
                   AppButton {
                     id: alf
                     text: "أ"
                     radius: {25;25;25;25}
                     backgroundColor: "lightgreen"
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 75
                     borderWidth: 3
                     fontBold: true
                     textColor: "black"
                     x:100
                     y:100
                     onClicked:{
                        if(alf.x === 100){
                         scorertb += 1
                         x = 650
                         y = 600
                   }}
       }
                   AppButton {
                     id: sen
                     text: "س"
                     radius: {25;25;25;25}
                     backgroundColor: "lightgreen"
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 75
                     borderWidth: 3
                     fontBold: true
                     textColor: "black"
                     x:800
                     y:100
                     onClicked:{
                         if(alf.x === 650 && sen.x === 800){
                        scorertb += 1
                         x = 450
                         y = 600
                         }
                         else if (alf.x != 650){
                             scorertb -= 1
                             audioerr.play()
                         }
                   }
       }
                   AppButton {
                     text: "د"
                     radius: {25;25;25;25}
                     backgroundColor: "lightgreen"
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 75
                     borderWidth: 3
                     fontBold: true
                     textColor: "black"
                     x:450
                     y:100
                     onClicked:{
                         if(sen.x === 450 && x === 450){
                        scorertb += 1
                         x = 250
                         y = 600
                          audiosuc.play()
                         }
                         else if(sen.x != 450){
                             scorertb -= 1
                             audioerr.play()
                         }
                   }
                     Audio{
                         id:audioerr
                         source: "../audios/Wrong Buzzer - Sound Effect.mp3"
                     }
                     Audio{
                         id:audiosuc
                         source: "../audios/Clapping Sound Effects.mp3"
                     }

       }
                   Text {
                       id: scoring
                       text: "Score: " + scorertb
                       color: "black"
                       x: 900
                       y: 30
                       font.pixelSize: 25
                       font.bold: true
                   }
                   AppButton{
                       radius: {50;30;50;30}
                       opacity: .75
                       backgroundColor: "lavenderblush"
                       borderColor: "red"
                       textColor: "brown"
                       icon: IconType.home
                       borderWidth: 3
                       fontBold: true
                       x:-10
                       y:0
                       onClicked: {
                           scorertb = 0
                           home.navigationStack.push(home)
                   }
                   }
                   AppButton{
                       radius: {50;30;50;30}
                       opacity: .75
                       backgroundColor: "lavenderblush"
                       borderColor: "red"
                       textColor: "black"
                       icon: IconType.longarrowright
                       borderWidth: 3
                       fontBold: true
                       x:800
                       y:350
                       onClicked: {
                           home.navigationStack.push(t3)
                       }
       }
       }
    }
        Component{
                   id: t3

               Page{
                   title: "رتّب"

                   Image {
                       id:backgrond
                       anchors.fill: parent
                       source: "../Images/33.jpg"
                   }

                   Rectangle{
                       anchors.centerIn: parent
                               width: dp(200)
                               height: dp(200)
                               color: "transparent"
               Image {
                 id: dog
                 anchors.fill:parent

                 source: "../Images/Words/dog.png"

              }
             }
                   AppButton {
                     id: kaf
                     text: "ك"
                     radius: {25;25;25;25}
                     backgroundColor: "lightgreen"
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 75
                     borderWidth: 3
                     fontBold: true
                     textColor: "black"
                     x:100
                     y:100
                     onClicked:{
                        if(kaf.x === 100){
                         scorertb += 1
                         x = 650
                         y = 600
                   }}
       }
                   AppButton {
                     id: lam
                     text: "ل"
                     radius: {25;25;25;25}
                     backgroundColor: "lightgreen"
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 75
                     borderWidth: 3
                     fontBold: true
                     textColor: "black"
                     x:800
                     y:100
                     onClicked:{
                         if(kaf.x === 650 && lam.x === 800){
                        scorertb += 1
                         x = 450
                         y = 600
                         }
                         else if (kaf.x != 650){
                             scorertb -= 1
                             audioerr.play()
                         }
                   }
       }
                   AppButton {
                     text: "ب"
                     radius: {25;25;25;25}
                     backgroundColor: "lightgreen"
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 75
                     borderWidth: 3
                     fontBold: true
                     textColor: "black"
                     x:450
                     y:100
                     onClicked:{
                         if(lam.x === 450 && x === 450){
                        scorertb += 1
                         x = 250
                         y = 600
                          audiosuc.play()
                         }
                         else if(lam.x != 450){
                             scorertb -= 1
                             audioerr.play()
                         }
                   }
                     Audio{
                         id:audioerr
                         source: "../audios/Wrong Buzzer - Sound Effect.mp3"
                     }
                     Audio{
                         id:audiosuc
                         source: "../audios/Clapping Sound Effects.mp3"
                     }

       }
                   Text {
                       id: scoring
                       text: "Score: " + scorertb
                       color: "black"
                       x: 900
                       y: 30
                       font.pixelSize: 25
                       font.bold: true
                   }
                   AppButton{
                       radius: {50;30;50;30}
                       opacity: .75
                       backgroundColor: "lavenderblush"
                       borderColor: "red"
                       textColor: "brown"
                       icon: IconType.home
                       borderWidth: 3
                       fontBold: true
                       x:-10
                       y:0
                       onClicked: {
                           scorertb = 0
                           home.navigationStack.push(home)
                   }
                   }
                   AppButton{
                       radius: {50;30;50;30}
                       opacity: .75
                       backgroundColor: "lavenderblush"
                       borderColor: "red"
                       textColor: "black"
                       icon: IconType.longarrowright
                       borderWidth: 3
                       fontBold: true
                       x:800
                       y:350
                       onClicked: {
                           home.navigationStack.push(t4)
                       }
       }
       }
    }
        Component{
                   id: t4

               Page{
                   title: "رتّب"

                   Image {
                       id:backgrond
                       anchors.fill: parent
                       source: "../Images/33.jpg"
                   }

                   Rectangle{
                       anchors.centerIn: parent
                               width: dp(200)
                               height: dp(200)
                               color: "transparent"
               Image {
                 id: grape
                 anchors.fill:parent

                 source: "../Images/Words/grape.png"

              }
             }
                   AppButton {
                     id: en
                     text: "ع"
                     radius: {25;25;25;25}
                     backgroundColor: "lightgreen"
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 75
                     borderWidth: 3
                     fontBold: true
                     textColor: "black"
                     x:100
                     y:100
                     onClicked:{
                        if(en.x === 100){
                         scorertb += 1
                         x = 650
                         y = 600
                   }}
       }
                   AppButton {
                     id: non
                     text: "ن"
                     radius: {25;25;25;25}
                     backgroundColor: "lightgreen"
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 75
                     borderWidth: 3
                     fontBold: true
                     textColor: "black"
                     x:800
                     y:100
                     onClicked:{
                         if(en.x === 650 && non.x === 800){
                        scorertb += 1
                         x = 450
                         y = 600
                         }
                         else if (en.x != 650){
                             scorertb -= 1
                             audioerr.play()
                         }
                   }
       }
                   AppButton {
                     text: "ب"
                     radius: {25;25;25;25}
                     backgroundColor: "lightgreen"
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 75
                     borderWidth: 3
                     fontBold: true
                     textColor: "black"
                     x:450
                     y:100
                     onClicked:{
                         if(non.x === 450 && x === 450){
                        scorertb += 1
                         x = 250
                         y = 600
                          audiosuc.play()
                         }
                         else if(non.x != 450){
                             scorertb -= 1
                             audioerr.play()
                         }
                   }
                     Audio{
                         id:audioerr
                         source: "../audios/Wrong Buzzer - Sound Effect.mp3"
                     }
                     Audio{
                         id:audiosuc
                         source: "../audios/Clapping Sound Effects.mp3"
                     }

       }
                   Text {
                       id: scoring
                       text: "Score: " + scorertb
                       color: "black"
                       x: 900
                       y: 30
                       font.pixelSize: 25
                       font.bold: true
                   }
                   AppButton{
                       radius: {50;30;50;30}
                       opacity: .75
                       backgroundColor: "lavenderblush"
                       borderColor: "red"
                       textColor: "brown"
                       icon: IconType.home
                       borderWidth: 3
                       fontBold: true
                       x:-10
                       y:0
                       onClicked: {
                           scorertb = 0
                           home.navigationStack.push(home)
                   }
                   }
                   AppButton{
                       radius: {50;30;50;30}
                       opacity: .75
                       backgroundColor: "lavenderblush"
                       borderColor: "red"
                       textColor: "black"
                       icon: IconType.longarrowright
                       borderWidth: 3
                       fontBold: true
                       x:800
                       y:350
                       onClicked: {
                           home.navigationStack.push(t5)
                       }
       }
       }
    }
        Component{
                   id: t5

               Page{
                   title: "رتّب"

                   Image {
                       id:backgrond
                       anchors.fill: parent
                       source: "../Images/33.jpg"
                   }

                   Rectangle{
                       anchors.centerIn: parent
                               width: dp(200)
                               height: dp(200)
                               color: "transparent"
               Image {
                 id: hand
                 anchors.fill:parent

                 source: "../Images/Words/hand.png"

              }
             }
                   AppButton {
                     id: ya
                     text: "ي"
                     radius: {25;25;25;25}
                     backgroundColor: "lightgreen"
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 75
                     borderWidth: 3
                     fontBold: true
                     textColor: "black"
                     x:100
                     y:100
                     onClicked:{
                        if(ya.x === 100){
                         scorertb += 1
                         x = 650
                         y = 600
                   }}
       }
                   AppButton {
                     id: dal
                     text: "د"
                     radius: {25;25;25;25}
                     backgroundColor: "lightgreen"
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 75
                     borderWidth: 3
                     fontBold: true
                     textColor: "black"
                     x:800
                     y:100
                     onClicked:{
                         if(ya.x === 650 && dal.x === 800){
                        scorertb += 1
                         x = 450
                         y = 600
                         audiosuc.play()
                         }
                         else if (ya.x != 650){
                             scorertb -= 1
                             audioerr.play()
                         }
                   }
       }
                     Audio{
                         id:audioerr
                         source: "../audios/Wrong Buzzer - Sound Effect.mp3"
                     }
                     Audio{
                         id:audiosuc
                         source: "../audios/Clapping Sound Effects.mp3"
                     }
                   Text {
                       id: scoring
                       text: "Score: " + scorertb
                       color: "black"
                       x: 900
                       y: 30
                       font.pixelSize: 25
                       font.bold: true
                   }
                   AppButton{
                       radius: {50;30;50;30}
                       opacity: .75
                       backgroundColor: "lavenderblush"
                       borderColor: "red"
                       textColor: "brown"
                       icon: IconType.home
                       borderWidth: 3
                       fontBold: true
                       x:-10
                       y:0
                       onClicked: {
                           scorertb = 0
                           home.navigationStack.push(home)
                   }
                   }
                   AppButton{
                       radius: {50;30;50;30}
                       opacity: .75
                       backgroundColor: "lavenderblush"
                       borderColor: "red"
                       textColor: "black"
                       icon: IconType.longarrowright
                       borderWidth: 3
                       fontBold: true
                       x:800
                       y:350
                       onClicked: {
                           home.navigationStack.push(t6)
                       }
       }
       }
    }
        Component{
                   id: t6

               Page{
                   title: "رتّب"

                   Image {
                       id:backgrond
                       anchors.fill: parent
                       source: "../Images/33.jpg"
                   }

                   Rectangle{
                       anchors.centerIn: parent
                               width: dp(200)
                               height: dp(200)
                               color: "transparent"
               Image {
                 id: baby
                 anchors.fill:parent

                 source: "../Images/Words/baby.png"

              }
             }
                   AppButton {
                     id: ta
                     text: "ط"
                     radius: {25;25;25;25}
                     backgroundColor: "lightgreen"
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 75
                     borderWidth: 3
                     fontBold: true
                     textColor: "black"
                     x:100
                     y:100
                     onClicked:{
                        if(ta.x === 100){
                         scorertb += 1
                         x = 650
                         y = 600
                   }}
       }
                   AppButton {
                     id: fa
                     text: "ف"
                     radius: {25;25;25;25}
                     backgroundColor: "lightgreen"
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 75
                     borderWidth: 3
                     fontBold: true
                     textColor: "black"
                     x:800
                     y:100
                     onClicked:{
                         if(ta.x === 650 && fa.x === 800){
                        scorertb += 1
                         x = 450
                         y = 600
                         }
                         else if (ta.x != 650){
                             scorertb -= 1
                             audioerr.play()
                         }
                   }
       }
                   AppButton {
                     text: "ل"
                     radius: {25;25;25;25}
                     backgroundColor: "lightgreen"
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 75
                     borderWidth: 3
                     fontBold: true
                     textColor: "black"
                     x:450
                     y:100
                     onClicked:{
                         if(fa.x === 450 && x === 450){
                        scorertb += 1
                         x = 250
                         y = 600
                          audiosuc.play()
                         }
                         else if(fa.x != 450){
                             scorertb -= 1
                             audioerr.play()
                         }
                   }
                     Audio{
                         id:audioerr
                         source: "../audios/Wrong Buzzer - Sound Effect.mp3"
                     }
                     Audio{
                         id:audiosuc
                         source: "../audios/Clapping Sound Effects.mp3"
                     }

       }
                   Text {
                       id: scoring
                       text: "Score: " + scorertb
                       color: "black"
                       x: 900
                       y: 30
                       font.pixelSize: 25
                       font.bold: true
                   }
                   AppButton{
                       radius: {50;30;50;30}
                       opacity: .75
                       backgroundColor: "lavenderblush"
                       borderColor: "red"
                       textColor: "brown"
                       icon: IconType.home
                       borderWidth: 3
                       fontBold: true
                       x:-10
                       y:0
                       onClicked: {
                           scorertb = 0
                           home.navigationStack.push(home)
                   }
                   }
                   AppButton{
                       radius: {50;30;50;30}
                       opacity: .75
                       backgroundColor: "lavenderblush"
                       borderColor: "red"
                       textColor: "black"
                       icon: IconType.longarrowright
                       borderWidth: 3
                       fontBold: true
                       x:800
                       y:350
                       onClicked: {
                           home.navigationStack.push(t7)
                       }
       }
       }
    }
        Component{
                   id: t7

               Page{
                   title: "رتّب"

                   Image {
                       id:backgrond
                       anchors.fill: parent
                       source: "../Images/33.jpg"
                   }

                   Rectangle{
                       anchors.centerIn: parent
                               width: dp(200)
                               height: dp(200)
                               color: "transparent"
               Image {
                 id: banana
                 anchors.fill:parent

                 source: "../Images/Words/banana.png"

              }
             }
                   AppButton {
                     id: mem
                     text: "م"
                     radius: {25;25;25;25}
                     backgroundColor: "lightgreen"
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 75
                     borderWidth: 3
                     fontBold: true
                     textColor: "black"
                     x:100
                     y:100
                     onClicked:{
                        if(mem.x === 100){
                         scorertb += 1
                         x = 650
                         y = 600
                   }}
       }
                   AppButton {
                     id: wow
                     text: "و"
                     radius: {25;25;25;25}
                     backgroundColor: "lightgreen"
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 75
                     borderWidth: 3
                     fontBold: true
                     textColor: "black"
                     x:800
                     y:100
                     onClicked:{
                         if(mem.x === 650 && wow.x === 800){
                        scorertb += 1
                         x = 450
                         y = 600
                         }
                         else if (mem.x != 650){
                             scorertb -= 1
                             audioerr.play()
                         }
                   }
       }
                   AppButton {
                     text: "ز"
                     radius: {25;25;25;25}
                     backgroundColor: "lightgreen"
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 75
                     borderWidth: 3
                     fontBold: true
                     textColor: "black"
                     x:450
                     y:100
                     onClicked:{
                         if(wow.x === 450 && x === 450){
                        scorertb += 1
                         x = 250
                         y = 600
                          audiosuc.play()
                         }
                         else if(wow.x != 450){
                             scorertb -= 1
                             audioerr.play()
                         }
                   }
                     Audio{
                         id:audioerr
                         source: "../audios/Wrong Buzzer - Sound Effect.mp3"
                     }
                     Audio{
                         id:audiosuc
                         source: "../audios/Clapping Sound Effects.mp3"
                     }

       }
                   Text {
                       id: scoring
                       text: "Score: " + scorertb
                       color: "black"
                       x: 900
                       y: 30
                       font.pixelSize: 25
                       font.bold: true
                   }
                   AppButton{
                       radius: {50;30;50;30}
                       opacity: .75
                       backgroundColor: "lavenderblush"
                       borderColor: "red"
                       textColor: "brown"
                       icon: IconType.home
                       borderWidth: 3
                       fontBold: true
                       x:-10
                       y:0
                       onClicked: {
                           scorertb = 0
                           home.navigationStack.push(home)
                   }
                   }
                   AppButton{
                       radius: {50;30;50;30}
                       opacity: .75
                       backgroundColor: "lavenderblush"
                       borderColor: "red"
                       textColor: "black"
                       icon: IconType.longarrowright
                       borderWidth: 3
                       fontBold: true
                       x:800
                       y:350
                       onClicked: {
                           home.navigationStack.push(t8)
                       }
       }
       }
    }
        Component{
                   id: t8

               Page{
                   title: "رتّب"

                   Image {
                       id:backgrond
                       anchors.fill: parent
                       source: "../Images/33.jpg"
                   }

                   Rectangle{
                       anchors.centerIn: parent
                               width: dp(200)
                               height: dp(200)
                               color: "transparent"
               Image {
                 id: camel
                 anchors.fill:parent

                 source: "../Images/Words/camel.png"

              }
             }
                   AppButton {
                     id: gem
                     text: "ج"
                     radius: {25;25;25;25}
                     backgroundColor: "lightgreen"
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 75
                     borderWidth: 3
                     fontBold: true
                     textColor: "black"
                     x:100
                     y:100
                     onClicked:{
                        if(gem.x === 100){
                         scorertb += 1
                         x = 650
                         y = 600
                   }}
       }
                   AppButton {
                     id: mem1
                     text: "م"
                     radius: {25;25;25;25}
                     backgroundColor: "lightgreen"
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 75
                     borderWidth: 3
                     fontBold: true
                     textColor: "black"
                     x:800
                     y:100
                     onClicked:{
                         if(gem.x === 650 && mem1.x === 800){
                        scorertb += 1
                         x = 450
                         y = 600
                         }
                         else if (gem.x != 650){
                             scorertb -= 1
                             audioerr.play()
                         }
                   }
       }
                   AppButton {
                     text: "ل"
                     radius: {25;25;25;25}
                     backgroundColor: "lightgreen"
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 75
                     borderWidth: 3
                     fontBold: true
                     textColor: "black"
                     x:450
                     y:100
                     onClicked:{
                         if(mem1.x === 450 && x === 450){
                        scorertb += 1
                         x = 250
                         y = 600
                          audiosuc.play()
                         }
                         else if(mem1.x != 450){
                             scorertb -= 1
                             audioerr.play()
                         }
                   }
                     Audio{
                         id:audioerr
                         source: "../audios/Wrong Buzzer - Sound Effect.mp3"
                     }
                     Audio{
                         id:audiosuc
                         source: "../audios/Clapping Sound Effects.mp3"
                     }

       }
                   Text {
                       id: scoring
                       text: "Score: " + scorertb
                       color: "black"
                       x: 900
                       y: 30
                       font.pixelSize: 25
                       font.bold: true
                   }
                   AppButton{
                       radius: {50;30;50;30}
                       opacity: .75
                       backgroundColor: "lavenderblush"
                       borderColor: "red"
                       textColor: "brown"
                       icon: IconType.home
                       borderWidth: 3
                       fontBold: true
                       x:-10
                       y:0
                       onClicked: {
                           scorertb = 0
                           home.navigationStack.push(home)
                   }
                   }
                   AppButton{
                       radius: {50;30;50;30}
                       opacity: .75
                       backgroundColor: "lavenderblush"
                       borderColor: "red"
                       textColor: "black"
                       icon: IconType.longarrowright
                       borderWidth: 3
                       fontBold: true
                       x:800
                       y:350
                       onClicked: {
                           home.navigationStack.push(t9)
                       }
       }
       }
    }
        Component{
                   id: t9

               Page{
                   title: "رتّب"

                   Image {
                       id:backgrond
                       anchors.fill: parent
                       source: "../Images/33.jpg"
                   }

                   Rectangle{
                       anchors.centerIn: parent
                               width: dp(200)
                               height: dp(200)
                               color: "transparent"
               Image {
                 id: cat
                 anchors.fill:parent

                 source: "../Images/Words/cat.png"

              }
             }
                   AppButton {
                     id: qaf
                     text: "ق"
                     radius: {25;25;25;25}
                     backgroundColor: "lightgreen"
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 75
                     borderWidth: 3
                     fontBold: true
                     textColor: "black"
                     x:100
                     y:100
                     onClicked:{
                        if(qaf.x === 100){
                         scorertb += 1
                         x = 650
                         y = 600
                   }}
       }
                   AppButton {
                     id: ta1
                     text: "ط"
                     radius: {25;25;25;25}
                     backgroundColor: "lightgreen"
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 75
                     borderWidth: 3
                     fontBold: true
                     textColor: "black"
                     x:800
                     y:100
                     onClicked:{
                         if(qaf.x === 650 && ta1.x === 800){
                        scorertb += 1
                         x = 450
                         y = 600
                         }
                         else if (qaf.x != 650){
                             scorertb -= 1
                             audioerr.play()
                         }
                   }
       }
                   AppButton {
                     text: "ة"
                     radius: {25;25;25;25}
                     backgroundColor: "lightgreen"
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 75
                     borderWidth: 3
                     fontBold: true
                     textColor: "black"
                     x:450
                     y:100
                     onClicked:{
                         if(ta1.x === 450 && x === 450){
                        scorertb += 1
                         x = 250
                         y = 600
                          audiosuc.play()
                         }
                         else if(ta1.x != 450){
                             scorertb -= 1
                             audioerr.play()
                         }
                   }
                     Audio{
                         id:audioerr
                         source: "../audios/Wrong Buzzer - Sound Effect.mp3"
                     }
                     Audio{
                         id:audiosuc
                         source: "../audios/Clapping Sound Effects.mp3"
                     }

       }
                   Text {
                       id: scoring
                       text: "Score: " + scorertb
                       color: "black"
                       x: 900
                       y: 30
                       font.pixelSize: 25
                       font.bold: true
                   }
                   AppButton{
                       radius: {50;30;50;30}
                       opacity: .75
                       backgroundColor: "lavenderblush"
                       borderColor: "red"
                       textColor: "brown"
                       icon: IconType.home
                       borderWidth: 3
                       fontBold: true
                       x:-10
                       y:0
                       onClicked: {
                           scorertb = 0
                           home.navigationStack.push(home)
                   }
                   }
                   AppButton{
                       radius: {50;30;50;30}
                       opacity: .75
                       backgroundColor: "lavenderblush"
                       borderColor: "red"
                       textColor: "black"
                       icon: IconType.longarrowright
                       borderWidth: 3
                       fontBold: true
                       x:800
                       y:350
                       onClicked: {
                           home.navigationStack.push(t10)
                       }
       }
       }
    }
        Component{
                   id: t10

               Page{
                   title: "رتّب"

                   Image {
                       id:backgrond
                       anchors.fill: parent
                       source: "../Images/33.jpg"
                   }

                   Rectangle{
                       anchors.centerIn: parent
                               width: dp(200)
                               height: dp(200)
                               color: "transparent"
               Image {
                 id: corn
                 anchors.fill:parent

                 source: "../Images/Words/corn.png"

              }
             }
                   AppButton {
                     id: zal
                     text: "ذ"
                     radius: {25;25;25;25}
                     backgroundColor: "lightgreen"
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 75
                     borderWidth: 3
                     fontBold: true
                     textColor: "black"
                     x:100
                     y:100
                     onClicked:{
                        if(zal.x === 100){
                         scorertb += 1
                         x = 650
                         y = 600
                   }}
       }
                   AppButton {
                     id: ra
                     text: "ر"
                     radius: {25;25;25;25}
                     backgroundColor: "lightgreen"
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 75
                     borderWidth: 3
                     fontBold: true
                     textColor: "black"
                     x:800
                     y:100
                     onClicked:{
                         if(zal.x === 650 && ra.x === 800){
                        scorertb += 1
                         x = 450
                         y = 600
                         }
                         else if (zal.x != 650){
                             scorertb -= 1
                             audioerr.play()
                         }
                   }
       }
                   AppButton {
                     text: "ة"
                     radius: {25;25;25;25}
                     backgroundColor: "lightgreen"
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 75
                     borderWidth: 3
                     fontBold: true
                     textColor: "black"
                     x:450
                     y:100
                     onClicked:{
                         if(ra.x === 450 && x === 450){
                        scorertb += 1
                         x = 250
                         y = 600
                          audiosuc.play()
                         }
                         else if(ra.x != 450){
                             scorertb -= 1
                             audioerr.play()
                         }
                   }
                     Audio{
                         id:audioerr
                         source: "../audios/Wrong Buzzer - Sound Effect.mp3"
                     }
                     Audio{
                         id:audiosuc
                         source: "../audios/Clapping Sound Effects.mp3"
                     }

       }
                   Text {
                       id: scoring
                       text: "Score: " + scorertb
                       color: "black"
                       x: 900
                       y: 30
                       font.pixelSize: 25
                       font.bold: true
                   }
                   AppButton{
                       radius: {50;30;50;30}
                       opacity: .75
                       backgroundColor: "lavenderblush"
                       borderColor: "red"
                       textColor: "brown"
                       icon: IconType.home
                       borderWidth: 3
                       fontBold: true
                       x:-10
                       y:0
                       onClicked: {
                           scorertb = 0
                           home.navigationStack.push(home)
                   }
                   }
                   AppButton{
                       radius: {50;30;50;30}
                       opacity: .75
                       backgroundColor: "lavenderblush"
                       borderColor: "red"
                       textColor: "black"
                       icon: IconType.longarrowright
                       borderWidth: 3
                       fontBold: true
                       x:800
                       y:350
                       onClicked: {
                           home.navigationStack.push(t11)
                       }
       }
       }
    }
        Component{
                   id: t11

               Page{
                   title: "رتّب"

                   Image {
                       id:backgrond
                       anchors.fill: parent
                       source: "../Images/33.jpg"
                   }

                   Rectangle{
                       anchors.centerIn: parent
                               width: dp(200)
                               height: dp(200)
                               color: "transparent"
               Image {
                 id: letter
                 anchors.fill:parent

                 source: "../Images/Words/letter.png"

              }
             }
                   AppButton {
                     id: za
                     text: "ظ"
                     radius: {25;25;25;25}
                     backgroundColor: "lightgreen"
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 75
                     borderWidth: 3
                     fontBold: true
                     textColor: "black"
                     x:100
                     y:100
                     onClicked:{
                        if(za.x === 100){
                         scorertb += 1
                         x = 650
                         y = 600
                   }}
       }
                   AppButton {
                     id: ra1
                     text: "ر"
                     radius: {25;25;25;25}
                     backgroundColor: "lightgreen"
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 75
                     borderWidth: 3
                     fontBold: true
                     textColor: "black"
                     x:800
                     y:100
                     onClicked:{
                         if(za.x === 650 && ra1.x === 800){
                        scorertb += 1
                         x = 450
                         y = 600
                         }
                         else if (za.x != 650){
                             scorertb -= 1
                             audioerr.play()
                         }
                   }
       }
                   AppButton {
                     text: "ف"
                     radius: {25;25;25;25}
                     backgroundColor: "lightgreen"
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 75
                     borderWidth: 3
                     fontBold: true
                     textColor: "black"
                     x:450
                     y:100
                     onClicked:{
                         if(ra1.x === 450 && x === 450){
                        scorertb += 1
                         x = 250
                         y = 600
                          audiosuc.play()
                         }
                         else if(ra1.x != 450){
                             scorertb -= 1
                             audioerr.play()
                         }
                   }
                     Audio{
                         id:audioerr
                         source: "../audios/Wrong Buzzer - Sound Effect.mp3"
                     }
                     Audio{
                         id:audiosuc
                         source: "../audios/Clapping Sound Effects.mp3"
                     }

       }
                   Text {
                       id: scoring
                       text: "Score: " + scorertb
                       color: "black"
                       x: 900
                       y: 30
                       font.pixelSize: 25
                       font.bold: true
                   }
                   AppButton{
                       radius: {50;30;50;30}
                       opacity: .75
                       backgroundColor: "lavenderblush"
                       borderColor: "red"
                       textColor: "brown"
                       icon: IconType.home
                       borderWidth: 3
                       fontBold: true
                       x:-10
                       y:0
                       onClicked: {
                           scorertb = 0
                           home.navigationStack.push(home)
                   }
                   }
                   AppButton{
                       radius: {50;30;50;30}
                       opacity: .75
                       backgroundColor: "lavenderblush"
                       borderColor: "red"
                       textColor: "black"
                       icon: IconType.longarrowright
                       borderWidth: 3
                       fontBold: true
                       x:800
                       y:350
                       onClicked: {
                           home.navigationStack.push(t12)
                       }
       }
       }
    }
        Component{
                   id: t12

               Page{
                   title: "رتّب"

                   Image {
                       id:backgrond
                       anchors.fill: parent
                       source: "../Images/33.jpg"
                   }

                   Rectangle{
                       anchors.centerIn: parent
                               width: dp(200)
                               height: dp(200)
                               color: "transparent"
               Image {
                 id: plate
                 anchors.fill:parent

                 source: "../Images/Words/plate.png"

              }
             }
                   AppButton {
                     id: sad
                     text: "ص"
                     radius: {25;25;25;25}
                     backgroundColor: "lightgreen"
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 75
                     borderWidth: 3
                     fontBold: true
                     textColor: "black"
                     x:100
                     y:100
                     onClicked:{
                        if(sad.x === 100){
                         scorertb += 1
                         x = 650
                         y = 600
                   }}
       }
                   AppButton {
                     id: ha
                     text: "ح"
                     radius: {25;25;25;25}
                     backgroundColor: "lightgreen"
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 75
                     borderWidth: 3
                     fontBold: true
                     textColor: "black"
                     x:800
                     y:100
                     onClicked:{
                         if(sad.x === 650 && ha.x === 800){
                        scorertb += 1
                         x = 450
                         y = 600
                         }
                         else if (sad.x != 650){
                             scorertb -= 1
                             audioerr.play()
                         }
                   }
       }
                   AppButton {
                     text: "ن"
                     radius: {25;25;25;25}
                     backgroundColor: "lightgreen"
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 75
                     borderWidth: 3
                     fontBold: true
                     textColor: "black"
                     x:450
                     y:100
                     onClicked:{
                         if(ha.x === 450 && x === 450){
                        scorertb += 1
                         x = 250
                         y = 600
                          audiosuc.play()
                         }
                         else if(ha.x != 450){
                             scorertb -= 1
                             audioerr.play()
                         }
                   }
                     Audio{
                         id:audioerr
                         source: "../audios/Wrong Buzzer - Sound Effect.mp3"
                     }
                     Audio{
                         id:audiosuc
                         source: "../audios/Clapping Sound Effects.mp3"
                     }

       }
                   Text {
                       id: scoring
                       text: "Score: " + scorertb
                       color: "black"
                       x: 900
                       y: 30
                       font.pixelSize: 25
                       font.bold: true
                   }
                   AppButton{
                       radius: {50;30;50;30}
                       opacity: .75
                       backgroundColor: "lavenderblush"
                       borderColor: "red"
                       textColor: "brown"
                       icon: IconType.home
                       borderWidth: 3
                       fontBold: true
                       x:-10
                       y:0
                       onClicked: {
                           scorertb = 0
                           home.navigationStack.push(home)
                   }
                   }
                   AppButton{
                       radius: {50;30;50;30}
                       opacity: .75
                       backgroundColor: "lavenderblush"
                       borderColor: "red"
                       textColor: "black"
                       icon: IconType.longarrowright
                       borderWidth: 3
                       fontBold: true
                       x:800
                       y:350
                       onClicked: {
                           home.navigationStack.push(t13)
                       }
       }
       }
    }
        Component{
                   id: t13

               Page{
                   title: "رتّب"

                   Image {
                       id:backgrond
                       anchors.fill: parent
                       source: "../Images/33.jpg"
                   }

                   Rectangle{
                       anchors.centerIn: parent
                               width: dp(200)
                               height: dp(200)
                               color: "transparent"
               Image {
                 id: tiger
                 anchors.fill:parent

                 source: "../Images/Words/tiger.png"

              }
             }
                   AppButton {
                     id: non1
                     text: "ن"
                     radius: {25;25;25;25}
                     backgroundColor: "lightgreen"
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 75
                     borderWidth: 3
                     fontBold: true
                     textColor: "black"
                     x:100
                     y:100
                     onClicked:{
                        if(non1.x === 100){
                         scorertb += 1
                         x = 650
                         y = 600
                   }}
       }
                   AppButton {
                     id: mem2
                     text: "م"
                     radius: {25;25;25;25}
                     backgroundColor: "lightgreen"
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 75
                     borderWidth: 3
                     fontBold: true
                     textColor: "black"
                     x:800
                     y:100
                     onClicked:{
                         if(non1.x === 650 && mem2.x === 800){
                        scorertb += 1
                         x = 450
                         y = 600
                         }
                         else if (non1.x != 650){
                             scorertb -= 1
                             audioerr.play()
                         }
                   }
       }
                   AppButton {
                     text: "ر"
                     radius: {25;25;25;25}
                     backgroundColor: "lightgreen"
                     opacity: .75
                     fontFamily: "arial"
                     textSize: 75
                     borderWidth: 3
                     fontBold: true
                     textColor: "black"
                     x:450
                     y:100
                     onClicked:{
                         if(mem2.x === 450 && x === 450){
                        scorertb += 1
                         x = 250
                         y = 600
                          audiosuc.play()
                         }
                         else if(mem2.x != 450){
                             scorertb -= 1
                             audioerr.play()
                         }
                   }
                     Audio{
                         id:audioerr
                         source: "../audios/Wrong Buzzer - Sound Effect.mp3"
                     }
                     Audio{
                         id:audiosuc
                         source: "../audios/Clapping Sound Effects.mp3"
                     }

       }
                   Text {
                       id: scoring
                       text: "Score: " + scorertb
                       color: "black"
                       x: 900
                       y: 30
                       font.pixelSize: 25
                       font.bold: true
                   }
                   AppButton{
                       radius: {50;30;50;30}
                       opacity: .75
                       backgroundColor: "lavenderblush"
                       borderColor: "red"
                       textColor: "brown"
                       icon: IconType.home
                       borderWidth: 3
                       fontBold: true
                       x:-10
                       y:0
                       onClicked: {
                           scorertb = 0
                           home.navigationStack.push(home)
                   }
                   }
                   AppButton{
                       radius: {50;30;50;30}
                       opacity: .75
                       backgroundColor: "lavenderblush"
                       borderColor: "red"
                       textColor: "black"
                       icon: IconType.longarrowright
                       borderWidth: 3
                       fontBold: true
                       x:800
                       y:350
                       onClicked: {
                           if(scorertb >= 17){
                           home.navigationStack.push(suc)
                               audiosucss.play()
                           }
                           else{
                               home.navigationStack.push(fail)
                               audiofail.play()
                           }
                       }
       }
                   Audio{
                       id: audiosucss
                       source: "../audios/Children Yay!   Sound Effect.mp3"
                   }
                   Audio{
                       id: audiofail
                       source: "../audios/Fail Sound Effect.mp3"
                   }
       }
    }
        Component{
            id: suc

            Page{

                     Image {
                         id:backgrond31
                         anchors.fill: parent
                         source:"../Images/33.jpg"
                     }

                     NumberAnimation on y {
                             id: animation2
                             target: tex22
                             property: "rotation"
                             from: 0
                             to: 360
                             duration: 1000
                           }
                     AppText{
                         id: tex22
                         text: "انتهت الأسئلة..أحسنت"
                         x:250
                         y:250
                         font.pixelSize: 50
                         font.bold: true
                         color: "red"
}
                     NumberAnimation on y {
                             id: animation4
                             target: scorf
                             property: "rotation"
                             from: 0
                             to: 360
                             duration: 1000
                     }
                     AppText{
                         id : scorf
                         text: "عدد النقاط الصحيحة: " +scorertb
                         x:430
                         y:450
                         font.pixelSize: 40
                         font.bold: true
                         color: "red"
                     }
                     NumberAnimation on y {
                             id: animation32
                             target: tex32
                             property: "rotation"
                             from: 0
                             to: 360
                             duration: 1000
                           }
                     AppText{
                         id: tex32
                         text: "Questions ended..Congrats!"
                         x:180
                         y:350
                         font.pixelSize: 50
                         font.bold: true
                         color: "red"
}

                     AppButton{
                           radius: {50;30;50;30}
                           opacity: .75
                           backgroundColor: "lavenderblush"
                           borderColor: "red"
                           textColor: "brown"
                           icon: IconType.home
                           borderWidth: 3
                           fontBold: true
                           x:-10
                           y:0
                           onClicked:{
                               scorertb = 0
                               home.navigationStack.push(home)
                       }
              }
       }

        }

        Component{
            id: fail

            Page{

                     Image {
                         id:backgrond32
                         anchors.fill: parent
                         source:"../Images/33.jpg"
                     }

                     NumberAnimation on y {
                             id: animation21
                             target: tex21
                             property: "rotation"
                             from: 0
                             to: 360
                             duration: 1000
                           }
                     AppText{
                         id: tex21
                         text: "انتهت الأسئلة..حاول مرة أخرى!"
                         x:200
                         y:250
                         font.pixelSize: 50
                         font.bold: true
                         color: "red"
}
                     NumberAnimation on y {
                             id: animation51
                             target: scorr
                             property: "rotation"
                             from: 0
                             to: 360
                             duration: 1000
                     }
                     AppText{
                         id: scorr
                         text: "عدد النقاط الصحيحة: " +scorertb
                         x:430
                         y:450
                         font.pixelSize: 40
                         font.bold: true
                         color: "red"
                     }

                     NumberAnimation on y {
                             id: animation31
                             target: tex31
                             property: "rotation"
                             from: 0
                             to: 360
                             duration: 1000
                           }
                     AppText{
                         id: tex31
                         text: "Questions ended..Try Again!"
                         x:180
                         y:350
                         font.pixelSize: 50
                         font.bold: true
                         color: "red"
}

                     AppButton{
                           radius: {50;30;50;30}
                           opacity: .75
                           backgroundColor: "lavenderblush"
                           borderColor: "red"
                           textColor: "brown"
                           icon: IconType.home
                           borderWidth: 3
                           fontBold: true
                           x:-10
                           y:0
                           onClicked:{
                               scorertb = 0
                               home.navigationStack.push(home)
                       }
                     }
              }
       }

}
