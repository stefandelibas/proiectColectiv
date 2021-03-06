import { Component, OnInit } from '@angular/core';
import { DisciplineData, AdminService, MailData } from '../admin.service';
import { Router } from '@angular/router';
import { ToastrManager } from 'ng6-toastr-notifications';

const DISCIPLINE_DATA: DisciplineData[] = [
  {An:"1",semestru:"1", nume:"Fundamentele Programarii", codMaterie:"123455", facultativ:false,obligatoriu:true,optional:false, locuriDisponibile:200, nrCredite:"6",locuriOcupate:200},
  {An:"1",semestru:"2", nume:"Materie cu Gabi", codMaterie:"123455", facultativ:true,obligatoriu:false,optional:false, locuriDisponibile:200, nrCredite:"1",locuriOcupate:10}
  ];
  
@Component({
  selector: 'app-news',
  templateUrl: './news.component.html',
  styleUrls: ['./news.component.scss']
})
export class NewsComponent implements OnInit {

  mail : MailData;
  selected : boolean;

  grupe = [];
  ani = [
    {value: '1', viewValue: 'Anul 1'},
    {value: '2', viewValue: 'Anul 2'},
    {value: '3', viewValue: 'Anul 3'},
  ];
  departamente=[];
  specializari=[];
  
  ngOnInit(): void {
    //load materile predate de un teacher
    this.adminService.getDepartamente()
    .subscribe(data => 
      {
        for (var _i = 0; _i < data.length; _i++)
        {
          this.departamente.push({value:data[_i], viewValue: data[_i]});
        }
      }
      );
  }

  constructor(private adminService:AdminService, private router: Router,public toastr: ToastrManager) { 
    this.mail = {
      titlu : '',
      mesaj : '',
      departament:'',
      specializare:'',
      an: '',
      grupa: ''
    }
  }

  onChange(event:any) {
    let param = event.value;
    if (param != '')
    {
      this.selected = true;
    }
    this.mail.departament = param
    this.adminService.getSpecializari(this.mail.departament)
    .subscribe(data => 
      {
        for (var _i = 0; _i < data.length; _i++)
        {
          this.specializari.push({value:data[_i], viewValue: data[_i]});
        }
      }
      );
    console.log("Departament:",this.mail.departament)

  }
  onSpecializareChange(event:any){
    let param = event.value;
    this.mail.specializare = param;
    console.log("Specializare:",this.mail.specializare);
  }
  onAnChange(event:any) {
    let param = event.value;
    this.mail.an = param;
    this.adminService.getGrupe(this.mail.specializare,this.mail.an)
    .subscribe(data => 
      {
        for (var _i = 0; _i < data.length; _i++)
        {
          this.grupe.push({value:data[_i], viewValue: data[_i]});
        }
      }
    );
    console.log("An:",this.mail.an);
  }
  onGrupaChange(event:any) {
    let param = event.value;
    this.mail.grupa = param;
    
    console.log("Grupa:",this.mail.grupa);
  }
  submitForm(){
    this.adminService.sendMail(this.mail).subscribe(data => 
      {
          this.toastr.successToastr('Mesajul a fost trimis cu succes', 'Felicitari!');
      },
      err =>
      {
        this.toastr.errorToastr("S-a produs o eroare! Ne cerem scuze","Oops!");
      }
    );
  }


  columnsToDisplay1=['Check','An', 'semestru', 'nume', 'nrCredite', 'locuri'];
  dataSource1 = DISCIPLINE_DATA;

 
}
