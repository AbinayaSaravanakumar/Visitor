import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { CommonModule } from '@angular/common';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-visitor',
  standalone: true,
  imports: [CommonModule, FormsModule],
  templateUrl: './visitor.html',
  styleUrls: ['./visitor.css']
})
export class VisitorComponent {
  constructor(private http: HttpClient) {}

  visitor = {
    name: '',
    phone: '',
    purpose: '',
    meet: '',
    location: '',
    company: ''
  };

  visitors: any[] = [];

  errors = {
    name: '',
    phone: '',
    purpose: '',
    meet: '',
    location: '',
    company: ''
  };

  validateName() {
    const textPattern = /^[A-Za-z ]+$/;
    if (!this.visitor.name.trim()) {
      this.errors.name = 'Name is required';
    } else if (!textPattern.test(this.visitor.name)) {
      this.errors.name = 'It should be a name, not numbers';
    } else {
      this.errors.name = '';
    }
  }

  validatePhone() {
    const phonePattern = /^[0-9]{10}$/;
    if (!this.visitor.phone.trim()) {
      this.errors.phone = 'Phone number is required';
    } else if (!phonePattern.test(this.visitor.phone)) {
      this.errors.phone = 'Phone number must be 10 digits';
    } else {
      this.errors.phone = '';
    }
  }

  validatePurpose() {
    if (!this.visitor.purpose.trim()) {
      this.errors.purpose = 'Purpose is required';
    } else {
      this.errors.purpose = '';
    }
  }

  validateMeet() {
    const textPattern = /^[A-Za-z ]+$/;
    if (!this.visitor.meet.trim()) {
      this.errors.meet = 'Meet person is required';
    } else if (!textPattern.test(this.visitor.meet)) {
      this.errors.meet = 'Only letters allowed';
    } else {
      this.errors.meet = '';
    }
  }

  validateLocation() {
    if (!this.visitor.location.trim()) {
      this.errors.location = 'Location is required';
    } else {
      this.errors.location = '';
    }
  }

  validateCompany() {
    if (!this.visitor.company.trim()) {
      this.errors.company = 'Company name is required';
    } else {
      this.errors.company = '';
    }
  }

  addVisitor() {
    this.validateName();
    this.validatePhone();
    this.validatePurpose();
    this.validateMeet();
    this.validateLocation();
    this.validateCompany();

    if (
      this.errors.name || this.errors.phone ||
      this.errors.purpose || this.errors.meet ||
      this.errors.location || this.errors.company
    ) {
      return;
    }

    const payload = {
      name: this.visitor.name,
      phone: this.visitor.phone,
      purpose: this.visitor.purpose,
      meet: this.visitor.meet,
      location: this.visitor.location,
      company: this.visitor.company
    };

    this.http.post('http://visitor-ci3.local/index.php/visitor', payload)
      .subscribe((res: any) => {
        const currentTime = new Date().toLocaleString();
        this.visitors.push({
          ...payload,
          id: res.id,
          inTime: currentTime,
          outTime: ''
        });
        this.visitor = {
          name: '', phone: '', purpose: '',
          meet: '', location: '', company: ''
        };
      });
  }

  markOut(index: number) {
    const v = this.visitors[index];
    this.http.post(`http://visitor-ci3.local/index.php/visitor/update/${v.id}`, {})
      .subscribe((res: any) => {
        this.visitors.splice(index, 1);  
      });
  }

  deleteVisitor(index: number) {
    this.visitors.splice(index, 1);
  }
}