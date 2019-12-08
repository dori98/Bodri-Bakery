import { Injectable } from '@angular/core';
import { Issue } from "./issue";
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { AuthService, httpOptions } from './auth.service';
import { Receipt } from './receipt';

@Injectable({
  providedIn: 'root'
})
export class IssueService {
  
  private userUrl: string = 'http://localhost:8080/users';
  private receiptUrl: string = 'http://localhost:8080/rec';
  private newReceiptUrl: string = 'http://localhost:8080/new';

  constructor(
    private http: HttpClient,
    private authService: AuthService 
  ) { }

  getIssues(): Promise<Issue[]> {
    return this.http.get<Issue[]>(`${this.userUrl}`, httpOptions).toPromise();
  }

  getIssue(id: number): Promise<Issue> {
    return this.http.get<Issue>(`${this.receiptUrl}/${id}`, httpOptions).toPromise();
  }

  createIssue(issue: Receipt): Promise<Receipt> {
    return this.http.post<Receipt>(`${this.newReceiptUrl}`, issue, httpOptions).toPromise();
  }

  /*updateIssue(issue: Issue): Promise<Issue> {
    return this.http.put<Issue>(`${this.issueUrl}/${issue.id}`, issue, httpOptions).toPromise();
  }*/

  deleteIssue(id): Promise<Issue> {
    return this.http.delete<Issue>(`${this.receiptUrl}/${id}`, httpOptions).toPromise();
  }
}