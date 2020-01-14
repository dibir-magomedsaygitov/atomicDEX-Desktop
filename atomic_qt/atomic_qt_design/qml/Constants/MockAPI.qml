pragma Singleton
import QtQuick 2.10

QtObject {
    function getAtomicApp() {
        const design_editor = typeof atomic_app === "undefined"
        return !design_editor ? atomic_app : mockAPI()
    }

    function mockAPI() {
        return {
            first_run: function() {
                return false
            },
            get_mnemonic: function() {
                return "this is a test seed gossip rubber flee just connect manual any salmon limb suffer now turkey essence naive daughter system begin quantum page"
            }
        }
    }
}