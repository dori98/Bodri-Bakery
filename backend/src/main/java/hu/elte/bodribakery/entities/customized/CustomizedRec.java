package hu.elte.bodribakery.entities.customized;

import hu.elte.bodribakery.entities.Receipt;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.List;

@Data
@AllArgsConstructor
public class CustomizedRec {
    private Integer user_id;
    private String nickname;
    List<Receipt> segedrecept;


}