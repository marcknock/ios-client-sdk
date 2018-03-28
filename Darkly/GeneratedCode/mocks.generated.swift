// Generated using Sourcery 0.9.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//swiftlint:disable vertical_whitespace


import DarklyEventSource
@testable import Darkly


// MARK: - DarklyStreamingProviderMock
final class DarklyStreamingProviderMock: DarklyStreamingProvider {

    // MARK: onMessageEvent
    var onMessageEventCallCount = 0
    var onMessageEventCallback: (() -> Void)?
    var onMessageEventReceivedHandler: LDEventSourceEventHandler?
    func onMessageEvent(_ handler: LDEventSourceEventHandler?) {
        onMessageEventCallCount += 1
        onMessageEventReceivedHandler = handler
        onMessageEventCallback?()
    }

    // MARK: onErrorEvent
    var onErrorEventCallCount = 0
    var onErrorEventCallback: (() -> Void)?
    var onErrorEventReceivedHandler: LDEventSourceEventHandler?
    func onErrorEvent(_ handler: LDEventSourceEventHandler?) {
        onErrorEventCallCount += 1
        onErrorEventReceivedHandler = handler
        onErrorEventCallback?()
    }

    // MARK: close
    var closeCallCount = 0
    var closeCallback: (() -> Void)?
    func close() {
        closeCallCount += 1
        closeCallback?()
    }
}

// MARK: - EnvironmentReportingMock
final class EnvironmentReportingMock: EnvironmentReporting {

    // MARK: isDebugBuild
    var isDebugBuildSetCount = 0
    var setIsDebugBuildCallback: (() -> Void)?
    var isDebugBuild: Bool = true {
        didSet {
            isDebugBuildSetCount += 1
            setIsDebugBuildCallback?()
        }
    }

    // MARK: deviceModel
    var deviceModelSetCount = 0
    var setDeviceModelCallback: (() -> Void)?
    var deviceModel: String = Constants.deviceModel {
        didSet {
            deviceModelSetCount += 1
            setDeviceModelCallback?()
        }
    }

    // MARK: systemVersion
    var systemVersionSetCount = 0
    var setSystemVersionCallback: (() -> Void)?
    var systemVersion: String = Constants.systemVersion {
        didSet {
            systemVersionSetCount += 1
            setSystemVersionCallback?()
        }
    }

    // MARK: systemName
    var systemNameSetCount = 0
    var setSystemNameCallback: (() -> Void)?
    var systemName: String = Constants.systemName {
        didSet {
            systemNameSetCount += 1
            setSystemNameCallback?()
        }
    }

    // MARK: operatingSystem
    var operatingSystemSetCount = 0
    var setOperatingSystemCallback: (() -> Void)?
    var operatingSystem: OperatingSystem = .iOS {
        didSet {
            operatingSystemSetCount += 1
            setOperatingSystemCallback?()
        }
    }

    // MARK: backgroundNotification
    var backgroundNotificationSetCount = 0
    var setBackgroundNotificationCallback: (() -> Void)?
    var backgroundNotification: Notification.Name? {
        didSet {
            backgroundNotificationSetCount += 1
            setBackgroundNotificationCallback?()
        }
    }

    // MARK: foregroundNotification
    var foregroundNotificationSetCount = 0
    var setForegroundNotificationCallback: (() -> Void)?
    var foregroundNotification: Notification.Name? {
        didSet {
            foregroundNotificationSetCount += 1
            setForegroundNotificationCallback?()
        }
    }
}

// MARK: - FlagChangeNotifyingMock
final class FlagChangeNotifyingMock: FlagChangeNotifying {

    // MARK: addFlagChangeObserver
    var addFlagChangeObserverCallCount = 0
    var addFlagChangeObserverCallback: (() -> Void)?
    var addFlagChangeObserverReceivedObserver: FlagChangeObserver?
    func addFlagChangeObserver(_ observer: FlagChangeObserver) {
        addFlagChangeObserverCallCount += 1
        addFlagChangeObserverReceivedObserver = observer
        addFlagChangeObserverCallback?()
    }

    // MARK: addFlagsUnchangedObserver
    var addFlagsUnchangedObserverCallCount = 0
    var addFlagsUnchangedObserverCallback: (() -> Void)?
    var addFlagsUnchangedObserverReceivedObserver: FlagsUnchangedObserver?
    func addFlagsUnchangedObserver(_ observer: FlagsUnchangedObserver) {
        addFlagsUnchangedObserverCallCount += 1
        addFlagsUnchangedObserverReceivedObserver = observer
        addFlagsUnchangedObserverCallback?()
    }

