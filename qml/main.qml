import QtQuick 2.0
import Sailfish.Silica 1.0
import "pages"

ApplicationWindow
{
    initialPage: serviceList
    Component {
        id: serviceList
        ServiceList { }
    }
    Component {
        id: serviceDetail
        ServiceDetail { }
    }
    cover: Qt.resolvedUrl("cover.qml")

    ListModel {
        id: serviceModel
	ListElement { service: "openvpn@hive"; status: 0; enabled: 1; masked: 0 }
	ListElement { service: "openvpn@ba"; status: 1; enabled: 1; masked: 0 }
	ListElement { service: "openvpn@almighty"; status: 1; enabled: 1; masked: 0 }
	ListElement { service: "openvpn@colo"; status: 0; enabled: 1; masked: 0 }
	ListElement { service: "openvpn@vpn_colo"; status: 1; enabled: 1; masked: 0 }
	ListElement { service: "openvpn@hive"; status: 0; enabled: 1; masked: 0 }
	ListElement { service: "openvpn@ba"; status: 1; enabled: 1; masked: 0 }
	ListElement { service: "openvpn@almighty"; status: 1; enabled: 1; masked: 0 }
	ListElement { service: "openvpn@colo"; status: 0; enabled: 1; masked: 0 }
	ListElement { service: "openvpn@vpn_colo"; status: 1; enabled: 1; masked: 0 }
	ListElement { service: "openvpn@hive"; status: 0; enabled: 1; masked: 0 }
	ListElement { service: "openvpn@ba"; status: 1; enabled: 1; masked: 0 }
	ListElement { service: "openvpn@almighty"; status: 1; enabled: 1; masked: 0 }
	ListElement { service: "openvpn@colo"; status: 0; enabled: 1; masked: 0 }
	ListElement { service: "openvpn@vpn_colo"; status: 1; enabled: 1; masked: 0 }
	ListElement { service: "openvpn@hive"; status: 0; enabled: 1; masked: 0 }
	ListElement { service: "openvpn@ba"; status: 1; enabled: 1; masked: 0 }
	ListElement { service: "openvpn@almighty"; status: 1; enabled: 1; masked: 0 }
	ListElement { service: "openvpn@colo"; status: 0; enabled: 1; masked: 0 }
	ListElement { service: "openvpn@vpn_colo"; status: 1; enabled: 1; masked: 0 }
	ListElement { service: "openvpn@hive"; status: 0; enabled: 1; masked: 0 }
	ListElement { service: "openvpn@ba"; status: 1; enabled: 1; masked: 0 }
	ListElement { service: "openvpn@almighty"; status: 1; enabled: 1; masked: 0 }
	ListElement { service: "openvpn@colo"; status: 0; enabled: 1; masked: 0 }
	ListElement { service: "openvpn@vpn_colo"; status: 1; enabled: 1; masked: 0 }
    }

}

