package hu.elte.bodribakery.response;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class UserResponse {
    private Integer userId;
    private String username;
    private String nickname;
}
