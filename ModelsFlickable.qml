import QtQuick 2.15
import QtQuick.Controls 2.15

Flickable {
	width: 500
	height: 625
	ModelImage {
		anchors.fill: parent
		modelMouseArea.onClicked: modelDialog.open()
	}
}
