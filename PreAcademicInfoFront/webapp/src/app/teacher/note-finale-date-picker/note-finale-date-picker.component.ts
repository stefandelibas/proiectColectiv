import { Component, OnInit, AfterViewInit, ViewChild } from '@angular/core';
import { TeacherService, StudentData } from '../teacher.service';
import { Moment } from 'moment';
import * as moment from 'moment';
import { MatDatepicker } from '@angular/material';


const STUDENT_DATA: StudentData[] = [
  {username: "username1", password:"pass1",numarMatricol:"2020",email:"a@ceva.com",nume:"Delibas",prenume:"Stefan", nrTelefon:"00034",CNP:"1934223345",initialaParinte:"V",generatie:"2015",anCurent:"2018"},
  {username: "username2", password:"pass2",numarMatricol:"2039",email:"b@ceva.com",nume:"Szuhai",prenume:"Iulia", nrTelefon:"073534",CNP:"2434254675",initialaParinte:"S",generatie:"2015",anCurent:"2018"}
];

@Component({
  selector: 'app-note-finale-date-picker',
  templateUrl: './note-finale-date-picker.component.html',
  styleUrls: ['./note-finale-date-picker.component.scss']
})

export class NoteFinaleDatePickerComponent implements OnInit , AfterViewInit {

  @ViewChild(MatDatepicker) myDatepicker: MatDatepicker<Moment>;
  isValidMoment: boolean = false;
  columnsToDisplay = ['nrMatricol','nume','nota', 'data'];
  dataSource = STUDENT_DATA;
  nota: string;
  choosedDate: string;
  public students = [];

  constructor(private teacherService: TeacherService){ }

  ngOnInit() {
    this.teacherService.getStudents()
        .subscribe(data => this.students = data)
  }

  ngAfterViewInit(){
    this.myDatepicker._selectedChanged.subscribe(
      (newDate: Moment) => {
        this.isValidMoment = moment.isMoment(newDate);
        this.choosedDate = moment(newDate).format("DD/MM/YYYY");
        console.log(this.choosedDate);
      },
      (error) => {
        throw Error(error);
      }
    );
  }

  saveGrade(event){
    //save the grade into DB on focusout event
    this.nota=event.target.value;
    console.log("here"+ this.nota);
  }

}