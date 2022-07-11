import sys
from PyQt5.QtWidgets import QMainWindow, QApplication
import mysql.connector as mc
from ULTfinale_design import Ui_MainWindow


class MyMainWindow(QMainWindow, Ui_MainWindow):
    def __init__(self):
        super().__init__()
        self.main_win = QMainWindow()
        self.ui = Ui_MainWindow()
        self.ui.setupUi(self.main_win)


        self.ui.stackedWidget_2.setCurrentWidget(self.ui.OLD_STUDENT)

        self.ui.pushButton_6.clicked.connect(lambda: self.ui.stackedWidget_2.setCurrentWidget(self.ui.OLD_STUDENT))
        self.ui.pushButton_7.clicked.connect(lambda: self.ui.stackedWidget_2.setCurrentWidget(self.ui.NEW_STUDENT))
        self.ui.pushButton_8.clicked.connect(lambda: self.ui.stackedWidget_2.setCurrentWidget(self.ui.ENROLLED_))
        self.ui.pushButton_9.clicked.connect(lambda: self.ui.stackedWidget_2.setCurrentWidget(self.ui.GRADE_SEC))
        self.ui.pushButton_10.clicked.connect(lambda: self.ui.stackedWidget_2.setCurrentWidget(self.ui.SCHEDULE_))
        self.ui.pushButton_11.clicked.connect(lambda: self.ui.stackedWidget_2.setCurrentWidget(self.ui.SUBJECT_))
        self.ui.pushButton_12.clicked.connect(lambda: self.ui.stackedWidget_2.setCurrentWidget(self.ui.TEACHER_))
        self.ui.pushButton_13.clicked.connect(lambda: self.ui.stackedWidget_2.setCurrentWidget(self.ui.DEPARTMENT_))



    def show(self):
        self.main_win.show()

    def insert_Oform(self):
        try:
            mydb = mc.connect(user="root", password="", host="localhost", database="enrollemnt_system")

            mycursor = mydb.cursor()
            label_2 = self.lineEdit.text()
            label_3 = self.lineEdit_2.text()
            label_4 = self.lineEdit_3.text()
            label_5 = self.lineEdit_4.text()
            label_6 = self.lineEdit_5.text()
            label_7 = self.lineEdit_6.text()
            label_8 = self.lineEdit_7.text()
            label_9 = self.lineEdit_8.text()
            label_10 = self.lineEdit_9.text()

            query = "INSERT INTO OLD_STUDENT VALUES(%s, %s, %s, %s, %s, %s, %s, %s, %s)"
            values = (label_2, label_3, label_4, label_5, label_6, label_7, label_8, label_9, label_10)

            mycursor.execute(query, values)

            mydb.commit()
            print("DATA INSERTED")
        except mc.Error as e:
            print("error inserting data")



if __name__ == '__main__':
    app = QApplication(sys.argv)
    main_win = MyMainWindow()
    main_win.show()
    sys.exit(app.exec_())
