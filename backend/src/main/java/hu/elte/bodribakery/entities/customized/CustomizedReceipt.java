package hu.elte.bodribakery.entities.customized;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class CustomizedReceipt {
    private Integer receiptId;
    private String receiptName;
    private String difficulty;
    private String description;
    private String ingredientName;
    //private List<String> ingredientlist;
}
