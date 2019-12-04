import { Receipt } from './receipt';

export class Issue {
    public receiptId: number = 0;
    public nickname: String ;
    public user_id: number;
    public  segedrecept: Receipt[];
    public status: String;
}
