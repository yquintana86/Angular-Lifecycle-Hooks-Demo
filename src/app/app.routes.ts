import { Routes } from '@angular/router';
import { HomePageComponent } from './pages/home-page/home-page.component';
import { ContactPageComponent } from './pages/contact-page/contact-page.component';

export const routes: Routes = [
  {
    path: '',
    title: 'Home',
    component: HomePageComponent
  },
  {
    path: 'about',
    title: 'About',
    loadComponent: () => import('./pages/about-page/about-page.component')
  },
  {
    path: 'contact',
    title: 'Contact',
    component: ContactPageComponent
  },
  {
    path: '**',
    redirectTo:''
  }


];
