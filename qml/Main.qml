/*
 * Copyright (C) 2013 Robert Ancell <robert.ancell@gmail.com>
 * Copyright (C) 2017 Brian Douglass <bhdouglass@gmail.com>
 *
 * This program is free software: you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation, either version 3 of the License, or (at your option) any later
 * version. See http://www.gnu.org/copyleft/gpl.html the full text of the
 * license.
 */

import QtQuick 2.4
import Ubuntu.Components 1.3

MainView {
    applicationName: "animal-farm.bhdouglass"
    automaticOrientation: true
    width: units.gu (40)
    height: units.gu (71)

    id: app

    Page {
        anchors.fill: parent

        header: PageHeader {
            visible: false
        }

        id: wrapper
        property int n_columns: height > width ? 2 : 3
        property int n_rows: height > width ? 3 : 2
        property int button_size: Math.min (width / n_columns, height / n_rows) * 0.9
        property int button_radius: 10
        property int button_xspacing: (width - button_size * n_columns) / (n_columns + 1)
        property int button_yspacing: (height - button_size * n_rows) / (n_rows + 1)

        Grid {
            x: wrapper.button_xspacing
            y: wrapper.button_yspacing
            columns: wrapper.n_columns
            rows: wrapper.n_rows

            columnSpacing: wrapper.button_xspacing
            rowSpacing: wrapper.button_yspacing

            AnimalButton {
                width: wrapper.button_size
                height: wrapper.button_size
                radius: wrapper.button_radius
                color: "#fce94f"
                imageSource: "../assets/cat.png"
                soundSource: "../assets/cat.ogg"
            }

            AnimalButton {
                width: wrapper.button_size
                height: wrapper.button_size
                radius: wrapper.button_radius
                color: "#8ae234"
                imageSource: "../assets/dog.png"
                soundSource: "../assets/dog.ogg"
            }

            AnimalButton {
                width: wrapper.button_size
                height: wrapper.button_size
                radius: wrapper.button_radius
                color: "#729fcf"
                imageSource: "../assets/sheep.png"
                soundSource: "../assets/sheep.ogg"
            }

            AnimalButton {
                width: wrapper.button_size
                height: wrapper.button_size
                radius: wrapper.button_radius
                color: "#e9b96e"
                imageSource: "../assets/goat.png"
                soundSource: "../assets/goat.ogg"
            }

            AnimalButton {
                width: wrapper.button_size
                height: wrapper.button_size
                radius: wrapper.button_radius
                color: "#fcaf3e"
                imageSource: "../assets/elephant.png"
                soundSource: "../assets/elephant.ogg"
            }

            AnimalButton {
                width: wrapper.button_size
                height: wrapper.button_size
                radius: wrapper.button_radius
                color: "#ad7fa8"
                imageSource: "../assets/cow.png"
                soundSource: "../assets/cow.ogg"
            }
        }
    }
}
