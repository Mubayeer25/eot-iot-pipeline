import random
import time
import paho.mqtt.client as mqtt

while True:
    temperature = random.uniform(20.0, 30.0)
    mqtt.single("iot/sensor", payload=f"{temp:.2f}", hostname="mosquitto")
    time.sleep(5)