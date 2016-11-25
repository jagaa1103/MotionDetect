//
//  CoreMotionService.swift
//  MotionDetect
//
//  Created by Enkhjargal Gansukh on 24/11/2016.
//  Copyright © 2016 Enkhjargal Gansukh. All rights reserved.
//

import Foundation
import CoreMotion

class CoreMotionService: NSObject {
    static let instance = CoreMotionService()
    let motionManager = CMMotionManager()
    
    override init() {
        super.init()
        motionManager.deviceMotionUpdateInterval = 0.2
    }
    
    
    func startMotion(){
        checkSensors()
        motionManager.startDeviceMotionUpdates(to: OperationQueue.main, withHandler: {
                (data: CMDeviceMotion?, err: Error?) in
            if err == nil, let sensorData = data {
//                print("x: \(sensorData.gravity.x) y: \(sensorData.gravity.y) z: \(sensorData.gravity.z)")
                print("x: \(sensorData.userAcceleration.x) y: \(sensorData.userAcceleration.y) z: \(sensorData.userAcceleration.z)")
                print("x: \(sensorData.rotationRate.x) y: \(sensorData.rotationRate.y) z: \(sensorData.rotationRate.z)")
                print("yav: \(sensorData.attitude.yaw) pitch: \(sensorData.attitude.pitch) roll: \(sensorData.attitude.roll)")
            }
            
        })
    }
    
    func stopMotion(){
        motionManager.stopDeviceMotionUpdates()
    }
    
    
    func checkSensors(){
        if motionManager.isGyroAvailable {
            print("Gyro is available")
        } else {
            print("Gyro is not available")
        }
        
        if motionManager.isAccelerometerAvailable {
            print("Accel is available")
        } else {
            print("Accel is not available")
        }
        if motionManager.isMagnetometerAvailable {
            print("Magnetic is available")
        } else {
            print("Magnetic is not available")
        }
    }
    
    
}
