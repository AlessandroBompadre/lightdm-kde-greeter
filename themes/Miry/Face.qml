/*
This file is part of LightDM-KDE.

Copyright 2011, 2012 David Edmundson <kde@davidedmundson.co.uk>
Copyright 2013 Harald Sitter <sitter@kde.org>

LightDM-KDE is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

LightDM-KDE is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with LightDM-KDE.  If not, see <http://www.gnu.org/licenses/>.
*/
import QtQuick 1.0

Image {
    height: width

    property bool active: false

    onActiveChanged: (active)
                     ? frame.source = "img/avatar-frame-glow.png"
                     : frame.source = "img/avatar-frame.png"

    Image {
        id: frame
        source: "img/avatar-frame.png"
        anchors.centerIn: parent
    }
}