    // MARK: removeObserver
    var removeObserverCallCount = 0
    var removeObserverCallback: (() -> Void)?
    var removeObserverReceivedArguments: (keys: [LDFlagKey], owner: LDFlagChangeOwner)?
    func removeObserver(_ keys: [LDFlagKey], owner: LDFlagChangeOwner) {
        removeObserverCallCount += 1
        removeObserverReceivedArguments = (keys: keys, owner: owner)
        removeObserverCallback?()
    }

    // MARK: notifyObservers
    var notifyObserversCallCount = 0
    var notifyObserversCallback: (() -> Void)?
    var notifyObserversReceivedArguments: (user: LDUser, oldFlags: [LDFlagKey: FeatureFlag], oldFlagSource: LDFlagValueSource)?
    func notifyObservers(user: LDUser, oldFlags: [LDFlagKey: FeatureFlag], oldFlagSource: LDFlagValueSource) {
        notifyObserversCallCount += 1
        notifyObserversReceivedArguments = (user: user, oldFlags: oldFlags, oldFlagSource: oldFlagSource)
        notifyObserversCallback?()
    }
}

// MARK: - FlagCollectionCachingMock
final class FlagCollectionCachingMock: FlagCollectionCaching {

    // MARK: retrieveFlags
    var retrieveFlagsCallCount = 0
    var retrieveFlagsCallback: (() -> Void)?
    var retrieveFlagsReturnValue: [String: CacheableUserFlags] = [:]
    func retrieveFlags() -> [String: CacheableUserFlags] {
        retrieveFlagsCallCount += 1
        return retrieveFlagsReturnValue
        retrieveFlagsCallback?()
    }

    // MARK: storeFlags
    var storeFlagsCallCount = 0
    var storeFlagsCallback: (() -> Void)?
    var storeFlagsReceivedFlags: [String: CacheableUserFlags]?
    func storeFlags(_ flags: [String: CacheableUserFlags]) {
        storeFlagsCallCount += 1
        storeFlagsReceivedFlags = flags
        storeFlagsCallback?()
    }
}

// MARK: - FlagMaintainingMock
final class FlagMaintainingMock: FlagMaintaining {

    // MARK: featureFlags
    var featureFlagsSetCount = 0
    var setFeatureFlagsCallback: (() -> Void)?
    var featureFlags: [LDFlagKey: FeatureFlag] = [:] {
        didSet {
            featureFlagsSetCount += 1
            setFeatureFlagsCallback?()
        }
    }

    // MARK: flagValueSource
    var flagValueSourceSetCount = 0
    var setFlagValueSourceCallback: (() -> Void)?
    var flagValueSource: LDFlagValueSource = .cache {
        didSet {
            flagValueSourceSetCount += 1
            setFlagValueSourceCallback?()
        }
    }

    // MARK: replaceStore
    var replaceStoreCallCount = 0
    var replaceStoreCallback: (() -> Void)?
    var replaceStoreReceivedArguments: (newFlags: [LDFlagKey: Any]?, source: LDFlagValueSource, completion: CompletionClosure?)?
    func replaceStore(newFlags: [LDFlagKey: Any]?, source: LDFlagValueSource, completion: CompletionClosure?) {
        replaceStoreCallCount += 1
        replaceStoreReceivedArguments = (newFlags: newFlags, source: source, completion: completion)
        replaceStoreCallback?()
    }

    // MARK: updateStore
    var updateStoreCallCount = 0
    var updateStoreCallback: (() -> Void)?
    var updateStoreReceivedArguments: (updateDictionary: [String: Any], source: LDFlagValueSource, completion: CompletionClosure?)?
    func updateStore(updateDictionary: [String: Any], source: LDFlagValueSource, completion: CompletionClosure?) {
        updateStoreCallCount += 1
        updateStoreReceivedArguments = (updateDictionary: updateDictionary, source: source, completion: completion)
        updateStoreCallback?()
    }

