# Angular-Lifecycle-Hooks-Demo

This project is a small Angular application created to explore and demonstrate how **Angular Lifecycle Hooks** work within components and directives.
The goal of this repository is to better understand the lifecycle of Angular components and how different hooks can be used to manage initialization, change detection, and cleanup logic.

It serves as a learning and reference project for developers who want to understand **when and why lifecycle hooks are triggered** during the life of an Angular component.

---

## Overview

Angular components go through a series of stages from creation to destruction. Lifecycle hooks allow developers to **tap into these stages** and execute logic at specific moments during the component's lifecycle.

This project demonstrates how lifecycle hooks behave during:

* Component initialization
* Input property changes
* Change detection cycles
* Component destruction

Logging and simple UI interactions are used to illustrate when each lifecycle hook is executed.

---

## Lifecycle Hooks Demonstrated

### OnChanges

`ngOnChanges` is triggered whenever an input-bound property changes.

This hook allows the component to:

* Detect changes in `@Input()` values
* React to external data updates
* Execute logic when inputs are modified by parent components

---

### OnInit

`ngOnInit` is called once after the component is initialized.

Typical use cases include:

* Fetching initial data
* Setting up component state
* Initializing services or configuration

---

### DoCheck

`ngDoCheck` allows developers to implement custom change detection logic.

In this project it demonstrates:

* How Angular performs change detection
* When this hook is triggered during the detection cycle
* How it differs from default Angular change tracking

---

### AfterContentInit

`ngAfterContentInit` runs once after Angular projects external content into the component.

This hook is useful when working with:

* Content projection (`ng-content`)
* Child content provided by parent components

---

### AfterContentChecked

`ngAfterContentChecked` runs after every check of projected content.

It demonstrates how Angular repeatedly verifies projected content during change detection cycles.

---

### AfterViewInit

`ngAfterViewInit` is called once after the component's view and its child views are fully initialized.

Common use cases include:

* Accessing `ViewChild` or `ViewChildren`
* Initializing UI elements
* Interacting with DOM elements safely

---

### AfterViewChecked

`ngAfterViewChecked` runs after every check of the component’s view and its children.

This project demonstrates how often Angular checks component views during change detection.

---

### OnDestroy

`ngOnDestroy` is called right before a component is destroyed.

Typical use cases include:

* Cleaning up subscriptions
* Removing event listeners
* Preventing memory leaks

---

## Demonstration Approach

The application uses console logs and simple UI interactions to show:

* The order in which lifecycle hooks execute
* How hooks respond to state and input changes
* How Angular manages component updates internally

This makes it easier to visualize Angular's component lifecycle.

---

## Project Structure

```
src/
 ├── app/
 │   ├── lifecycle-demo/
 │   │   ├── lifecycle-demo.component.ts
 │   │   ├── lifecycle-demo.component.html
 │   │   └── lifecycle-demo.component.css
 │   │
 │   ├── shared/
 │   │
 │   └── app.module.ts
 │
 └── assets/
```

---

## Technologies Used

* Angular
* TypeScript
* Angular Components
* Angular Lifecycle Hooks

---

## Learning Goals

This project was built to understand:

* The **complete lifecycle of an Angular component**
* The **execution order of lifecycle hooks**
* How Angular manages **change detection and rendering**
* Best practices for placing initialization and cleanup logic

---

## Purpose

This repository acts as a **learning sandbox for Angular Lifecycle Hooks** and serves as a practical reference for developers who want to understand how Angular components behave throughout their lifecycle.

It provides a clear example of when and why lifecycle hooks should be used when building Angular applications.
