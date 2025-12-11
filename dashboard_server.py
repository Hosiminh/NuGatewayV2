#!/usr/bin/env python3
"""
NuBank Dashboard Web Server
"""
from flask import Flask, send_file, jsonify
import json
import os

app = Flask(__name__)

@app.route('/')
def index():
    """Ana sayfa - Dashboard"""
    return send_file('nubank_dashboard.html')

@app.route('/telemetry.json')
def telemetry():
    """Telemetri verisi"""
    try:
        with open('telemetry.json', 'r') as f:
            data = json.load(f)
        return jsonify(data)
    except:
        return jsonify({"error": "No data"}), 404

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=False)