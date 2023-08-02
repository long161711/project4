{"filter":false,"title":"app.py","tooltip":"/app.py","undoManager":{"mark":0,"position":0,"stack":[[{"start":{"row":0,"column":0},"end":{"row":71,"column":0},"action":"remove","lines":["from flask import Flask, request, jsonify","from flask.logging import create_logger","import logging","","import pandas as pd","from sklearn.externals import joblib","from sklearn.preprocessing import StandardScaler","","app = Flask(__name__)","LOG = create_logger(app)","LOG.setLevel(logging.INFO)","","def scale(payload):","    \"\"\"Scales Payload\"\"\"","    ","    LOG.info(f\"Scaling Payload: \\n{payload}\")","    scaler = StandardScaler().fit(payload.astype(float))","    scaled_adhoc_predict = scaler.transform(payload.astype(float))","    return scaled_adhoc_predict","","@app.route(\"/\")","def home():","    html = f\"<h3>Sklearn Prediction Home</h3>\"","    return html.format(format)","","@app.route(\"/predict\", methods=['POST'])","def predict():","    \"\"\"Performs an sklearn prediction","        ","        input looks like:","        {","        \"CHAS\":{","        \"0\":0","        },","        \"RM\":{","        \"0\":6.575","        },","        \"TAX\":{","        \"0\":296.0","        },","        \"PTRATIO\":{","        \"0\":15.3","        },","        \"B\":{","        \"0\":396.9","        },","        \"LSTAT\":{","        \"0\":4.98","        }","        ","        result looks like:","        { \"prediction\": [ <val> ] }","        ","        \"\"\"","    ","    # Logging the input payload","    json_payload = request.json","    LOG.info(f\"JSON payload: \\n{json_payload}\")","    inference_payload = pd.DataFrame(json_payload)","    LOG.info(f\"Inference payload DataFrame: \\n{inference_payload}\")","    # scale the input","    scaled_payload = scale(inference_payload)","    # get an output prediction from the pretrained model, clf","    prediction = list(clf.predict(scaled_payload))","    # TO DO:  Log the output prediction value","    return jsonify({'prediction': prediction})","","if __name__ == \"__main__\":","    # load pretrained model as clf","    clf = joblib.load(\"./model_data/boston_housing_prediction.joblib\")","    app.run(host='0.0.0.0', port=80, debug=True) # specify port=80",""],"id":2},{"start":{"row":0,"column":0},"end":{"row":75,"column":66},"action":"insert","lines":["from flask import Flask, request, jsonify","from flask.logging import create_logger","import logging","import joblib","","import pandas as pd","from sklearn.externals import joblib","from sklearn.preprocessing import StandardScaler","","app = Flask(__name__)","LOG = create_logger(app)","LOG.setLevel(logging.INFO)","","def scale(payload):","    \"\"\"Scales Payload\"\"\"","    ","    LOG.info(f\"Scaling Payload: \\n{payload}\")","    scaler = StandardScaler().fit(payload.astype(float))","    scaled_adhoc_predict = scaler.transform(payload.astype(float))","    return scaled_adhoc_predict","","@app.route(\"/\")","def home():","    html = f\"<h3>Sklearn Prediction Home</h3>\"","    return html.format(format)","","@app.route(\"/predict\", methods=['POST'])","def predict():","    \"\"\"Performs an sklearn prediction","        ","        input looks like:","        {","        \"CHAS\":{","        \"0\":0","        },","        \"RM\":{","        \"0\":6.575","        },","        \"TAX\":{","        \"0\":296.0","        },","        \"PTRATIO\":{","        \"0\":15.3","        },","        \"B\":{","        \"0\":396.9","        },","        \"LSTAT\":{","        \"0\":4.98","        }","        ","        result looks like:","        { \"prediction\": [ <val> ] }","        ","        \"\"\"","    ","    # Logging the input payload","    json_payload = request.json","    LOG.info(f\"JSON payload: \\n{json_payload}\")","    inference_payload = pd.DataFrame(json_payload)","    LOG.info(f\"Inference payload DataFrame: \\n{inference_payload}\")","    # scale the input","    scaled_payload = scale(inference_payload)","    # get an output prediction from the pretrained model, clf","    prediction = list(clf.predict(scaled_payload))","","    # Confirm value of prediction by console log its value","    LOG.info(f\"PREDICTION VALUE IS: {prediction}\")","","    # Return result of prediction as json ","    return jsonify({'prediction': prediction})","","if __name__ == \"__main__\":","    # load pretrained model as clf","    clf = joblib.load(\"./model_data/boston_housing_prediction.joblib\")","    app.run(host='0.0.0.0', port=80, debug=True) # specify port=80"]}]]},"ace":{"folds":[],"scrolltop":723.5,"scrollleft":0,"selection":{"start":{"row":68,"column":0},"end":{"row":68,"column":0},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":59,"state":"start","mode":"ace/mode/python"}},"timestamp":1690995493095,"hash":"f88f18ac042248491a700f88a2017c87d6135ecc"}