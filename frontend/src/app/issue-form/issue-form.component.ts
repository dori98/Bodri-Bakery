import { Component, OnChanges, Input, Output, EventEmitter  } from '@angular/core'; 
import { Issue } from '../Issue';
import { NgForm } from '@angular/forms';
import { Receipt } from '../receipt';

@Component({
  selector: 'issue-form',
  templateUrl: './issue-form.component.html',
  styleUrls: ['./issue-form.component.css']
})
export class IssueFormComponent implements OnChanges {

  @Input() issue: Receipt
  public model: Receipt
  @Output() onSubmit = new EventEmitter<Receipt>();

  constructor() { }

  ngOnChanges(): void {
    this.model = Object.assign({}, this.issue);
  }
  
  submit(form: NgForm): void {
    if (!form.valid) {
      return;
    }
    this.onSubmit.emit(this.model);
  }

}
