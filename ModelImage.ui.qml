import QtQuick 2.15
import QtQuick.Controls 2.15

Image {
	property alias modelMouseArea: mouseArea
	property alias modelDialog: dialog

	source: "http://webdesign-finder.com/ubella/wp-content/uploads/2018/10/"
		+ "model_img_13-500x625.jpg"
	width: 500
	height: 625

	MouseArea {
		id: mouseArea
		anchors.fill: parent
	}

	FontLoader {
		id: vidaloka
		name: "Vidaloka"
		source: "Vidaloka/Vidaloka-Regular.ttf"
	}

	Dialog {
		id: dialog
		width: parent.width
		height: 187
		y: parent.height - height
		padding: 0
		background: Rectangle {
			color: "transparent"
		}

		header: DialogButtonBox {
			alignment: Qt.AlignVCenter
			background: Rectangle {
				color: "transparent"
			}
			Button {
				id: button
				text: "Helen"
				font {
					family: vidaloka
					pixelSize: 40
				}
				contentItem: Text {
					text: button.text
					font: button.font
					color: "white"
					horizontalAlignment: Text.AlignHCenter
				}
				background: Rectangle {
					color: "transparent"
				}
				DialogButtonBox.buttonRole
					: DialogButtonBox.AcceptRole
			}
		}

		Rectangle {
			anchors.fill: parent
		}
	}
}
