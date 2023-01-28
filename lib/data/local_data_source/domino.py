from flask import Flask , request, jsonify
import  cv2

app = Flask(__name__)
@app.route('/api',methods = ['GET'])

def getPoints():
    path = request.args['imagePath']
    img = cv2.imread(path)
    img = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
    img = cv2.GaussianBlur(img, (5, 5), cv2.BORDER_CONSTANT)
    cv2.threshold(img, 135, 255, cv2.THRESH_BINARY, img)
    img = cv2.Canny(img, 50, 50)
    img = cv2.dilate(img, (5, 5))
    img = cv2.erode(img, (7, 7))
    countours, herirarchy = cv2.findContours(img, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
    points =0
    for cnt in countours:
        cv2.drawContours(img, cnt, -1, (255, 0, 0), 2)
        arc = cv2.arcLength(cnt, True)
        angles = cv2.approxPolyDP(cnt, 0.033 * arc, True)
        x, y, w, h = cv2.boundingRect(angles)
        if len(angles) > 4:
            if abs(w - h) < 20:
                points += 1
    pointsArg = {}
    pointsArg['points'] = str(points)
    return jsonify(pointsArg)
    
if __name__ == '__main__':
    app.run(host='0.0.0.0',port=5000)