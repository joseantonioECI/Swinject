//
//  InstanceStorage.swift
//  Swinject
//
//  Created by Jakub Vaňo on 11/11/16.
//  Copyright © 2016 Swinject Contributors. All rights reserved.
//

/// Storage provided by `ObjectScope`. It is used by `Container` to persist resolved instances.
public protocol InstanceStorage: AnyObject {
    var instance: Any? { get set }
}

/// Persists stored instance until it is explicitly discarded.
public final class PermanentStorage: InstanceStorage {
    public var instance: Any?

    public init() {}
}

/// Does not persist stored instance.
public final class TransientStorage: InstanceStorage {
    public var instance: Any? {
        get { return nil }
        set {}
    }

    public init() {}
}