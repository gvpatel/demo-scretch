import { LightningElement,wire,track} from 'lwc';
import calculate2Numbers from '@salesforce/apex/CalculatorController.calculate2Numbers';
export default class CalcuwithApex extends LightningElement {
    fNumber;
    sNumber;
    @track resultsum;
    handledChange(event){
        if(event.target.name==='fNumber'){
            console.log('handle Change'+event.target.value);
            this.fNumber = event.target.value;
        }
        else if(event.target.name==='sNumber'){
            console.log('handle Change'+event.target.value)
            this.sNumber = event.target.value;   
        }
    }
    handleClick(){
        console.log('hi::button invoked'+this.fNumber+'--'+this.sNumber);
        calculate2Numbers({ firstNumber: this.fNumber,secondNumber:this.sNumber })
        .then(result => {
            this.resultsum = result;
            console.log('hi::'+result);
           // this.error = undefined;
       })
        .catch(error => {
            this.resultsum = undefined;
            //this.error = error;
        });   
    }


   


   


   




}