import QtQuick 2.0
import Sailfish.Silica 1.0

// Just a simple example to demo both property binding and doing something via pulley menu action
// to provide a sample of Sailfish-specific UI testing
Page {
    id: serviceListPage
    SilicaListView {
        id: serviceListView
	width: serviceListPage.width
	height: serviceListPage.height
	model: serviceModel
	delegate: ListItem {
		width: ListView.view.width
		height: serviceListRow.height
		onClicked: {
			pageStack.push(serviceDetail, { item: serviceModel.get(index) })
		}
		Row {
			id: serviceListRow
			height: serviceListSwitch.height
			spacing: Theme.paddingSmall
			TextSwitch {
				id: serviceListSwitch
				text: service
				checked: ( status == 1 )
				description: ( status == 1 ? "started" : "stopped" )
				onCheckedChanged: {
					description=(checked ? "started" : "stopped")
				}
			}
		}
	}
    }
}
