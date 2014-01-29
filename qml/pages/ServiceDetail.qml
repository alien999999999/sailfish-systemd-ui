import QtQuick 2.0
import Sailfish.Silica 1.0

// Just a simple example to demo both property binding and doing something via pulley menu action
// to provide a sample of Sailfish-specific UI testing
Page {
    id: serviceDetailPage
    property variant item: null
    SilicaFlickable {
        Column {
		width: serviceDetailPage.width
		PageHeader {
			id: serviceDetailTitle
			title: item.service + " service"
		}
		TextSwitch {
			id: serviceDetailStatus
			text: ( item.status == 1 ? "started" : "stopped" )
			checked: ( item.status == 1 )
			onCheckedChanged: {
				text=(checked ? "started" : "stopped")
			}
		}
		TextSwitch {
			id: serviceDetailEnabled
			text: ( item.enabled == 1 ? "enabled" : "disabled" )
			checked: ( item.enabled == 1 )
			onCheckedChanged: {
				text=(checked ? "enabled" : "disabled")
			}
		}
		TextSwitch {
			id: serviceDetailMasked
			text: ( item.masked == 1 ? "masked" : "unmasked" )
			checked: ( item.masked == 1 )
			onCheckedChanged: {
				text=(checked ? "masked" : "unmasked")
			}
		}
		Button {
			id: serviceDetailLog
			text: "log entries"
		}
	}
    }
}

