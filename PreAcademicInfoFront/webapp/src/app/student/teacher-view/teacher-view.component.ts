import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-teacher-view',
  templateUrl: './teacher-view.component.html',
  styleUrls: ['./teacher-view.component.scss']
})
export class TeacherViewComponent implements OnInit {

  constructor() { }
  card:boolean =true;
  ngOnInit() {
  }

  hide()
  {
    this.card = false;
  }

}
