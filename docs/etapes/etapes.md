---
layout: default
title: La partie programmation
nav_order: 6
has_children: true
---

La phase de programmation est une étape cruciale dans le développement de ce robot auto-stabilisé, car elle implique l'implémentation de l'algorithme PID (Proportionnel-Intégral-Dérivé) sur le microcontrôleur ESP32. L'objectif principal de cette phase est de mettre en place une méthode de stabilisation permettant au robot de rester en équilibre de façon stable et réactive. Cela se fait en temps réel, en s'appuyant sur la fusion de données provenant de capteurs inertiels (accéléromètre triaxial et gyroscope) via un filtre complémentaire pour une estimation précise de l'angle d'inclinaison. Le programme ESP32, avec son contrôle en boucle fermée, sera le cœur du système, assurant une bonne communication entre les différents éléments et permettant le pilotage du robot ainsi que la récupération des informations des capteurs.

Vous trouverez ci-dessous le programme de notre projet: 

#include <Arduino.h>

#include <Wire.h>

#include <MPU6050.h>

#include <PID_v1.h>

// Définition des broches des moteurs

    const int MOTOR1_PWM = D10;
    
    const int MOTOR1_DIR = D9;
    
    const int MOTOR2_PWM = D8;
    
    const int MOTOR2_DIR = D7;

MPU6050 mpu;

// PID pour la stabilisation

    double setpoint = 171.05; 
    
    double input, output;
    
    double Kp = 120, Ki = 0.001, Kd = 2.5; 
    
    PID pid(&input, &output, &setpoint, Kp, Ki, Kd, DIRECT);





// Variables pour le filtre complémentaire

    float angle = 0; // Angle calculé
    
    float gyroRate = 0; // Vitesse angulaire
    
    unsigned long lastTime = 0;

// Variables pour la calibration

    float gyroBiasY = 0.0f;

// Fonctions utilitaires

    void calibrateMPU() {
      Serial.println("Calibration du gyroscope...");
      const int numSamples = 1000;
      long sumY = 0;
    
      for (int i = 0; i < numSamples; i++) {
        int16_t gx, gy, gz;
        mpu.getRotation(&gx, &gy, &gz);
        sumY += gy;
        delay(2);
      }
    
      gyroBiasY = sumY / (float)numSamples;
      Serial.println("Calibration terminée !");
    }
    
    void setMotor(int pwm, bool forward, int motorDirPin, int motorPwmPin) {
      pwm = constrain(pwm, 0, 255);
      digitalWrite(motorDirPin, forward ? LOW : HIGH);
      analogWrite(motorPwmPin, pwm);
    }
    float getFilteredAngle() {
      int16_t ax, ay, az, gx, gy, gz;
      mpu.getMotion6(&ax, &ay, &az, &gx, &gy, &gz);

  // Calcul de l'angle avec l'accéléromètre
 
     float accelAngle = atan2((float)ay, (float)az) * 180.0f / PI;

  // Calcul de la vitesse angulaire corrigée
  
      gyroRate = ((float)gy - gyroBiasY) / 131.0f; // Conversion en degrés/s

  // Filtre complémentaire
 
     unsigned long currentTime = millis();
      float dt = (lastTime == 0) ? 0.01f : (currentTime - lastTime) / 1000.0f; // 10 ms par défaut au premier appel
      lastTime = currentTime;
      if (dt <= 0.0f || dt > 0.2f) dt = 0.01f; // Sécurité sur dt

  // Filtre complémentaire (98% gyro, 2% accéléro)
  
      angle = 0.98f * (angle + gyroRate * dt) + 0.02f * accelAngle;

      return angle;
      //return gy;
}











void setup() {

  Serial.begin(115200);

 
  pinMode(MOTOR1_PWM, OUTPUT);

  pinMode(MOTOR1_DIR, OUTPUT);
  
  pinMode(MOTOR2_PWM, OUTPUT);
  
  pinMode(MOTOR2_DIR, OUTPUT);

  Wire.begin();
  
  mpu.initialize();
  
  if (!mpu.testConnection()) {
  
    Serial.println("Erreur : MPU6050 non détecté !");
    
    while (1);
  }

  calibrateMPU();
 /*
  
  while(1){
  
    Serial.println(getFilteredAngle(),DEC);
    
    setMotor(100,true,MOTOR1_DIR,MOTOR1_PWM);
    
    setMotor(100,true,MOTOR2_DIR,MOTOR2_PWM);
    
    delay(500);
  }
*/
  pid.SetMode(AUTOMATIC);
  
  pid.SetOutputLimits(-90, 90);

  Serial.println("Initialisation terminée !");
}











void loop() {
  
  // Lecture de l'angle filtré
  
      input = getFilteredAngle();

  

  // Calcul PID
      pid.Compute();
 

  // Sécurité : coupe les moteurs si le robot est trop penché
      if (abs(input - setpoint) > 40) {
        
        setMotor(0, true, MOTOR1_DIR, MOTOR1_PWM);
        
        setMotor(0, true, MOTOR2_DIR, MOTOR2_PWM);
         
        setpoint = getFilteredAngle(); // Réinitialise la consigne à la position actuelle
    } else {
   
    
    // Les deux moteurs reçoivent la même commande, sens selon le signe de output
    
        int pwm = abs((int)output);
        
        
      bool forward = (output < 0);
      
        setMotor(pwm, forward, MOTOR1_DIR, MOTOR1_PWM);
        
        setMotor(pwm, forward, MOTOR2_DIR, MOTOR2_PWM);
  }

  // Affichage pour le débogage
  
  
      Serial.print("Angle: ");
      
      Serial.print(input);
      
      Serial.print(" | PID Output: ");
      
      Serial.println(output);
    
    delay(20); // Fréquence de mise à jour
}
