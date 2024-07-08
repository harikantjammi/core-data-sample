import XCTest
@testable import core_data_sample

final class core_data_sampleTests: XCTestCase {
    func testExample() throws {
        let coreDataContainer = NotesPersistentContainer.persistentContainer
        Thread.sleep(forTimeInterval: 3.0)
        let entityDescription = Note.entity()
        let newNote = Note(entity: entityDescription,
                           insertInto: coreDataContainer?.viewContext)
        newNote.text = "Hari"
        coreDataContainer?.viewContext.insert(newNote)
    }
}
