import { Injectable } from '@angular/core';
import { HttpClient, HttpErrorResponse } from '@angular/common/http';
import { Observable, throwError } from 'rxjs';
import { catchError } from 'rxjs/operators';

@Injectable({
  providedIn: 'root',
})
export class ServicosService {
  private apiUrl = 'https://jsonplaceholder.typicode.com';

  constructor(private http: HttpClient) {}

  getServicos(): Observable<any[]> {
    return this.http.get<any[]>(`${this.apiUrl}/todos`)
      .pipe(
        catchError((error: HttpErrorResponse) => {
          console.error('Erro ao obter serviços:', error);
          return throwError('Erro ao obter serviços. Verifique o console para mais detalhes.');
        })
      );
  }
}
