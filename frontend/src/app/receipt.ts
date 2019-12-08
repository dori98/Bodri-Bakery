import { Ingredient } from './ingredient';

export class Receipt {
    public id : Number;
    public user_id: Number;
    public difficulty: String;
    public name :String;
    public salty: Boolean;
    public visibility:Boolean;
    public description: String;
    public ingredient  : Ingredient[];  
}