    // MARK: deleteFlag
    var deleteFlagCallCount = 0
    var deleteFlagCallback: (() -> Void)?
    var deleteFlagReceivedArguments: (deleteDictionary: [String: Any], completion: CompletionClosure?)?
    func deleteFlag(deleteDictionary: [String: Any], completion: CompletionClosure?) {
        deleteFlagCallCount += 1
        deleteFlagReceivedArguments = (deleteDictionary: deleteDictionary, completion: completion)
        deleteFlagCallback?()
    }
}

// MARK: - KeyedValueCachingMock
final class KeyedValueCachingMock: KeyedValueCaching {

    // MARK: set
    var setCallCount = 0
    var setCallback: (() -> Void)?
    var setReceivedArguments: (value: Any?, forKey: String)?
    func set(_ value: Any?, forKey: String) {
        setCallCount += 1
        setReceivedArguments = (value: value, forKey: forKey)
        setCallback?()
    }

    // MARK: dictionary
    var dictionaryCallCount = 0
    var dictionaryCallback: (() -> Void)?
    var dictionaryReceivedForKey: String?
    var dictionaryReturnValue: [String: Any]? = nil
    func dictionary(forKey: String) -> [String: Any]? {
        dictionaryCallCount += 1
        dictionaryReceivedForKey = forKey
        return dictionaryReturnValue
        dictionaryCallback?()
    }

    // MARK: removeObject
    var removeObjectCallCount = 0
    var removeObjectCallback: (() -> Void)?
    var removeObjectReceivedForKey: String?
    func removeObject(forKey: String) {
        removeObjectCallCount += 1
        removeObjectReceivedForKey = forKey
        removeObjectCallback?()
    }
}

// MARK: - LDEventReportingMock
final class LDEventReportingMock: LDEventReporting {

    // MARK: config
    var configSetCount = 0
    var setConfigCallback: (() -> Void)?
    var config: LDConfig = LDConfig.stub {
        didSet {
            configSetCount += 1
            setConfigCallback?()
        }
    }

    // MARK: isOnline
    var isOnlineSetCount = 0
    var setIsOnlineCallback: (() -> Void)?
    var isOnline: Bool = false {
        didSet {
            isOnlineSetCount += 1
            setIsOnlineCallback?()
        }
    }

    // MARK: service
    var serviceSetCount = 0
    var setServiceCallback: (() -> Void)?
    var service: DarklyServiceProvider = DarklyServiceMock() {
        didSet {
            serviceSetCount += 1
            setServiceCallback?()
        }
    }

    // MARK: record
    var recordCallCount = 0
    var recordCallback: (() -> Void)?
    var recordReceivedArguments: (event: Darkly.LDEvent, completion: CompletionClosure?)?
    func record(_ event: Darkly.LDEvent, completion: CompletionClosure?) {
        recordCallCount += 1
        recordReceivedArguments = (event: event, completion: completion)
        recordCallback?()
    }

    // MARK: reportEvents
    var reportEventsCallCount = 0
    var reportEventsCallback: (() -> Void)?
    func reportEvents() {
        reportEventsCallCount += 1
        reportEventsCallback?()
    }
}

// MARK: - LDFlagSynchronizingMock
final class LDFlagSynchronizingMock: LDFlagSynchronizing {

    // MARK: isOnline
    var isOnlineSetCount = 0
    var setIsOnlineCallback: (() -> Void)?
    var isOnline: Bool = false {
        didSet {
            isOnlineSetCount += 1
            setIsOnlineCallback?()
        }
    }
}

// MARK: - UserFlagCachingMock
final class UserFlagCachingMock: UserFlagCaching {

    // MARK: cacheFlags
    var cacheFlagsCallCount = 0
    var cacheFlagsCallback: (() -> Void)?
    var cacheFlagsReceivedUser: LDUser?
    func cacheFlags(for user: LDUser) {
        cacheFlagsCallCount += 1
        cacheFlagsReceivedUser = user
        cacheFlagsCallback?()
    }

    // MARK: retrieveFlags
    var retrieveFlagsCallCount = 0
    var retrieveFlagsCallback: (() -> Void)?
    var retrieveFlagsReceivedUser: LDUser?
    var retrieveFlagsReturnValue: CacheableUserFlags? = nil
    func retrieveFlags(for user: LDUser) -> CacheableUserFlags? {
        retrieveFlagsCallCount += 1
        retrieveFlagsReceivedUser = user
        return retrieveFlagsReturnValue
        retrieveFlagsCallback?()
    }
}
