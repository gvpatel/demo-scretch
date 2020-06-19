import { LightningElement,track } from 'lwc';

export default class trackproperty extends LightningElement {
    @track greetings;
     handlechange(event) {
     this.greetings=event.target.value;
    }
}